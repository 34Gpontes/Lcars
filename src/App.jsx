import React from 'react';
import { BrowserRouter, Route, Routes, Switch } from 'react-router-dom';
import Home from './pages/home/Home';
import Login from './pages/login/Login'
import Profile from './pages/profile/Profile'
import Register from './pages/register/Register'
import Shop from './pages/shop/Shop'
import BarraMenu from './pages/menu/BarraMenu';
import Product from './pages/product/Product';

function App() {
    return (
        <BrowserRouter>
            <BarraMenu />
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/login" element={<Login />} />
                <Route path="/profile" element={<Profile />} />
                <Route path="/register" element={<Register />} />
                <Route path="/shop" element={<Shop />} />
                <Route path="/product" element={<Product />} />
            </Routes>
        </BrowserRouter>
    );
}

export default App;
