import React, {useState, useEffect, useRef} from 'react';
import '../header/header.css';
import Logo from '../../assets/images/logo-bikercare.png';
import SearchIcon from '@mui/icons-material/Search';
import Select from '../selectDrop/select';
import axios from 'axios';
import LocationOnOutlinedIcon from '@mui/icons-material/LocationOnOutlined';
import IconCompare from '../../assets/images/icon-compare.svg';
import IconHeart from '../../assets/images/icon-heart.svg';
import IconCart from '../../assets/images/icon-cart.svg';
import IconUser from '../../assets/images/icon-user.svg';

import Button from '@mui/material/Button';
import Person2OutlinedIcon from '@mui/icons-material/Person2Outlined';
import FavoriteBorderOutlinedIcon from '@mui/icons-material/FavoriteBorderOutlined';
import SettingsOutlinedIcon from '@mui/icons-material/SettingsOutlined';
import LogoutOutlinedIcon from '@mui/icons-material/LogoutOutlined';

import {ClickAwayListener} from '@mui/base/ClickAwayListener';

import Nav from './nav/nav';
import {Link} from 'react-router-dom';
import {useContext} from 'react';

import {useNavigate} from 'react-router-dom';
import MenuIcon from '@mui/icons-material/Menu';
import FmdGoodOutlinedIcon from '@mui/icons-material/FmdGoodOutlined';

import ArrowBackIosIcon from '@mui/icons-material/ArrowBackIos';
import PersonOutlineOutlinedIcon from '@mui/icons-material/PersonOutlineOutlined';
import {useDispatch, useSelector} from "react-redux";
import * as userService from "../../service/user/UserService"
import Swal from "sweetalert2";

const Header = (props) => {

    const [isOpenDropDown, setisOpenDropDown] = useState(false);
    const [isOpenAccDropDown, setisOpenAccDropDown] = useState(false);

    const headerRef = useRef();
    const searchInput = useRef()

    const history = useNavigate();

    const navigate = useNavigate();
    const [JwtToken, setJwtToken] = useState(localStorage.getItem("JWT"));
    const [username, setUsername] = useState();
    const [nameProduct, setNameProduct] = useState("");
    const [userId, setUserId] = useState("");
    const [nameType, setNameType] = useState([]);
    const carts = useSelector((state) => state.cartReducer);
    const dispatch = useDispatch();

    const getUserName = async () => {
        const result = await userService.infoAppUserByJwtToken();
        setUsername(result);
    }

    useEffect(() => {
        getUserName();
    }, [username])


    useEffect(() => {

    }, []);


    const handleLogout = () => {
        localStorage.removeItem("JWT");
        setJwtToken(undefined);
        setUsername(undefined);
        navigate("/home");
        Swal.fire({
            title: "Đăng xuất thành công!",
            icon: "success",
            timer: 2000,
        });
        navigate("/home");
        window.location.reload();
    }


    return (
        <>
            <div className='headerWrapper' ref={headerRef}>
                <header>
                    <div className='container-fluid'>
                        <div className='row'>
                            <div className='col-sm-2 part1 d-flex align-items-center'>
                                <Link to="/"><img src={Logo} className='logo' alt="Logo" style={{width: 300 + 'px'}}/></Link>
                            </div>

                            {/*headerSearch start here */}
                            <div className='col-sm-8 part2'>
                                <nav>
                                    <ul className="list list-inline">
                                        <li className="list-inline-item">
                                            <Button><Link to="/home">Trang Chủ</Link></Button>
                                        </li>
                                        <li className="list-inline-item">
                                            <Button><Link to="/listing">Sản Phẩm</Link></Button>
                                        </li>
                                        <li className="list-inline-item">
                                            <Button><Link>Về Chúng Tôi</Link></Button>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            {/*headerSearch start here */}


                            <div className='col-sm-2 d-flex align-items-center part3 res-hide'>
                                <div className='ml-auto d-flex align-items-center'>
                                    <div className='countryWrapper'>
                                        {/*<Select data={countryList} placeholder={'Your Location'}*/}
                                        {/*        icon={<LocationOnOutlinedIcon style={{opacity: '0.5'}}/>}/>*/}
                                    </div>
                                    <ClickAwayListener onClickAway={() => setisOpenDropDown(false)}>
                                        <ul className='list list-inline mb-0 headerTabs'>
                                            <li className='list-inline-item'>
                                                <span>
                                                    <Link to={'/cart'}> <img src={IconCart} alt="IconCart"/>
                                                        <span className='badge bg-success rounded-circle'>
                                                            3
                                                        </span>
                                                        Cart</Link>
                                                </span>
                                            </li>

                                            {
                                                username ?
                                                    <li className='list-inline-item'>

                                                        <span onClick={() => setisOpenDropDown(!isOpenDropDown)}>
                                                            <img src={IconUser} alt="IconUser"/>
                                                            {username.sub}
                                                        </span>

                                                        {
                                                            isOpenDropDown !== false &&
                                                            <ul className='dropdownMenu'>
                                                                <li><Button><LocationOnOutlinedIcon /> Lịch sử mua hàng</Button></li>
                                                                <li><Button><SettingsOutlinedIcon /> Cài đặt</Button></li>
                                                                <li><Button onClick={handleLogout}><LogoutOutlinedIcon /> Đăng xuất</Button></li>
                                                            </ul>
                                                        }
                                                    </li>

                                                    :


                                                    <li className='list-inline-item'>
                                                        <Link to={'/signIn'}>
                                                            <Button className="btn btn-g">Sign In</Button>
                                                        </Link>
                                                    </li>
                                            }

                                        </ul>
                                    </ClickAwayListener>
                                </div>

                            </div>

                        </div>
                    </div>
                </header>

            </div>
        </>
    )
}

export default Header;