import React, { useEffect, useState, useContext } from 'react';
import Slider from '@mui/material/Slider';
import Checkbox from '@mui/material/Checkbox';
import Radio from '@mui/material/Radio';
import { Button } from '@mui/material';
import FilterAltOutlinedIcon from '@mui/icons-material/FilterAltOutlined';
import bannerImg from '../../assets/images/banner1.jpg';
import { Link, useParams } from 'react-router-dom';
import RadioGroup from '@mui/material/RadioGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import FormControl from '@mui/material/FormControl';
import FormLabel from '@mui/material/FormLabel';

import Box from '@mui/material/Box';

import RangeSlider from 'react-range-slider-input';
import 'react-range-slider-input/dist/style.css';

function valuetext(value) {
    return `${value}°C`;
}

const Sidebar = () => {
    const [value, setValue] = useState([20, 37]);

    const handleChange = (event, newValue) => {
        setValue(newValue);
    };

    return (
        <>
            <div className="sidebar">
                <div className="card border-0 shadow">
                    <h3>Loại Sản Phẩm</h3>

                    <div className="catList">
                        <div className="catItem d-flex align-items-center">
                            <span className='img'><img src='https://wp.alithemes.com/html/nest/demo/assets/imgs/theme/icons/category-1.svg' width={30} alt="categoryFilter"/></span>
                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Milks & Dairies</h4>
                            <span className='d-flex align-items-center justify-content-center rounded-circle ml-auto'>30</span>
                        </div>
                        <div className="catItem d-flex align-items-center">
                            <span className='img'><img src='https://wp.alithemes.com/html/nest/demo/assets/imgs/theme/icons/category-1.svg' width={30} alt="categoryFilter"/></span>
                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Milks & Dairies</h4>
                            <span className='d-flex align-items-center justify-content-center rounded-circle ml-auto'>30</span>
                        </div>
                        <div className="catItem d-flex align-items-center">
                            <span className='img'><img src='https://wp.alithemes.com/html/nest/demo/assets/imgs/theme/icons/category-1.svg' width={30} alt="categoryFilter"/></span>
                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Milks & Dairies</h4>
                            <span className='d-flex align-items-center justify-content-center rounded-circle ml-auto'>30</span>
                        </div>
                        <div className="catItem d-flex align-items-center">
                            <span className='img'><img src='https://wp.alithemes.com/html/nest/demo/assets/imgs/theme/icons/category-1.svg' width={30} alt="categoryFilter"/></span>
                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Milks & Dairies</h4>
                            <span className='d-flex align-items-center justify-content-center rounded-circle ml-auto'>30</span>
                        </div>
                        <div className="catItem d-flex align-items-center">
                            <span className='img'><img src='https://wp.alithemes.com/html/nest/demo/assets/imgs/theme/icons/category-1.svg' width={30} alt="categoryFilter"/></span>
                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Milks & Dairies</h4>
                            <span className='d-flex align-items-center justify-content-center rounded-circle ml-auto'>30</span>
                        </div>
                        <div className="catItem d-flex align-items-center">
                            <span className='img'><img src='https://wp.alithemes.com/html/nest/demo/assets/imgs/theme/icons/category-1.svg' width={30} alt="categoryFilter"/></span>
                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Milks & Dairies</h4>
                            <span className='d-flex align-items-center justify-content-center rounded-circle ml-auto'>30</span>
                        </div>
                        <div className="catItem d-flex align-items-center">
                            <span className='img'><img src='https://wp.alithemes.com/html/nest/demo/assets/imgs/theme/icons/category-1.svg' width={30} alt="categoryFilter"/></span>
                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Milks & Dairies</h4>
                            <span className='d-flex align-items-center justify-content-center rounded-circle ml-auto'>30</span>
                        </div>
                    </div>
                </div>

                <div className="card border-0 shadow">
                    <h3>Lọc theo giá</h3>
                        <Slider
                            min={0}
                            step={1}
                            max={1000}
                            getAriaLabel={() => 'Temperature range'}
                            value={value}
                            onChange={handleChange}
                            valueLabelDisplay="auto"
                            getAriaValueText={valuetext}
                            color="success"

                        />
                    <div className='d-flex pt-2 pb-2 priceRange'>
                        <span>From: <strong className='text-success'>Rs: {value[0]}</strong></span>
                        <span className='ml-auto'>From: <strong className='text-success'>Rs: {value[1]}</strong></span>
                    </div>
                </div>
            </div>
        </>
    );
};

export default Sidebar;