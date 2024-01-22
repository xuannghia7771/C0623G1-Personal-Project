import React, {useEffect, useState, createContext} from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import {BrowserRouter, Routes, Route} from 'react-router-dom';

import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

import Header from './components/header/header';
import Footer from './components/footer/footer';
import Home from './pages/Home/index';
import About from './pages/About/index';
import axios from 'axios';
import Loader from './assets/images/loading.gif';

import Listing from "./pages/Listing";
import SignIn from "./pages/SignIn";
import {EnumAppUserRole} from "../../biker-care/src/components/user/EnumAppUserRoles";
import Authentication from "../../biker-care/src/components/user/Authentication";
import AuthorOfCustomer from "./components/user/AuthorOfCustomer";
import DetailsPage from "./pages/Details";
import Cart from "./pages/Cart";
import NotFound from "./pages/NotFound";


function App() {
    return (
        <>

            <Header/>
            <Routes>
                <Route exact={true} path="/home" element={<Home/>}/>
                <Route exact={true} path="/listing" element={<Listing/>}/>
                <Route exact={true} path="/signin" element={<SignIn/>}/>
                <Route exact={true} path="/detail/:idProduct" element={<DetailsPage/>}/>
                <Route exact={true} path="/cart" element={<Cart/>}/>
                <Route exact={true} path="*" element={<NotFound/>}/>
            </Routes>
            <Footer/>
            <ToastContainer/>
        </>
    );
}

export default App;
