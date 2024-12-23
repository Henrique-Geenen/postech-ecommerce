package com.techchallenge4.ms_cliente.mock;

import com.techchallenge4.ms_cliente.controller.dto.request.ClienteRequest;
import com.techchallenge4.ms_cliente.controller.dto.request.EnderecoRequest;
import com.techchallenge4.ms_cliente.controller.dto.response.ClienteResponse;
import com.techchallenge4.ms_cliente.controller.dto.response.EnderecoResponse;
import com.techchallenge4.ms_cliente.domain.model.cliente.Cliente;
import com.techchallenge4.ms_cliente.domain.model.cliente.Endereco;
import com.techchallenge4.ms_cliente.domain.model.enums.UfEnum;

import static com.techchallenge4.ms_cliente.domain.model.enums.UfEnum.DF;

public interface ClienteDados {

    Long ID = 1L;
    String NOME = "João da Silva Sauro";
    String EMAIL = "joao.silva@email.com";
    String TELEFONE = "+55 (61) 99999-9999";
    String LOGRADOURO = "Rua das Flores";
    String BAIRRO = "Elefante Branco";
    String CIDADE = "Brasília";
    UfEnum UF = DF;
    String CEP = "70000-000";
    String SENHA = "Senha123";
    String LATITUDE = "-23.5505199";
    String LONGITUDE = "-46.6333094";

    static Cliente getCliente() {
        var cliente = new Cliente();
        cliente.setId(ID);
        cliente.setNome(NOME);
        cliente.setEmail(EMAIL);
        cliente.setTelefone(TELEFONE);
        cliente.setSenha(SENHA);
        cliente.setEndereco(getEndereco());

        return cliente;
    }

    static ClienteRequest getClienteRequest() {
        var clienteRequest = new ClienteRequest();
        clienteRequest.setNome(NOME);
        clienteRequest.setEmail(EMAIL);
        clienteRequest.setTelefone(TELEFONE);
        clienteRequest.setSenha(SENHA);
        clienteRequest.setEndereco(getEnderecoRequest());

        return clienteRequest;
    }

    static ClienteResponse getClienteResponse() {
        var clienteResponse = new ClienteResponse();
        clienteResponse.setId(ID);
        clienteResponse.setNome(NOME);
        clienteResponse.setEmail(EMAIL);
        clienteResponse.setTelefone(TELEFONE);
        clienteResponse.setSenha(SENHA);
        clienteResponse.setEndereco(getEnderecoResponse());

        return clienteResponse;
    }

    private static Endereco getEndereco() {
        return new Endereco(LOGRADOURO, null, null, BAIRRO, CIDADE, UF, CEP, LATITUDE, LONGITUDE);
    }

    private static EnderecoResponse getEnderecoResponse() {
        return new EnderecoResponse(LOGRADOURO, null, null, BAIRRO, CIDADE, UF, CEP, LATITUDE, LONGITUDE);
    }

    static EnderecoRequest getEnderecoRequest() {
        return new EnderecoRequest(LOGRADOURO, null, null, BAIRRO, CIDADE, UF, CEP, LATITUDE, LONGITUDE);
    }
}
