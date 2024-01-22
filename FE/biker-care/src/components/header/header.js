import React, {useState, useEffect, useRef} from 'react';
import '../header/header.css';
import Logo from '../../assets/images/logo-bikercare.png';
import LocationOnOutlinedIcon from '@mui/icons-material/LocationOnOutlined';
import IconCart from '../../assets/images/icon-cart.svg';
import IconUser from '../../assets/images/icon-user.svg';

import Button from '@mui/material/Button';
import {getCartFromAPI} from "../../provider/actions";

import SettingsOutlinedIcon from '@mui/icons-material/SettingsOutlined';
import LogoutOutlinedIcon from '@mui/icons-material/LogoutOutlined';

import {ClickAwayListener} from '@mui/base/ClickAwayListener';

import Nav from './nav/nav';
import {Link} from 'react-router-dom';


import {useNavigate} from 'react-router-dom';
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
    const [username, setUsername] = useState("");

    // dispatch đến một action
    const dispatch = useDispatch();
    const cartInit = useSelector((state) => state.reducers);
    const totalItem = useSelector((state) => state.reducers.totalItem);

    const getUserName = async () => {
        const result = await userService.infoAppUserByJwtToken();
        setUsername(result);
    }

    // console.log(username.sub);

    useEffect(() => {
        getUserName();
        dispatch(getCartFromAPI());
    }, [])

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
    }


    return (
        <>
            <div className='headerWrapper' ref={headerRef}>
                <header>
                    <div className='container-fluid'>
                        <div className='row'>
                            <div className='col-sm-2 part1 d-flex align-items-center'>
                                <Link to="/home"><img src={Logo} className='logo' alt="Logo"
                                                  style={{width: 300 + 'px'}}/></Link>
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

                                            {
                                                JwtToken && (
                                                    <li className='list-inline-item'>
                                                        <span>
                                                            <Link to={'/cart'}> <img src={IconCart} alt="IconCart"/>
                                                                <span
                                                                    className='badge bg-success rounded-circle'>{cartInit.totalItem}</span>
                                                                Cart
                                                            </Link>
                                                        </span>
                                                    </li>
                                                )
                                            }

                                            {
                                                JwtToken && (
                                                    <li className='list-inline-item'>
                                                        <span onClick={() => setisOpenDropDown(!isOpenDropDown)}>
                                                            <img src={IconUser} alt="IconUser"/>
                                                            {username}
                                                        </span>
                                                        {
                                                            isOpenDropDown !== false &&
                                                            <ul className='dropdownMenu'>
                                                                <li><Button><LocationOnOutlinedIcon/> Lịch sử mua
                                                                    hàng</Button></li>
                                                                <li><Button><SettingsOutlinedIcon/> Cài đặt</Button>
                                                                </li>
                                                                <li><Button
                                                                    onClick={handleLogout}><LogoutOutlinedIcon/> Đăng
                                                                    xuất</Button></li>
                                                            </ul>
                                                        }
                                                    </li>
                                                )
                                            }

                                            {
                                                !JwtToken && (
                                                    <li className='list-inline-item'>
                                                        <Link to={'/signIn'}>
                                                            <Button className="btn btn-g">Sign In</Button>
                                                        </Link>
                                                    </li>
                                                )
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