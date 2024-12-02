package com.techchallenge4.ms_logistica.mapper;

import com.techchallenge4.ms_logistica.client.request.DirectionsRequest;
import com.techchallenge4.ms_logistica.client.request.OptimizeRequest;
import com.techchallenge4.ms_logistica.client.response.PedidoResponse;
import com.techchallenge4.ms_logistica.domain.Entregador;
import com.techchallenge4.ms_logistica.domain.Origem;
import com.techchallenge4.ms_logistica.domain.Parada;
import com.techchallenge4.ms_logistica.domain.Rastreamento;
import com.techchallenge4.ms_logistica.domain.Rota;
import java.util.List;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-12-02T12:42:38-0300",
    comments = "version: 1.6.2, compiler: javac, environment: Java 22.0.2 (Amazon.com Inc.)"
)
@Component
public class OpenRouteMapperImpl implements OpenRouteMapper {

    @Override
    public OptimizeRequest toOptimizeRequest(List<PedidoResponse> pedidoResponseList, Entregador entregador, Origem origem) {
        if ( pedidoResponseList == null && entregador == null ) {
            return null;
        }

        OptimizeRequest.OptimizeRequestBuilder optimizeRequest = OptimizeRequest.builder();

        optimizeRequest.jobs( mapJobs( pedidoResponseList ) );
        optimizeRequest.vehicles( mapVehicle(entregador, origem) );

        return optimizeRequest.build();
    }

    @Override
    public DirectionsRequest toDirectionsRequestFromRota(Rota rota) {
        if ( rota == null ) {
            return null;
        }

        DirectionsRequest.DirectionsRequestBuilder directionsRequest = DirectionsRequest.builder();

        directionsRequest.coordinates( mapCoordinates( rota ) );

        return directionsRequest.build();
    }

    @Override
    public DirectionsRequest toDirectionsRequestFromRastreamentoAndParada(Rastreamento rastreamento, Parada parada) {
        if ( rastreamento == null && parada == null ) {
            return null;
        }

        DirectionsRequest.DirectionsRequestBuilder directionsRequest = DirectionsRequest.builder();

        directionsRequest.coordinates( mapCoordinates(rastreamento, parada) );

        return directionsRequest.build();
    }
}
