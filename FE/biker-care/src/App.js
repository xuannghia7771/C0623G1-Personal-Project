import React, {useEffect, useState, createContext} from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import {BrowserRouter, Routes, Route} from 'react-router-dom';

import Header from './components/header/header';
import Footer from './components/footer/footer';
import Home from './pages/Home/index';
import About from './pages/About/index';
import axios from 'axios';
import Loader from './assets/images/loading.gif';

import data from './data';
import Listing from "./pages/Listing";
import SignIn from "./pages/SignIn";
import {EnumAppUserRole} from "../../biker-care/src/components/user/EnumAppUserRoles";
import Authentication from "../../biker-care/src/components/user/Authentication";
import AuthorOfCustomer from "./components/user/AuthorOfCustomer";
import DetailsPage from "./pages/Details";


function App() {
    return (
        <BrowserRouter>

            <Header/>
            <Routes>
                <Route exact={true} path="/home" element={<Home/>}/>
                <Route exact={true} path="/listing" element={<Listing/>}/>
                <Route exact={true} path="/signin" element={<SignIn/>}/>
                <Route exact={true} path="/detail/:idProduct" element={<DetailsPage/>}/>
            </Routes>
            <Footer/>

        </BrowserRouter>
    );
}

export default App;
