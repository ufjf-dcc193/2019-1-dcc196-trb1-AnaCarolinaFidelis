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

import br.ufjf.dcc193.trabalho1.model.Membro;
import br.ufjf.dcc193.trabalho1.service.MembroService;
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
 * Controlador das páginas de membros
 *
 * @author Ana Carolina Fidelis Gonçalves
 */
@Controller
public class MembrosController {

    @Autowired
    private MembroService service;
    
    @Autowired
    private SedeService sedeService;

    @GetMapping("/membros")
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("membros/index");
        mv.addObject("membros", service.findAll());
        return mv;
    }

    @GetMapping("/membros/create")
    public ModelAndView create(Membro membro) {
        ModelAndView mv = new ModelAndView("membros/create");
        mv.addObject("membro", membro);
        mv.addObject("sedes", sedeService.findAll());
        return mv;
    }

    @PostMapping("/membros/store")
    public String store(@Valid Membro membro, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/membros/create";
        }
        service.save(membro);
        return "redirect:/membros";
    }

    @GetMapping("/membros/edit/{id}")
    public ModelAndView edit(@PathVariable("id") Long id) {
        ModelAndView mv = new ModelAndView("membros/edit");
        mv.addObject("membro", service.findOne(id));
        mv.addObject("sedes", sedeService.findAll());
        return mv;
    }

    @PostMapping("/membros/update/{id}")
    public String update(@Valid Membro membro, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/membros/edit/" + membro.getId();
        }
        service.save(membro);
        return "redirect:/membros";
    }

    @GetMapping("/membros/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        service.delete(id);
        return "redirect:/membros";
    }

}
