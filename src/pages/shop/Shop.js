import React from 'react';
import styled from 'styled-components';

const MainContainer = styled.div`
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
`;

const Container = styled.div`
  width: 100%;
  height: 100%;
  max-width: 1366px;
  display: flex;
  justify-content: center;
  flex-direction: row;
`;

const Left = styled.div`
  width: 50%;
  display: flex;
  flex-direction: column;
  align-items: center;
`;

const Items = styled.section`
  width: 100%;
`;

const Item = styled.div`
  display: flex;
  flex-direction: row;
  border-radius: 24px;
  max-width: 816px;
  height: 192px;
  background: #7E7E7E;
  margin: 25px;
`;

const Content = styled.section`
  display: flex;
  justify-content: center;
  align-items: center;
  width: 25%;
  height: 100%;
`;

const Square = styled.div`
  width: 90%;
  max-width: 212px;
  height: 128px;
  background: rgba(0, 0, 0, 0.6);
  margin-left: 24px;
`;

const Description = styled.div`
  p {
    color: white;
  }
`;

const Amount = styled.div`
  color: white;

  p {
    margin: 0;
  }
`;

const CountContainer = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 5px;
`;

const CountContainerLeft = styled.div`
  cursor: pointer;
`;

const CountContainerRight = styled.div`
  cursor: pointer;
`;

const Services = styled.div`
  margin-top: 56px;
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #7E7E7E;
  width: 100%;
  height: 256px;
`;

const Title = styled.div`
  color: white;
  font-size: 24px;
  font-weight: 700;
  margin: 24px;
`;

const SubItems = styled.div`
  display: flex;
  flex-direction: row;
  width: 100%;
  height: 100%;
  justify-content: space-between;
  color: white;
`;

const Warranty = styled.div`
  width: 50%;
  height: 100%;
  display: flex;
  justify-content: center;
`;

const Portage = styled.div`
  width: 50%;
  height: 100%;
  display: flex;
  justify-content: center;
`;

const Right = styled.div`
  width: 50%;
  display: flex;
  flex-direction: column;
  align-items: center;
  margin: 25px;
`;

const Summary = styled.div`
  max-width: 392px;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #7E7E7E;
  border-radius: 24px;
  gap: 12px;
`;

const SummaryTitle = styled.div`
  color: white;
  font-size: 24px;
  font-weight: 700;
  margin-top: 24px;
`;

const Row1 = styled.div`
  display: flex;
  justify-content: space-between;
  gap: 48px;
  color: white;
`;

const Row2 = styled.div`
  display: flex;
  justify-content: space-between;
  gap: 48px;
  color: white;
`;

const Button = styled.button`
  width: 80%;
  height: 48px;
  background: #FECA0E;
  border: none;
  border-radius: 12px;
  color: white;
  font-size: 24px;
  margin: 24px;
  cursor: pointer;
`;

function Shop() {
  return (
    <MainContainer>
      <Container>
        <Left>
          <Items>
            <Item>
              <Content>
                <Square />
              </Content>
              <Content>
                <Description>
                  <p>Nome do Carro</p>
                  <p>Ano</p>
                  <p>Cor</p>
                  <p>Chassis</p>
                </Description>
              </Content>
              <Content>
                <Amount>
                  <p>Quantidade</p>
                  <CountContainer>
                    <CountContainerLeft>
                      <img src="./material-symbols_arrow-left.svg" alt="" />
                    </CountContainerLeft>
                    <div class="count-container-center">
                      <p>1</p>
                    </div>
                    <CountContainerRight>
                      <img src="./material-symbols_arrow-right.svg" alt="" />
                    </CountContainerRight>
                  </CountContainer>
                </Amount>
              </Content>
              <Content>
                <Value>
                  <p>Valor a vista</p>
                  <p>R$ 30.000,00</p>
                </Value>
              </Content>
            </Item>
            <Item>
              <Content>
                <Square />
              </Content>
              <Content>
                <Description>
                  <p>Nome do Carro</p>
                  <p>Ano</p>
                  <p>Cor</p>
                  <p>Chassis</p>
                </Description>
              </Content>
              <Content>
                <Amount>
                  <p>Quantidade</p>
                  <CountContainer>
                    <CountContainerLeft>
                      <img src="./material-symbols_arrow-left.svg" alt="" />
                    </CountContainerLeft>
                    <div class="count-container-center">
                      <p>1</p>
                    </div>
                    <CountContainerRight>
                      <img src="./material-symbols_arrow-right.svg" alt="" />
                    </CountContainerRight>
                  </CountContainer>
                </Amount>
              </Content>
              <Content>
                <Value>
                  <p>Valor a vista</p>
                  <p>R$ 30.000,00</p>
                </Value>
              </Content>
            </Item>
          </Items>
        </Left>
        <Right>
          <Summary>
            <SummaryTitle>Resumo do Pedido</SummaryTitle>
            <Row1>
              <p>Valor dos Produtos</p>
              <p>R$ 60.000,00</p>
            </Row1>
            <Row2>
              <p>Total a prazo</p>
              <p>R$ 120.000,00</p>
            </Row2>
            <Button>IR PARA PAGAMENTO</Button>
          </Summary>
        </Right>
      </Container>
    </MainContainer>
  );
}

export default Shop;
