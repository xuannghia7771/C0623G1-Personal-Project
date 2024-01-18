import React, {useEffect} from 'react';
import {Link} from 'react-router-dom';
import './style.css';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import VisibilityOutlinedIcon from '@mui/icons-material/VisibilityOutlined';
import VisibilityOffOutlinedIcon from '@mui/icons-material/VisibilityOffOutlined';
import {Button} from '@mui/material';
import {useState} from 'react';
import GoogleImg from '../../assets/images/google.png';
import {initializeApp} from "firebase/app";
import {getAuth, signInWithEmailAndPassword, GoogleAuthProvider, signInWithPopup} from "firebase/auth";

import Backdrop from '@mui/material/Backdrop';
import CircularProgress from '@mui/material/CircularProgress';

import {useNavigate} from 'react-router-dom';

import {useContext} from 'react';
import {Field, Form, Formik} from "formik";

import * as userService from "../../service/user/UserService"
import Swal from "sweetalert2";

const SignIn = () => {
    const [showPassword, setShowPassword] = useState(false);
    const [showLoader, setShowLoader] = useState(false);

    const navigate = useNavigate();
    const [isLoggingIn, setIsLoggingIn] = useState(false);

    const handleLogin = async (appUser) => {
        if (!isLoggingIn) {
            try {
                setIsLoggingIn(true);

                const result = await userService.loginUser(appUser);
                userService.addJwtTokenToLocalStorage(result.data.jwtToken)
                console.log(result);
                const tempURL = localStorage.getItem("tempURL");
                localStorage.removeItem("tempURL");
                if (tempURL) {
                    navigate(tempURL);
                } else {
                    Swal.fire({
                        title: "Đăng nhập thành công",
                        icon: "success",
                        timer: 2000
                    })
                    navigate(`/home`);
                }
            } catch (err) {
                Swal.fire({
                    icon: 'error',
                    title: err.response.data
                })
                console.log(err);
            } finally {
                setIsLoggingIn(false);
            }
        }
    };
    useEffect(() => {
        const JwtToken = userService.infoAppUserByJwtToken();
        if (JwtToken) {
            navigate(`/home`);
        }
    }, []);

    return (
        <>
            <section className='signIn mb-5'>
                <div className="breadcrumbWrapper">
                    <div className="container-fluid">
                        <ul className="breadcrumb breadcrumb2 mb-0">
                            <li><Link to="/">Trang Chủ</Link></li>
                            <li>Đăng nhập</li>
                        </ul>
                    </div>
                </div>


                <Formik initialValues={{
                    username: "",
                    password: ""
                }} onSubmit={(values, {setSubmitting}) => {
                    setSubmitting(false);
                    let cloneValue = {
                        ...values,
                    }
                    handleLogin(cloneValue);
                }}>
                    <div className='loginWrapper'>
                        <div className='card shadow'>

                            <h3>Đăng Nhập</h3>
                            <Form className="mt-4">
                                <div className='form-group mb-4 w-100'>
                                    <Field id="username" type="text" name='username' label="Tên đăng nhập"
                                               className='w-100'/>
                                </div>
                                <div className='form-group mb-4 w-100'>
                                    <div className='position-relative'>
                                        <Field id="password" type={showPassword === false ? 'password' : 'text'}
                                                   name='password' label="Mật khẩu" className='w-100'/>
                                        <Button className='icon' onClick={() => setShowPassword(!showPassword)}>
                                            {
                                                showPassword === false ? <VisibilityOffOutlinedIcon/> :
                                                    <VisibilityOutlinedIcon/>
                                            }
                                        </Button>
                                    </div>
                                </div>


                                <div className='form-group mt-5 mb-4 w-100'>
                                    <button type="submit" className='btn btn-g btn-lg w-100'>Đăng nhập</button>
                                </div>


                                {/*<div className='form-group mt-5 mb-4 w-100 signInOr'>*/}
                                {/*    <p className='text-center'>OR</p>*/}
                                {/*    <Button className='w-100' variant="outlined" onClick={signInWithGoogle}><img src={GoogleImg} />*/}
                                {/*        Sign In with Google</Button>*/}
                                {/*</div>*/}


                                <p className='text-center'>Bạn chưa có tài khoản
                                    <b> <Link to="/signup">Đăng kí</Link>
                                    </b>
                                </p>

                            </Form>
                        </div>
                    </div>
                </Formik>


            </section>
        </>
    )
}

export default SignIn;