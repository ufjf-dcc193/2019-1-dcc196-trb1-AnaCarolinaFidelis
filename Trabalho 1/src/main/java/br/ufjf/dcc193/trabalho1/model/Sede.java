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
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;

/**
 * Representação da entidade Sede
 *
 * @author Ana Carolina Fidelis Gonçalves
 */
@Entity(name = "sedes")
public class Sede implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;
    private String nome;
    private String estado;
    private String cidade;
    private String bairro;
    private String telefone;
    private String site;

    @OneToMany(mappedBy = "sede", cascade = CascadeType.ALL)
    private List<Membro> membros;

    @OneToMany(mappedBy = "sede", cascade = CascadeType.ALL)
    private List<Atividade> atividades;

    public Sede() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }
    
    public int totalMembros(){
        return membros.size();
    }
    
    public int totalHoraAssistencial(){
         int total = 0;
        for (int i = 0; i < atividades.size(); i++) {
            total += atividades.get(i).getHoraAssistencial();
        }
        return total;
    }
    
    public int totalHoraJuridica(){
         int total = 0;
        for (int i = 0; i < atividades.size(); i++) {
            total += atividades.get(i).getHoraJuridica();
        }
        return total;
    }
    
    public int totalHoraFinanceira(){
         int total = 0;
        for (int i = 0; i < atividades.size(); i++) {
            total += atividades.get(i).getHoraFinanceira();
        }
        return total;
    }
    
     public int totalHoraExecutiva(){
         int total = 0;
        for (int i = 0; i < atividades.size(); i++) {
            total += atividades.get(i).getHoraExecutiva();
        }
        return total;
    }

}
