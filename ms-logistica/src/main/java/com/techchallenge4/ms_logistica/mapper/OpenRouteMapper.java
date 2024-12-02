package com.techchallenge4.ms_logistica.mapper;

import com.techchallenge4.ms_logistica.client.request.DirectionsRequest;
import com.techchallenge4.ms_logistica.client.request.OptimizeRequest;
import com.techchallenge4.ms_logistica.client.response.PedidoResponse;
import com.techchallenge4.ms_logistica.configuration.MappingConfig;
import com.techchallenge4.ms_logistica.domain.Entregador;
import com.techchallenge4.ms_logistica.domain.Origem;
import com.techchallenge4.ms_logistica.domain.Parada;
import com.techchallenge4.ms_logistica.domain.Rastreamento;
import com.techchallenge4.ms_logistica.domain.Rota;
import org.mapstruct.Context;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

@Mapper(config = MappingConfig.class)
public interface OpenRouteMapper {

    @Mapping(target = "vehicles", expression = "java(mapVehicle(entregador, origem))")
    @Mapping(target = "jobs", source = "pedidoResponseList", qualifiedByName = "mapJobs")
    OptimizeRequest toOptimizeRequest(List<PedidoResponse> pedidoResponseList, Entregador entregador, @Context Origem origem);

    default List<OptimizeRequest.Vehicle> mapVehicle(Entregador entregador, @Context Origem origem) {
        return List.of(OptimizeRequest.Vehicle.builder()
                .id(entregador.getId())
                .start(List.of(origem.getLongitude(), origem.getLatitude()))
                .end(List.of(origem.getLongitude(), origem.getLatitude()))
                .capacity(List.of(entregador.getCapacidade()))
                .profile("driving-car")
                .build());
    }

    @Named("mapJobs")
    default List<OptimizeRequest.Job> mapJobs(List<PedidoResponse> pedidoResponses) {
        return pedidoResponses.stream()
                .map(pedido -> OptimizeRequest.Job.builder()
                        .id(pedido.id())
                        .location(List.of(pedido.endereco().longitude(), pedido.endereco().latitude()))
                        .service(300)
                        .amount(List.of(pedido.quantidade()))
                        .build())
                .toList();
    }

    @Mapping(target = "coordinates", expression = "java(mapCoordinates(rastreamento, rota))")
    DirectionsRequest toDirectionsRequestFromRastreamentoAndRota(Rastreamento rastreamento, Rota rota);

    default List<List<Double>> mapCoordinates(Rastreamento rastreamento, Rota rota) {
        return Optional.ofNullable(rastreamento)
                .map(rt -> mapCoordinatesFromRastreamento(rastreamento, rota))
                .orElse(mapCoordinatesFromOrigem(rota));
    }

    private static List<List<Double>> mapCoordinatesFromRastreamento(Rastreamento rastreamento, Rota rota) {
        return Stream.concat(
                Stream.of(List.of(rastreamento.getUltimaLongitude(), rastreamento.getUltimaLatitude())),
                getCoordinatesFromRota(rota)
        ).toList();
    }

    private static List<List<Double>> mapCoordinatesFromOrigem(Rota rota) {
        return Stream.concat(
                Stream.of(List.of(rota.getOrigem().getLongitude(), rota.getOrigem().getLatitude())),
                getCoordinatesFromRota(rota)
        ).toList();
    }

    private static Stream<List<Double>> getCoordinatesFromRota(Rota rota) {
        return rota.getParadas().stream()
                .filter(Parada::isNotEntregaFinalizada)
                .map(parada -> List.of(parada.getLongitude(), parada.getLatitude()));
    }

    @Mapping(target = "coordinates", expression = "java(mapCoordinates(rastreamento, parada))")
    DirectionsRequest toDirectionsRequestFromRastreamentoAndParada(Rastreamento rastreamento, Parada parada);

    default List<List<Double>> mapCoordinates(Rastreamento rastreamento, Parada parada) {
        return List.of(
                List.of(rastreamento.getUltimaLongitude(), rastreamento.getUltimaLatitude()),
                List.of(parada.getLongitude(), parada.getLatitude())
        );
    }

}
