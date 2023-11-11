import React from 'react';
import styled from 'styled-components';
import ferrari from '../../images/ferrari.webp';

const Container = styled.div`
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  width: 100%;
  margin-bottom: 250px;
`;

const MiniContainer = styled.div`
  width: 70%;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  max-width: 1024px;
`;

const Left = styled.div`
  display: flex;
  align-items: center;
  flex-direction: column;
  height: 100vh;
  width: 60%;
  margin-top: 40px;
`;

const Header = styled.div`
  font-weight: bold;
  font-size: 24px;
  margin: 24px;
`;

const ImgContainer = styled.div`
  width: 100%;
  display: flex;
  justify-content: center;
`;

const Img = styled.img`
  width: 95%;
  max-width: 509px;
  max-height: 500px;
  border-radius: 8px;
`;

const TextContainer = styled.div`
  width: 95%;
  max-width: 509px;
  max-height: 500px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 32px;
`;

const BigText = styled.div`
  font-weight: bold;
  font-size: 24px;
  background: #1F1F1F;
  width: 100%;
  text-align: center;
  border-top-right-radius: 18px;
  border-top-left-radius: 18px;
  color: #FECA0E;
`;

const SmallText = styled.div`
  font-weight: normal;
  font-size: 16px;
  background: #484646;
  width: 100%;
  text-align: center;
  border-bottom-right-radius: 18px;
  border-bottom-left-radius: 18px;
  color: white;
  box-sizing: border-box;
  padding: 30px;
`;

const Right = styled.div`
  display: flex;
  align-items: center;
  flex-direction: column;
  height: 100vh;
  width: 40%;
`;

const RightHeader = styled.div`
  margin-top: 80px;
  margin-bottom: 30px;
  text-transform: uppercase;
  text-align: center;
  font-size: 24px;
  font-weight: bold;
`;

const RightTextContainer = styled.div`
  background: rgba(0, 0, 0, 0.70);
  color: white;
  width: 80%;
  height: 200px;
  display: flex;
  text-align: center;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 24px;
  font-weight: 800;
  box-sizing: border-box;
  padding: 30px;
`;

const CarName = styled.div`
  font-size: 16px;
`;

const CarValue = styled.div`
  font-size: 32px;
`;

const ButtonContainer = styled.div`
  button {
    margin-top: 30px;
    display: flex;
    width: 278px;
    height: 48px;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    flex-shrink: 0;
    border-radius: 13px;
    background: #FECA0E;
    cursor: pointer;
    color: white;
    font-weight: bold;
    font-size: 24px;
    border: none;
  }
`;

function Product() {
  return (
    <Container>
      <MiniContainer>
        <Left>
          <Header>Ferrari 458 Italia 4.5 V8 Gasolina</Header>
          <ImgContainer>
            <Img src={ferrari} alt="" />
          </ImgContainer>
          <TextContainer>
            <BigText>ESPECIFICAÇÕES  DO CARRO</BigText>
            <SmallText>
              A Ferrari 458 Italia é uma obra-prima de alta performance que combina elegância italiana e poder bruto. Equipada com um motor V8 de 4.5 litros movido a gasolina, esta máquina de precisão oferece uma experiência de condução inigualável. Seu design aerodinâmico, curvas sedutoras e acabamento de luxo fazem dela um ícone do mundo automobilístico. Com a 458 Italia, você não está apenas comprando um carro, está adquirindo um estilo de vida. Viva a paixão pelas pistas com este exemplar de excelência da engenharia italiana.
            </SmallText>
          </TextContainer>
        </Left>
        <Right>
          <RightHeader>valor/ detalhes do pagamento</RightHeader>
          <RightTextContainer>
            <CarName>Ferrari 458 Italia 4.5 V8 Gasolina</CarName>
            <CarValue>R$ 2.458.000</CarValue>
          </RightTextContainer>
          <ButtonContainer>
            <button>Comprar</button>
          </ButtonContainer>
        </Right>
      </MiniContainer>
    </Container>
  );
}

export default Product;
