package br.ufjf.dcc193.trabalho1.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping({ "", "index.html" })
    public String home(){
        return "home/index";
    }
}