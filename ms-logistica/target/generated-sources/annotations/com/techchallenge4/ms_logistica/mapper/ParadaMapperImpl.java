package com.techchallenge4.ms_logistica.mapper;

import com.techchallenge4.ms_logistica.api.v1.request.ParadaStatusRequest;
import com.techchallenge4.ms_logistica.api.v1.response.ParadaResponse;
import com.techchallenge4.ms_logistica.domain.Parada;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-11-28T00:43:39-0300",
    comments = "version: 1.6.2, compiler: javac, environment: Java 21.0.4 (Amazon.com Inc.)"
)
@Component
public class ParadaMapperImpl implements ParadaMapper {

    @Override
    public ParadaResponse toResponse(Parada parada) {
        if ( parada == null ) {
            return null;
        }

        ParadaResponse.ParadaResponseBuilder paradaResponse = ParadaResponse.builder();

        paradaResponse.id( parada.getId() );
        paradaResponse.pedidoId( parada.getPedidoId() );
        paradaResponse.sequencia( parada.getSequencia() );
        paradaResponse.latitude( parada.getLatitude() );
        paradaResponse.longitude( parada.getLongitude() );
        paradaResponse.contato( parada.getContato() );
        paradaResponse.status( parada.getStatus() );
        paradaResponse.observacao( parada.getObservacao() );

        return paradaResponse.build();
    }

    @Override
    public void updateStatus(Parada parada, ParadaStatusRequest request) {
        if ( request == null ) {
            return;
        }

        parada.setStatus( request.status() );
    }
}
