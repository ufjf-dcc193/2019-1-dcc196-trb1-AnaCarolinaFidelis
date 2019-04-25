# Trabalho 1 - Gestão de ONGs
**Universidade Federal de Juiz de Fora - UFJF**          
**Instituto de Ciências Exatas**                             
**Departamento de Ciência da Computação**                 
**Disciplina:** DCC193 – Laboratório de Programação de Sistemas Web 2
**Período: 2019-1  
**Professor:** Igor Knop
**Alunas:** Ana Carolina Fidelis Gonçalves - acarolinafg@gmail.com 

## Descrição ##
Uma grande ONG possui uma série de sedes espalhadas por todo o território nacional. Entretanto está tendo dificuldades em acompanhar o crescimento e as atividades desenvolvidas por cada uma de suas sedes.
Crie um sistema de gestão e acompanhamento para essa ONG sabendo que:

- Cada Sede possui um nome fantasia, um estado da federação, uma cidade, um bairro, um telefone de contato e um endereço na web;
- Cada Sede possui um registro dos Membros, com nome completo, função, e-mail de contato, data de entrada e de saída da função;
- Cada Sede desenvolve Atividades com um título descritivo, uma descrição textual, uma data de início e fim. Adicionalmente, uma atividade possui um total de horas computadas cada uma das quatro categorias: assistencial, jurídica, financeira e executiva;
- Crie um conjunto de telas para criar, listar, editar e excluir Sedes;
- Crie um conjunto de telas para criar, listar, editar e Membros de uma Sede;
- Crie um conjunto de telas para criar, listar, editar e Atividades de uma Sede;
- Crie uma listagem que apresenta, por Sede, a soma das horas das atividades entre todas as categorias.
- Utilize o Spring Boot com os módulos Web, JPA e Derby para construir a aplicação. Adicione o motor JSP e JSTL via dependências para criar as views.
- O desenvolvimento deve ser feito sob controle de versão, em commits pequenos, bem definidos e planejados antes de serem realizados.


## Modelo de Dados ##
![alt text](https://github.com/ufjf-dcc193/2019-1-dcc196-trb1-AnaCarolinaFidelis/blob/master/modelo.png "Modelo de Dados do Projeto")

## Configurações da aplicação ##
| Recurso       | Versão        |
| ------------- |:-------------:|
| Spring Boot   | 2.1.4         |
| Tomcat        | 9.0.17        |  

- Porta: 8080
- Banco de dados: jdbc:derby:trab1.db