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

import br.ufjf.dcc193.trabalho1.model.Sede;
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
 * Controlador das páginas da sede
 *
 * @author Ana Carolina Fidelis Gonçalves
 */
@Controller
public class SedesController {

    @Autowired
    private SedeService service;

    @GetMapping("/sedes")
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("sedes/index");
        mv.addObject("sedes", service.findAll());
        return mv;
    }

    @GetMapping("/sedes/create")
    public ModelAndView create(Sede sede) {
        ModelAndView mv = new ModelAndView("sedes/create");
        mv.addObject("sede", sede);
        return mv;
    }

    @PostMapping("/sedes/store")
    public String store(@Valid Sede sede, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/sedes/create";
        }
        service.save(sede);
        return "redirect:/sedes";
    }

    @GetMapping("/sedes/edit/{id}")
    public ModelAndView edit(@PathVariable("id") Long id) {
        ModelAndView mv = new ModelAndView("sedes/edit");
        mv.addObject("sede", service.findOne(id));
        return mv;
    }

    @PostMapping("/sedes/update/{id}")
    public String update(@Valid Sede sede, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/sedes/edit/" + sede.getId();
        }
        service.save(sede);
        return "redirect:/sedes";
    }

    @GetMapping("/sedes/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        service.delete(id);
        return "redirect:/sedes";
    }

    @GetMapping("/sedes/report")
    public ModelAndView report() {
        ModelAndView mv = new ModelAndView("sedes/report");
        mv.addObject("sedes", service.findAll());
        return mv;
    }

}
