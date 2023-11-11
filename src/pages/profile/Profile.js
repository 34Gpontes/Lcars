import React from 'react';
import styled from 'styled-components';
import {Link} from 'react-router-dom';

import userIcon from '../../images/shop/user-icon.svg';
import searchIcon from '../../images/search-icon.svg';
import ferrariImg from '../../images/ferrari.webp';

const Body = styled.div`
  background: #D9D9D9;
`

const Container = styled.div`
  font-family: 'Inter', sans-serif;
  margin: 0 auto;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: row;
  box-sizing: border-box;
  padding: 42px;
  max-width: 1060px;
  min-width: 680px;
`;

const Left = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  width: 30%;
  height: 100%;
`;

const LeftContainer = styled.div`
  display: flex;
  justify-content: center;
  text-align: center;
  flex-direction: column;
  width: 100%;
  height: 100%;
  border: 2px solid #000000;
  background: white;
  border-radius: 8px;
`;

const User = styled.section`
  display: flex;
  align-items: center;
  text-align: center;
  background: #D9D9D9;
  height: 100px;
  margin: 24px;
  border-radius: 8px;
  border: 2px solid black;
`;

const UserImage = styled.img`
  margin-left: 24px;
`;

const UserText = styled.p`
  margin-left: 24px;
`;

const Options = styled.section`
  display: flex;
  text-align: center;
  flex-direction: column;
  height: 100%;
  border-top: 2px solid #000000;
`;

const Option = styled(Link)`
  display: flex;
  justify-content: center;
  text-align: center;
  align-items: center;
  height: 50px;
  background: rgba(0, 0, 0, 0.5);
  border-bottom: 2px solid black;
  transition: background 0.3s ease-in-out;
  cursor: pointer;
  color: white;
  font-weight: bold;
  font-size: 24px;
  text-decoration: none;

  &:hover {
    background: rgba(0, 0, 0, 0.7);
  }
`;

const Right = styled.div`
  display: flex;
  justify-content: center;
  text-align: center;
  flex-direction: column;
  align-items: center;
  width: 70%;
  height: 100%;
`;

const Header = styled.section`
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  text-align: center;
  width: 80%;
  height: 100px;
`;

const HeaderText = styled.p`
  font-size: 24px;
  font-weight: bold;
  color: white;
`;

const InputContainer = styled.div`
  width: 70%;
  display: flex;
  align-items: center;
`;

const SearchIcon = styled.img`
  margin-left: -40px;
  width: 30px;
  cursor: pointer;
`;

const SearchInput = styled.input`
  background: #1F1F1F;
  border-radius: 8px;
  margin-left: 24px;
  width: 70%;
  height: 20px;
  padding: 10px;
  color: white;

  &::placeholder {
    color: white;
  }
`;

const Items = styled.section`
  display: flex;
  flex-direction: row;
  justify-content: center;
  text-align: center;
  width: 80%;
  height: 100%;
  padding-top: 24px;
`;

const Item = styled.div`
  width: 100%;
  height: 300px;
`;

const ItemHeader = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  text-align: center;
  width: 100%;
  background: rgba(0, 0, 0, 0.6);
  border-radius: 8px 8px 0 0;
  padding: 24px;
  box-sizing: border-box;
`;

const ItemHeaderText = styled.p`
  font-size: 16px;
  color: white;
`;

const ItemHeaderLink = styled.a`
  font-size: 16px;
  color: #8BC4F9;
  text-decoration: none;
`;

const ItemBody = styled.div`
  box-sizing: border-box;
  display: flex;
  text-align: center;
  flex-direction: column;
  align-items: start;
  width: 100%;
  background: white;
  border-radius: 0 0 8px 8px;
  padding: 24px;
`;

const ItemBigText = styled.p`
  font-size: 24px;
  font-weight: bold;
  margin: 0;
`;

const ItemSmallText = styled.div`
  display: flex;
  flex-direction: row;
  align-items: center;
  text-align: center;
  margin-top: 42px;
  gap: 10px;
`;

const ItemSmallTextImage = styled.img`
  width: 100px;
`;

const ItemSmallTextText = styled.p`
  font-size: 16px;

`;

const ItemBodyButtons = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  margin-left: 80px;
`;

const Button1 = styled.button`
  background: #1A9E05;
  border-radius: 8px;
  padding: 12px;
  color: white;
  border: none;
  cursor: pointer;
  font-weight: bold;
  width: 180px;

  margin: 12px;
`;

const Button2 = styled.button`
  background: #05429E;
  border-radius: 8px;
  padding: 12px;
  color: white;
  border: none;
  cursor: pointer;
  font-weight: bold;
  width: 180px;
  margin: 12px;
`;

function Profile() {
    return (
        <Body>
            <Container>
                <Left>
                    <LeftContainer>
                        <User>
                            <UserImage src={userIcon} alt=""/>
                            <UserText>John Doe</UserText>
                        </User>
                        <Options>
                            <Option to="/profile">Perfil</Option>
                            <Option to="/profile">Pedidos</Option>
                            <Option to="/underconstruction">Transacoes</Option>
                            <Option to="/underconstruction">Itens Salvos</Option>
                            <Option to="/underconstruction">Sair</Option>
                        </Options>
                    </LeftContainer>
                </Left>
                <Right>
                    <Header>
                        <HeaderText>Seus Pedidos</HeaderText>
                        <InputContainer>
                            <label htmlFor="search"/>
                            <SearchInput type="text" id="search" placeholder="Pesquisar todos os pedidos"/>
                            <SearchIcon src={searchIcon} alt=""/>
                        </InputContainer>
                    </Header>
                    <Items>
                        <Item>
                            <ItemHeader>
                                <div className="item-header-left">
                                    <ItemHeaderText>Pedido Realizado</ItemHeaderText>
                                    <ItemHeaderText>01 de Abril de 2023</ItemHeaderText>
                                </div>
                                <div className="item-header-center">
                                    <ItemHeaderText>TOTAL</ItemHeaderText>
                                    <ItemHeaderText>R$ 2.458.000,00</ItemHeaderText>
                                </div>
                                <div className="item-header-right">
                                    <ItemHeaderLink href="/underconstruction">Exibir detalhes do pedido</ItemHeaderLink>
                                </div>
                            </ItemHeader>
                            <ItemBody>
                                <ItemBigText>Entregue 21 de junho de 2023</ItemBigText>
                                <ItemSmallText>
                                    <ItemSmallTextImage src={ferrariImg} alt=""/>
                                    <ItemSmallTextText>Ferrari 458</ItemSmallTextText>
                                    <ItemBodyButtons>
                                        <Button1 className="button-1">Comprar novamente</Button1>
                                        <Button2 className="button-2">Avaliar o produto</Button2>
                                    </ItemBodyButtons>
                                </ItemSmallText>

                            </ItemBody>
                        </Item>
                    </Items>
                </Right>
            </Container>
        </Body>
    );
}

export default Profile;
