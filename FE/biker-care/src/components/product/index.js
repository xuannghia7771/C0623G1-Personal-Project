import React, { useEffect, useState, useContext } from 'react';
import './style.css';
import Rating from '@mui/material/Rating';
import { Button } from '@mui/material';
import { Link } from 'react-router-dom';
import ShoppingCartOutlinedIcon from '@mui/icons-material/ShoppingCartOutlined';
import FavoriteBorderOutlinedIcon from '@mui/icons-material/FavoriteBorderOutlined';
import CompareArrowsOutlinedIcon from '@mui/icons-material/CompareArrowsOutlined';
import RemoveRedEyeOutlinedIcon from '@mui/icons-material/RemoveRedEyeOutlined';


const Product = ({id, nameProduct, price}) => {

    const [productData, setProductData] = useState();
    const [isAdded, setIsadded] = useState(false);


    useEffect(() => {

    }, [])

    // const setProductCat=()=>{
    //     sessionStorage.setItem('parentCat', productData.parentCatName);
    //     sessionStorage.setItem('subCatName', productData.subCatName);
    // }
    var x = 700000;

    return (
        <div className='productThumb'>
            <div className="imgWrapper">
                <img src="https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/g1YDojF9F0qKs2cJ3RObDg.jpg?alt=media&token=0ea16ee2-692c-425a-a76c-233cacfa9811" alt="" className="w-100"/>
            </div>

            <div className="info">
                <span className='d-block catName'>brand</span>
                <h4 className='title'><Link to="/detail">nameProduct</Link></h4>

                <div className='d-flex align-items-center mt-3'>
                    <div className='d-flex align-items-center w-100'>
                                <span className='price text-g font-weight-bold'>
                                    price </span>
                    </div>
                </div>

                <Button className='w-100 transition mt-3'><ShoppingCartOutlinedIcon />
                    Add
                </Button>
            </div>
        </div>
    )
}

export default Product;