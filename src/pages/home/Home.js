import React from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';

import ferrari from '../../images/ferrari.webp';

const Grid3x3 = styled.div`
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 10px;
  margin: 0 auto;
  padding: 20px;
  margin-bottom: 30px;
`;

const CarroWrapper = styled.div`
  width: 350px;
  height: 250px;
  margin: 10px;
  padding: 20px;
`;

const CarroImage = styled.img`
  width: 100%;
  height: 100%;
  border-top-right-radius: 8px;
  border-top-left-radius: 8px;
`;

const CarroName = styled.div`
  margin-top: -3px;
  text-align: center;
  background-color: black;
  font-weight: bold;
  padding: 15px;
  border-bottom-right-radius: 8px;
  border-bottom-left-radius: 8px;
`;

const CarroNameText = styled.p`
  text-decoration: none;
  color: #FECA0E;
`;

function Carro(props) {
  return (
    <CarroWrapper>
      <Link to="/product">
        <CarroImage src={props.imagemSrc} alt={props.nome} />
        <CarroName>
          <CarroNameText>{props.nome}</CarroNameText>
        </CarroName>
      </Link>
    </CarroWrapper>
  );
}

function Home() {
  const carros = [
    { nome: "Ferrari 458", imagemSrc: ferrari },
    { nome: "Ferrari 458", imagemSrc: ferrari },
    { nome: "Ferrari 458", imagemSrc: ferrari },
    { nome: "Ferrari 458", imagemSrc: ferrari },
    { nome: "Ferrari 458", imagemSrc: ferrari },
    { nome: "Ferrari 458", imagemSrc: ferrari },
    { nome: "Ferrari 458", imagemSrc: ferrari },
    { nome: "Ferrari 458", imagemSrc: ferrari },
  ];

  return (
    <Grid3x3>
      {carros.map((carro, index) => (
        <Carro key={index} nome={carro.nome} imagemSrc={carro.imagemSrc} />
      ))}
    </Grid3x3>
  );
}

export default Home;
