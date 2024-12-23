package com.techchallenge4.ms_cliente.domain.service.cliente.impl;

import com.techchallenge4.ms_cliente.domain.model.cliente.Cliente;
import com.techchallenge4.ms_cliente.controller.dto.request.ClienteRequest;
import com.techchallenge4.ms_cliente.controller.dto.response.ClienteResponse;
import com.techchallenge4.ms_cliente.infra.repository.ClienteRepository;
import com.techchallenge4.ms_cliente.domain.service.cliente.ClienteService;
import com.techchallenge4.ms_cliente.domain.adapter.ClienteAdapter;
import jakarta.persistence.EntityNotFoundException;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class ClienteServiceImpl implements ClienteService {

    private final ClienteRepository repository;
    private final ClienteAdapter adapter;
    private final PasswordEncoder passwordEncoder;

    @Override
    @Transactional
    public ClienteResponse criar(ClienteRequest request) {
        log.info("Iniciando criação de um novo cliente: {}", request.getNome());
        var cliente = adapter.clienteRequestToCliente(request);
        cliente.setSenha(encriptaSenha(request.getSenha()));
        repository.save(cliente);
        log.info("Cliente criado com sucesso: {}", cliente.getId());

        return adapter.clienteToClienteResponse(cliente);
    }

    @Override
    @Transactional
    public ClienteResponse atualizar(Long id, ClienteRequest request) {
        log.info("Iniciando atualização do cliente com ID: {}", id);
        var cliente = buscarNaBase(id);
        cliente = adapter.clienteRequestToCliente(request);
        cliente.setId(id);
        cliente.setSenha(encriptaSenha(request.getSenha()));
        repository.save(cliente);
        log.info("Cliente atualizado com sucesso: {}", cliente.getId());

        return adapter.clienteToClienteResponse(cliente);
    }

    @Override
    public ClienteResponse buscar(Long id) {
        log.info("Buscando cliente com ID: {}", id);
        var cliente = buscarNaBase(id);

        return adapter.clienteToClienteResponse(cliente);
    }

    @Override
    public Page<ClienteResponse> listarTodos(Pageable pageable) {
        log.info("Listando todos os clientes ativos");
        var page = repository.findAllByAtivoTrue(pageable);

        return page.map(adapter::clienteToClienteResponse);
    }

    @Override
    @Transactional
    public void deletar(Long id) {
        log.info("Iniciando desativação do cliente com ID: {}", id);
        var cliente = buscarNaBase(id);
        cliente.setAtivo(false);
        repository.save(cliente);
        log.info("Cliente desativado com sucesso: {}", cliente.getId());
    }

    private Cliente buscarNaBase(Long id) {
        log.info("Buscando cliente com ID: {}", id);
        return repository.findByIdAndAtivoTrue(id)
                .orElseThrow(() -> {
                    log.error("Cliente com ID {} não encontrado ou está inativado", id);
                    return new EntityNotFoundException("Cliente não encontrado");
                });
    }

    private String encriptaSenha(String senha) {
        return passwordEncoder.encode(senha);
    }
}
