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
package br.ufjf.dcc193.trabalho1.model;

import java.io.Serializable;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 * Representação da entidade Atividade
 *
 * @author Ana Carolina Fidelis Gonçalves
 */
@Entity(name = "atividades")
public class Atividade implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;
    @OneToOne
    private Sede sede;
    private String titulo;
    private String descricao;
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dataInicio;
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dataFim;
    private float horaAssistencial;
    private float horaJuridica;
    private float horaFinanceira;
    private float horaExecutiva;

    public Atividade() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Sede getSede() {
        return sede;
    }

    public void setSede(Sede sede) {
        this.sede = sede;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Date getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.dataInicio = dataInicio;
    }

    public Date getDataFim() {
        return dataFim;
    }

    public void setDataFim(Date dataFim) {
        this.dataFim = dataFim;
    }

    public float getHoraAssistencial() {
        return horaAssistencial;
    }

    public void setHoraAssistencial(float horaAssistencial) {
        this.horaAssistencial = horaAssistencial;
    }

    public float getHoraJuridica() {
        return horaJuridica;
    }

    public void setHoraJuridica(float horaJuridica) {
        this.horaJuridica = horaJuridica;
    }

    public float getHoraFinanceira() {
        return horaFinanceira;
    }

    public void setHoraFinanceira(float horaFinanceira) {
        this.horaFinanceira = horaFinanceira;
    }

    public float getHoraExecutiva() {
        return horaExecutiva;
    }

    public void setHoraExecutiva(float horaExecutiva) {
        this.horaExecutiva = horaExecutiva;
    }
}
