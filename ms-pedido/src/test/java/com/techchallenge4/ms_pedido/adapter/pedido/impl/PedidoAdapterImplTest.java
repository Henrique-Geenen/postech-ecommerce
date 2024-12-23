package com.techchallenge4.ms_pedido.adapter.pedido.impl;

import com.techchallenge4.ms_pedido.model.dto.PedidoDTO;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.MockedStatic;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDateTime;

import static com.techchallenge4.ms_pedido.mockDados.ClienteResponseMock.getClienteResponse;
import static com.techchallenge4.ms_pedido.mockDados.PedidoRequestMock.getPedidoRequestQuantidade1;
import static com.techchallenge4.ms_pedido.mockDados.ProdutoResponseMock.getProdutoResponse;
import static com.techchallenge4.ms_pedido.model.enums.PedidoStatus.PENDENTE;
import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;

@ExtendWith(MockitoExtension.class)
class PedidoAdapterImplTest {

    @InjectMocks
    private PedidoAdapterImpl pedidoAdapterImpl;

    LocalDateTime date = LocalDateTime.parse("2021-10-01T10:10:10");

    @Test
    void testaBuildPedido() {

        var pedidoRequest = getPedidoRequestQuantidade1();
        var clienteResponse = getClienteResponse();
        var produtoResponse = getProdutoResponse();

        var pedidoDTO = new PedidoDTO(pedidoRequest, clienteResponse, produtoResponse);

        try (MockedStatic<LocalDateTime> localDateTimeMock = Mockito.mockStatic(LocalDateTime.class)) {
            localDateTimeMock.when(LocalDateTime::now).thenReturn(date);

            var resultado = pedidoAdapterImpl.buildPedido(pedidoDTO);
            assertAll("Pedido", () -> {
                assertEquals(1L, resultado.getClienteId());
                assertEquals(1L, resultado.getProdutoId());
                assertEquals(1, resultado.getQuantidade());
                assertEquals(date, resultado.getDataHoraCriacao());
                assertEquals(PENDENTE, resultado.getStatus());

            });
        }


    }

}