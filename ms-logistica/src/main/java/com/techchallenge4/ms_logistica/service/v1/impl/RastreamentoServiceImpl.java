package com.techchallenge4.ms_logistica.service.v1.impl;

import com.techchallenge4.ms_logistica.api.v1.request.RastreamentoRequest;
import com.techchallenge4.ms_logistica.api.v1.response.RastreamentoResponse;
import com.techchallenge4.ms_logistica.client.response.DirectionsResponse;
import com.techchallenge4.ms_logistica.domain.Parada;
import com.techchallenge4.ms_logistica.domain.Rastreamento;
import com.techchallenge4.ms_logistica.domain.Rota;
import com.techchallenge4.ms_logistica.enums.RotaStatusEnum;
import com.techchallenge4.ms_logistica.exception.ResourceNotFoundException;
import com.techchallenge4.ms_logistica.mapper.RastreamentoMapper;
import com.techchallenge4.ms_logistica.repository.RastreamentoRepository;
import com.techchallenge4.ms_logistica.service.v1.OpenRouteService;
import com.techchallenge4.ms_logistica.service.v1.RastreamentoService;
import com.techchallenge4.ms_logistica.service.v1.RotaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RastreamentoServiceImpl implements RastreamentoService {

    private final RastreamentoRepository repository;
    private final RastreamentoMapper mapper;
    private final OpenRouteService openRouteService;
    private final RotaService rotaService;

    @Override
    public RastreamentoResponse createOrUpdateRastreamento(RastreamentoRequest request) {
        return mapper.toResponse(repository.save(getOrCreateRastreamento(request)));
    }

    @Override
    public DirectionsResponse findDirectionsByEntregadorId(Long entregadorId) {
        var rota = rotaService.findEntityByEntregadorIdAndStatus(entregadorId, RotaStatusEnum.EM_ANDAMENTO);
        return openRouteService.getDirectionsByRastreamentoAndRota(
                repository.findByRota(rota).orElse(null),
                rota
        );
    }

    @Override
    public DirectionsResponse findDirectionsByPedidoId(Long pedidoId) {
        var rota = rotaService.findEntityByPedidoId(pedidoId);
        return openRouteService.getDirectionsByRastreamentoAndParada(
                repository.findByRota(rota).orElseThrow(() -> new ResourceNotFoundException("Rastreamento não encontrado pela rota")),
                getParadaByPedidoId(pedidoId, rota)
        );
    }

    private static Parada getParadaByPedidoId(Long pedidoId, Rota rota) {
        return rota.getParadaByPedidoId(pedidoId)
                .orElseThrow(() -> new ResourceNotFoundException("Parada não encontrada pelo pedidoId"));
    }

    private Rastreamento getOrCreateRastreamento(RastreamentoRequest request) {
        var rota = rotaService.findEntityById(request.rotaId());
        return repository.findByRota(rota)
                .map(entity -> updateUltimaPosicao(entity, request))
                .orElse(createRastreamento(request, rota));
    }

    private Rastreamento updateUltimaPosicao(Rastreamento entity, RastreamentoRequest request) {
        mapper.updateUltimaPosicao(entity, request);
        return entity;
    }

    private Rastreamento createRastreamento(RastreamentoRequest request, Rota rota) {
        return mapper.toEntity(request, rota);
    }

}
