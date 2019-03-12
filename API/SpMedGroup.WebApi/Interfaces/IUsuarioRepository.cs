﻿using SpMedGroup.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SpMedGroup.WebApi.Interfaces
{
    interface IUsuarioRepository
    {
        /// <summary>
        /// Cadastrar um novo usuário
        /// </summary>
        /// <param name="usuario"></param>
        void Cadastrar(Usuarios usuario);
    }
}
