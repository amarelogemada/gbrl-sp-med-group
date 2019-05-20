import React, { Component } from 'react';
// import logo from './logo.svg';
import './App.css';
import '../../assets/reset.css';
import '../../assets/base.css';
import '../../assets/position.css';

import ButtonB from '../../components/Button/_ButtonB/ButtonB';
import ButtonA from '../../components/Button/_ButtonA/ButtonA';
import Header from '../../components/Header/Header';
import StatusBar from '../../components/StatusBar/StatusBar';
import CadastrarPaciente from '../../components/Form/__CadastrarPaciente/CadastrarPaciente';



class App extends Component {
  render() {
    return (
      <div className="App">
        <div>
            <Header/>
            <StatusBar />
            <ButtonB />
            <ButtonA />
            <CadastrarPaciente />

        </div>
      </div>
    );
  }
}

export default App;