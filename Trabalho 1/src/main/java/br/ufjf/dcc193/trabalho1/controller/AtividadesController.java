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
package br.ufjf.dcc193.trabalho1.controller;

import br.ufjf.dcc193.trabalho1.model.Atividade;
import br.ufjf.dcc193.trabalho1.service.AtividadeService;
import br.ufjf.dcc193.trabalho1.service.SedeService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Controlador das páginas da atividade
 *
 * @author Ana Carolina Fidelis Gonçalves
 */
@Controller
public class AtividadesController {

    @Autowired
    private AtividadeService service;
    
    @Autowired
    private SedeService sedeService;

    @GetMapping("/atividades")
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("atividades/index");
        mv.addObject("atividades", service.findAll());
        return mv;
    }

    @GetMapping("/atividades/create")
    public ModelAndView create(Atividade atividade) {
        ModelAndView mv = new ModelAndView("atividades/create");
        mv.addObject("atividade", atividade);
        mv.addObject("sedes", sedeService.findAll());
        return mv;
    }

    @PostMapping("/atividades/store")
    public String store(@Valid Atividade atividade, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/atividades/create";
        }
        service.save(atividade);
        return "redirect:/atividades";
    }

    @GetMapping("/atividades/edit/{id}")
    public ModelAndView edit(@PathVariable("id") Long id) {
        ModelAndView mv = new ModelAndView("atividades/edit");
        mv.addObject("atividade", service.findOne(id));
        mv.addObject("sedes", sedeService.findAll());
        return mv;
    }

    @PostMapping("/atividades/update/{id}")
    public String upadate(@Valid Atividade atividade, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/atividades/edit/" + atividade.getId();
        }
        service.save(atividade);
        return "redirect:/atividades";
    }

    @GetMapping("/atividades/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        service.delete(id);
        return "redirect:/atividades";
    }

}
