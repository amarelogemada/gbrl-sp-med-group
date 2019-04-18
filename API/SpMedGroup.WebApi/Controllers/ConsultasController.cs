﻿using Microsoft.AspNetCore.Mvc;
using SpMedGroup.WebApi.Domains;
using SpMedGroup.WebApi.Interfaces;
using SpMedGroup.WebApi.Repositories;

namespace SpMedGroup.WebApi.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class ConsultasController : ControllerBase
    {
  
        private IConsultaRepository ConsultaRepository { get; set; }

        public ConsultasController()
        {
            ConsultaRepository = new ConsultaRepository();
        }


        [HttpPost]
        public IActionResult AgendarConsulta(Consultas consulta)
        {
            try
            {
                ConsultaRepository.AgendarConsulta(consulta);
                return Ok(new
                {
                    mensagem = "Consulta agendada com sucesso"
                });
            }
            catch (System.Exception ex)
            {

                return BadRequest();
            }
        }

        [HttpGet]
        public IActionResult ListarConsulta()
        {
            try
            {
                return Ok(ConsultaRepository.ListarConsulta());
            }
            catch (System.Exception ex)
            {

                return BadRequest();
            }
        }

        [HttpPut("{id}")]
        public IActionResult AtualizarStatusConsulta(int id, Consultas consulta)
        {
            try
            {
                ConsultaRepository.AtualizarStatusConsulta(id, consulta);
                return Ok(new
                {
                    mensagem = "Status da consulta atualizado com sucesso"
                });
            }
            catch (System.Exception)
            {

                return BadRequest();
            }
        }

    }
}