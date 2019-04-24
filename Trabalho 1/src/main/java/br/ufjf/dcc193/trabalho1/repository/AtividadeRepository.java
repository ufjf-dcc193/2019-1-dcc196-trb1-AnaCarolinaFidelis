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
package br.ufjf.dcc193.trabalho1.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import br.ufjf.dcc193.trabalho1.model.Atividade;

/**
 * Acesso as atividades
 *
 * @author Ana Carolina Fidelis Gonçalves
 */
public interface AtividadeRepository extends JpaRepository<Atividade, Long> {
}
