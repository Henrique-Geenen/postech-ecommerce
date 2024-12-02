package com.techchallenge4.ms_logistica.service.v1;

import com.techchallenge4.ms_logistica.api.v1.request.RastreamentoRequest;
import com.techchallenge4.ms_logistica.api.v1.response.RastreamentoResponse;
import com.techchallenge4.ms_logistica.client.response.DirectionsResponse;

public interface RastreamentoService {

    RastreamentoResponse createOrUpdateRastreamento(RastreamentoRequest request);

    DirectionsResponse findDirectionsByEntregadorId(Long entregadorId);

    DirectionsResponse findDirectionsByPedidoId(Long pedidoId);

}
