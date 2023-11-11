import React from 'react';
import {Link} from 'react-router-dom';
import styled from 'styled-components';

import logoSvg from '../../images/logo.svg';
import searchIconSvg from '../../images/search-icon.svg';
import userIconSvg from '../../images/user-icon.svg';
import shopIconSvg from '../../images/shop-icon.svg';

const Navbar = styled.nav`
  background-color: #7E7E7E;
  width: 100%;
  height: 100px;
  display: flex;
  align-items: center;
  gap: 30px;
  justify-content: space-between;

`;

const NavbarLeft = styled.div`
  .logo {
    margin-left: 50px;
    margin-right: 20px;
  }
`;

const Center = styled.div`
  width: 60%;
  display: flex;
  flex-direction: row;
`;

const Search = styled.input`
  padding: 30px;
  background-color: #1F1F1F;
  width: 100%;
  border-radius: 8px;
  margin-right: 30px;
  color: white;
  &::placeholder {
    color: white;
  }
`;

const SearchContainer = styled.div`
  display: flex;
  align-items: center;
  padding: 5px;
  cursor: pointer;

  .search-icon {
    margin-left: -90px;
    cursor: pointer;
  }
  
  
`;

const Right = styled.div`
  display: flex;
  flex-direction: row;
  margin-right: 24px;

  .icon {
    padding: 10px;
    cursor: pointer;
  }
`;

function BarraMenu() {
    return (
        <Navbar>
            <NavbarLeft>
                <div className="logo">
                    <Link to="/">
                        <img className="icon" src={logoSvg} alt="Logo"/>
                    </Link>
                </div>
            </NavbarLeft>
            <Center>
                <Search type="text" className="search" placeholder="Busque aqui"/>
                <SearchContainer>
                    <img src={searchIconSvg} className="search-icon" alt="Search"/>
                </SearchContainer>
            </Center>
            <Right>
                <Link to="/profile">
                    <img src={userIconSvg} className="icon" alt="Profile"/>
                </Link>
                <Link to="/shop">
                    <img src={shopIconSvg} className="icon" alt="Shop"/>
                </Link>
            </Right>
        </Navbar>
    );
}

export default BarraMenu;
