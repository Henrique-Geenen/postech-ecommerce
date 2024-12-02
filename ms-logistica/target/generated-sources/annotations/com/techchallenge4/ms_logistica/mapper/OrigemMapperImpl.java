package com.techchallenge4.ms_logistica.mapper;

import com.techchallenge4.ms_logistica.api.v1.request.OrigemRequest;
import com.techchallenge4.ms_logistica.api.v1.response.OrigemResponse;
import com.techchallenge4.ms_logistica.domain.Origem;
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
public class OrigemMapperImpl implements OrigemMapper {

    @Override
    public Origem toEntity(OrigemRequest request) {
        if ( request == null ) {
            return null;
        }

        Origem.OrigemBuilder origem = Origem.builder();

        origem.estado( cepToEstado( request.cep() ) );
        origem.regiao( cepToRegiao( request.cep() ) );
        origem.nome( request.nome() );
        origem.endereco( request.endereco() );
        origem.latitude( request.latitude() );
        origem.longitude( request.longitude() );
        origem.cep( request.cep() );

        return origem.build();
    }

    @Override
    public OrigemResponse toResponse(Origem origem) {
        if ( origem == null ) {
            return null;
        }

        OrigemResponse.OrigemResponseBuilder origemResponse = OrigemResponse.builder();

        origemResponse.id( origem.getId() );
        origemResponse.nome( origem.getNome() );
        origemResponse.endereco( origem.getEndereco() );
        origemResponse.latitude( origem.getLatitude() );
        origemResponse.longitude( origem.getLongitude() );
        origemResponse.cep( origem.getCep() );
        origemResponse.estado( origem.getEstado() );
        origemResponse.regiao( origem.getRegiao() );

        return origemResponse.build();
    }

    @Override
    public void updateEntityFromRequest(OrigemRequest request, Origem origem) {
        if ( request == null ) {
            return;
        }

        origem.setNome( request.nome() );
        origem.setEndereco( request.endereco() );
        origem.setLatitude( request.latitude() );
        origem.setLongitude( request.longitude() );
        origem.setCep( request.cep() );
    }

    @Override
    public List<OrigemResponse> toResponseList(List<Origem> origens) {
        if ( origens == null ) {
            return null;
        }

        List<OrigemResponse> list = new ArrayList<OrigemResponse>( origens.size() );
        for ( Origem origem : origens ) {
            list.add( toResponse( origem ) );
        }

        return list;
    }
}
