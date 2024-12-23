package br.com.grupo27.tech.challenge.produto.exception;

import java.util.ArrayList;
import java.util.List;

public class VaidateError extends StandardError {

    private List<ValidateMessage> mensagens = new ArrayList<>();

    public void addMensagens(String campo, String msg) {
        this.mensagens.add(new ValidateMessage(campo, msg));
    }
}
