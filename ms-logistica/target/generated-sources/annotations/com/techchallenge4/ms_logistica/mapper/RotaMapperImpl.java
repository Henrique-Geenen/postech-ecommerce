package com.techchallenge4.ms_logistica.mapper;

import com.techchallenge4.ms_logistica.api.v1.response.EntregadorResponse;
import com.techchallenge4.ms_logistica.api.v1.response.OrigemResponse;
import com.techchallenge4.ms_logistica.api.v1.response.ParadaResponse;
import com.techchallenge4.ms_logistica.api.v1.response.RotaResponse;
import com.techchallenge4.ms_logistica.client.response.OptimizeResponse;
import com.techchallenge4.ms_logistica.domain.Entregador;
import com.techchallenge4.ms_logistica.domain.Origem;
import com.techchallenge4.ms_logistica.domain.Parada;
import com.techchallenge4.ms_logistica.domain.Rota;
import com.techchallenge4.ms_logistica.enums.EstadoEnum;
import com.techchallenge4.ms_logistica.enums.RotaStatusEnum;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-12-02T12:42:38-0300",
    comments = "version: 1.6.2, compiler: javac, environment: Java 22.0.2 (Amazon.com Inc.)"
)
@Component
public class RotaMapperImpl implements RotaMapper {

    private final ParadaMapper paradaMapper;
    private final OrigemMapper origemMapper;

    @Autowired
    public RotaMapperImpl(ParadaMapper paradaMapper, OrigemMapper origemMapper) {

        this.paradaMapper = paradaMapper;
        this.origemMapper = origemMapper;
    }

    @Override
    public RotaResponse toRotaResponse(Rota rota) {
        if ( rota == null ) {
            return null;
        }

        Long id = null;
        RotaStatusEnum status = null;
        OrigemResponse origem = null;
        EntregadorResponse entregador = null;
        List<ParadaResponse> paradas = null;

        id = rota.getId();
        status = rota.getStatus();
        origem = origemMapper.toResponse( rota.getOrigem() );
        entregador = entregadorToEntregadorResponse( rota.getEntregador() );
        paradas = paradaListToParadaResponseList( rota.getParadas() );

        RotaResponse rotaResponse = new RotaResponse( id, status, origem, entregador, paradas );

        return rotaResponse;
    }

    @Override
    public Rota toRota(OptimizeResponse.Route route, Entregador entregador, Origem origem) {
        if ( route == null && entregador == null && origem == null ) {
            return null;
        }

        Rota rota = new Rota();

        if ( route != null ) {
            rota.setParadas( mapParadas( route.getSteps() ) );
        }
        rota.setEntregador( entregador );
        rota.setOrigem( origem );
        rota.setStatus( RotaStatusEnum.PENDENTE );

        return rota;
    }

    protected EntregadorResponse entregadorToEntregadorResponse(Entregador entregador) {
        if ( entregador == null ) {
            return null;
        }

        Long id = null;
        String nome = null;
        String cpf = null;
        String contato = null;
        Integer capacidade = null;
        String cep = null;
        EstadoEnum estado = null;
        Boolean disponivel = null;

        id = entregador.getId();
        nome = entregador.getNome();
        cpf = entregador.getCpf();
        contato = entregador.getContato();
        capacidade = entregador.getCapacidade();
        cep = entregador.getCep();
        estado = entregador.getEstado();
        disponivel = entregador.getDisponivel();

        EntregadorResponse entregadorResponse = new EntregadorResponse( id, nome, cpf, contato, capacidade, cep, estado, disponivel );

        return entregadorResponse;
    }

    protected List<ParadaResponse> paradaListToParadaResponseList(List<Parada> list) {
        if ( list == null ) {
            return null;
        }

        List<ParadaResponse> list1 = new ArrayList<ParadaResponse>( list.size() );
        for ( Parada parada : list ) {
            list1.add( paradaMapper.toResponse( parada ) );
        }

        return list1;
    }
}
