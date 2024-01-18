import React, { useEffect, useContext } from 'react';
import './nav.css';
import { Link } from 'react-router-dom';
import Button from '@mui/material/Button';
import KeyboardArrowDownIcon from '@mui/icons-material/KeyboardArrowDown';
import GridViewIcon from '@mui/icons-material/GridView';
import HeadphonesOutlinedIcon from '@mui/icons-material/HeadphonesOutlined';
import { useState } from 'react';

const Nav = (props) => {


    return (
        <>
            <div className="nav d-flex align-items-center">
                <div className='container-fluid'>
                    <div className='row position-relative'>
                        <div className='col-sm-3 part1 d-flex align-items-center'>
                            <Button className='bg-g text-white catTab res-hide'>
                                <GridViewIcon /> &nbsp;Browse All Categories <KeyboardArrowDownIcon /></Button>
                        </div>

                        <div className='col-sm-7 part2 position-static'>

                        </div>

                        <div className='col-sm-2 part3 d-flex align-items-center'>
                            <div className='phNo d-flex align-items-center ml-auto'>
                                <span><HeadphonesOutlinedIcon /></span>
                                <div className='info ml-3'>
                                    <h3 className='text-g mb-0'>1900 - 888</h3>
                                    <p className='mb-0'>24/7 Support Center</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default Nav;