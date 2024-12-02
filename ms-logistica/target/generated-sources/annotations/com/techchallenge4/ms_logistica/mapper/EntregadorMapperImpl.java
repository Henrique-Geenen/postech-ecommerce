package com.techchallenge4.ms_logistica.mapper;

import com.techchallenge4.ms_logistica.api.v1.request.EntregadorRequest;
import com.techchallenge4.ms_logistica.api.v1.response.EntregadorResponse;
import com.techchallenge4.ms_logistica.domain.Entregador;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-12-02T12:42:37-0300",
    comments = "version: 1.6.2, compiler: javac, environment: Java 22.0.2 (Amazon.com Inc.)"
)
@Component
public class EntregadorMapperImpl implements EntregadorMapper {

    @Override
    public Entregador toEntity(EntregadorRequest request) {
        if ( request == null ) {
            return null;
        }

        Entregador.EntregadorBuilder entregador = Entregador.builder();

        entregador.estado( cepToEstado( request.cep() ) );
        entregador.nome( request.nome() );
        entregador.cpf( request.cpf() );
        entregador.contato( request.contato() );
        entregador.capacidade( request.capacidade() );
        entregador.cep( request.cep() );

        entregador.disponivel( true );

        return entregador.build();
    }

    @Override
    public EntregadorResponse toResponse(Entregador entregador) {
        if ( entregador == null ) {
            return null;
        }

        EntregadorResponse.EntregadorResponseBuilder entregadorResponse = EntregadorResponse.builder();

        entregadorResponse.id( entregador.getId() );
        entregadorResponse.nome( entregador.getNome() );
        entregadorResponse.cpf( entregador.getCpf() );
        entregadorResponse.contato( entregador.getContato() );
        entregadorResponse.capacidade( entregador.getCapacidade() );
        entregadorResponse.cep( entregador.getCep() );
        entregadorResponse.estado( entregador.getEstado() );
        entregadorResponse.disponivel( entregador.getDisponivel() );

        return entregadorResponse.build();
    }

    @Override
    public void updateEntityFromRequest(EntregadorRequest request, Entregador entregador) {
        if ( request == null ) {
            return;
        }

        entregador.setNome( request.nome() );
        entregador.setCpf( request.cpf() );
        entregador.setContato( request.contato() );
        entregador.setCapacidade( request.capacidade() );
        entregador.setCep( request.cep() );
    }

    @Override
    public List<EntregadorResponse> toResponseList(List<Entregador> entregadores) {
        if ( entregadores == null ) {
            return null;
        }

        List<EntregadorResponse> list = new ArrayList<EntregadorResponse>( entregadores.size() );
        for ( Entregador entregador : entregadores ) {
            list.add( toResponse( entregador ) );
        }

        return list;
    }
}
