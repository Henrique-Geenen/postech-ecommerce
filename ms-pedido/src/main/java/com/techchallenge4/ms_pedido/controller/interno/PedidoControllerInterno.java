package com.techchallenge4.ms_pedido.controller.interno;

import com.techchallenge4.ms_pedido.controller.response.PedidoResponse;
import com.techchallenge4.ms_pedido.model.enums.PedidoStatus;
import com.techchallenge4.ms_pedido.model.enums.UfEnum;
import com.techchallenge4.ms_pedido.service.PedidoServiceInterno;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/interno/pedidos")
public class PedidoControllerInterno {

    private final PedidoServiceInterno pedidoServiceInterno;

    @GetMapping
    public ResponseEntity<List<PedidoResponse>> listarPedidosPorStatusEUf(
            @RequestParam PedidoStatus status,
            @RequestParam UfEnum uf) {

        var pedidoResponses = pedidoServiceInterno.listarPedidosPorStatusEUf(status,uf);

        return ResponseEntity.ok(pedidoResponses);

    }

    @GetMapping("/{id}")
    public ResponseEntity<PedidoResponse> buscarPorId(@PathVariable Long id) {

        var pedidoResponse = pedidoServiceInterno.buscarPorId(id);

        return ResponseEntity.ok(pedidoResponse);
    }

    @PatchMapping("/{id}/status/{status}")
    public ResponseEntity<PedidoResponse> atualizarStatus(@PathVariable Long id, @PathVariable PedidoStatus status) {

        var pedidoResponse = pedidoServiceInterno.atualizarStatus(id, status);

        return ResponseEntity.ok(pedidoResponse);
    }

}
