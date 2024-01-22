import axios from "axios";

export const getIdProduct = async (idProduct) => {
    try {
        const result = await axios.get(`http://localhost:8080/api/cart-detail/get-detail?idProduct=${idProduct}`)
        console.log(result)
        return result;
    } catch (error) {
        console.log(error);
    }
}

export const getAllProduct = async (nameSearch) => {
    try {
        const result = await axios.get(`http://localhost:8080/api/product/get-list?nameSearch=${nameSearch}`)
        return result;
    } catch (error) {
        console.log(error);
    }
}

export const getProductDetailById = async (idProduct) => {
    try {
        const result = await axios.get(`http://localhost:8080/api/product/detail-product/${idProduct}`)
        return result;
    } catch (error) {
        alert("Lỗi: "+error);
    }
}

export const getAllProductWithFilter = async (page,limit,nameProduct,nameType,sort,sortBy) => {
    try {
        const result = await axios.get(`http://localhost:8080/api/product/listing?page=${page}&limit=${limit}&nameProduct=${nameProduct}&nameType=${nameType}&sort=${sort}&sortBy=${sortBy}`);
        return result;
    }catch (error){
        alert("Lỗi: "+error);
    }
}

export const getProductsByIdType = async (idType) => {
    try {
        const result = await axios.get(`http://localhost:8080/api/product/product-by-type/${idType}`)
        return result;
    } catch (error) {
        alert("Lỗi: "+error);
    }
}