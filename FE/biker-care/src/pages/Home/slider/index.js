import React, { useEffect, useContext} from 'react';
import Slider from "react-slick";
import './index.css';

import Slide1 from '../../../assets/images/banner-homepage1.png';
import Slide2 from '../../../assets/images/banner-homepage2.jpg';
import Slide3 from '../../../assets/images/banner-homepage3.jpg';




const HomeSlider = () => {


    var settings = {
        dots: true,
        infinite: true,
        speed: 1000,
        slidesToShow: 1,
        slidesToScroll: 1,
        fade: true,
        arrows: true,
        autoplay:true
    };


    return (
        <section className='homeSlider'>
            <div className='container-fluid position-relative'>
                <Slider {...settings} className='home_slider_Main'>
                    <div className="item">
                        <img src={Slide1} className='w-100' alt="Slide1"/>
                    </div>
                    <div className="item">
                        <img src={Slide2} className='w-100' alt="Slide2"/>
                    </div>
                    <div className="item">
                        <img src={Slide3} className='w-100' alt="Slide3"/>
                    </div>
                </Slider>
            </div>
        </section>
    )
}

export default HomeSlider;