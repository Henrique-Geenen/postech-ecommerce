package com.techchallenge4.ms_logistica.mapper;

import com.techchallenge4.ms_logistica.api.v1.request.RastreamentoRequest;
import com.techchallenge4.ms_logistica.api.v1.response.RastreamentoResponse;
import com.techchallenge4.ms_logistica.domain.Rastreamento;
import com.techchallenge4.ms_logistica.domain.Rota;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-12-02T12:42:38-0300",
    comments = "version: 1.6.2, compiler: javac, environment: Java 22.0.2 (Amazon.com Inc.)"
)
@Component
public class RastreamentoMapperImpl implements RastreamentoMapper {

    @Override
    public Rastreamento toEntity(RastreamentoRequest request, Rota rota) {
        if ( request == null && rota == null ) {
            return null;
        }

        Rastreamento.RastreamentoBuilder rastreamento = Rastreamento.builder();

        if ( request != null ) {
            rastreamento.ultimaLatitude( request.latitude() );
            rastreamento.ultimaLongitude( request.longitude() );
        }
        rastreamento.rota( rota );

        return rastreamento.build();
    }

    @Override
    public void updateUltimaPosicao(Rastreamento rastreamento, RastreamentoRequest request) {
        if ( request == null ) {
            return;
        }

        rastreamento.setUltimaLatitude( request.latitude() );
        rastreamento.setUltimaLongitude( request.longitude() );
    }

    @Override
    public RastreamentoResponse toResponse(Rastreamento rastreamento) {
        if ( rastreamento == null ) {
            return null;
        }

        RastreamentoResponse.RastreamentoResponseBuilder rastreamentoResponse = RastreamentoResponse.builder();

        rastreamentoResponse.rotaId( rastreamentoRotaId( rastreamento ) );
        rastreamentoResponse.id( rastreamento.getId() );
        rastreamentoResponse.ultimaLatitude( rastreamento.getUltimaLatitude() );
        rastreamentoResponse.ultimaLongitude( rastreamento.getUltimaLongitude() );

        return rastreamentoResponse.build();
    }

    private Long rastreamentoRotaId(Rastreamento rastreamento) {
        Rota rota = rastreamento.getRota();
        if ( rota == null ) {
            return null;
        }
        return rota.getId();
    }
}
