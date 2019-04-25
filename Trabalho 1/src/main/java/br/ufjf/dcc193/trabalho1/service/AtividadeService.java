/** **********************************************************
 * Universidade Federal de Juiz de Fora - UFJF              *
 * Instituto de Ciências Exatas                             *
 * Departamento de Ciência da Computação                    *
 * Disciplina: DCC193 – Laboratório de Sistemas Web 2       *
 * Período: 2019-1                                          *
 * Professor: Igor Knop                                     *
 * Aluna: Ana Carolina Fidelis Gonçalves                    *
 *                                                          *
 *                 TRABALHO 1 - Gestão de ONGs              *
 *********************************************************** */
package br.ufjf.dcc193.trabalho1.service;

import br.ufjf.dcc193.trabalho1.model.Atividade;
import br.ufjf.dcc193.trabalho1.repository.AtividadeRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Classe de serviço - CRUD de Atividades
 *
 * @author Ana Carolina Fidelis Gonçalves
 */
@Service
public class AtividadeService {

    @Autowired
    private AtividadeRepository repository;

    public List<Atividade> findAll() {
        return repository.findAll();
    }

    public Atividade findOne(Long id) {
        return repository.getOne(id);
    }

    public Atividade save(Atividade atividade) {
        return repository.saveAndFlush(atividade);
    }

    public void delete(Long id) {
        repository.deleteById(id);
    }
}
