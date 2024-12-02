package com.techchallenge4.ms_logistica.unit.domain;

import com.techchallenge4.ms_logistica.enums.PedidoStatusEnum;
import com.techchallenge4.ms_logistica.utils.ParadaUtils;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

class ParadaTest {

    @Nested
    class IsEntregaFinalizada {
        @Test
        void shouldReturnTrueWhenEntregue() {
            // Given
            var parada = ParadaUtils.buildParada();
            parada.setStatus(PedidoStatusEnum.ENTREGUE);

            // When
            var result = parada.isEntregaFinalizada();

            // Then
            assertTrue(result);
        }
        @Test
        void shouldReturnTrueWhenCancelado() {
            // Given
            var parada = ParadaUtils.buildParada();
            parada.setStatus(PedidoStatusEnum.CANCELADA);

            // When
            var result = parada.isEntregaFinalizada();

            // Then
            assertTrue(result);
        }
        @Test
        void shouldReturnFalseWhenOtherStatus() {
            // Given
            var parada = ParadaUtils.buildParada();
            parada.setStatus(PedidoStatusEnum.PENDENTE);

            // When
            var result = parada.isEntregaFinalizada();

            // Then
            assertFalse(result);
        }
        @Test
        void shouldReturnFalseWhenNullStatus() {
            // Given
            var parada = ParadaUtils.buildParada();
            parada.setStatus(null);

            // When
            var result = parada.isEntregaFinalizada();

            // Then
            assertFalse(result);
        }
    }

    @Nested
    class IsNotEntregaFinalizada {
        @Test
        void shouldReturnFalseWhenEntregue() {
            // Given
            var parada = ParadaUtils.buildParada();
            parada.setStatus(PedidoStatusEnum.ENTREGUE);

            // When
            var result = parada.isNotEntregaFinalizada();

            // Then
            assertFalse(result);
        }
        @Test
        void shouldReturnFalseWhenCancelado() {
            // Given
            var parada = ParadaUtils.buildParada();
            parada.setStatus(PedidoStatusEnum.CANCELADA);

            // When
            var result = parada.isNotEntregaFinalizada();

            // Then
            assertFalse(result);
        }
        @Test
        void shouldReturnTrueWhenOtherStatus() {
            // Given
            var parada = ParadaUtils.buildParada();
            parada.setStatus(PedidoStatusEnum.PENDENTE);

            // When
            var result = parada.isNotEntregaFinalizada();

            // Then
            assertTrue(result);
        }
        @Test
        void shouldReturnTrueWhenNullStatus() {
            // Given
            var parada = ParadaUtils.buildParada();
            parada.setStatus(null);

            // When
            var result = parada.isNotEntregaFinalizada();

            // Then
            assertTrue(result);
        }
    }

}
