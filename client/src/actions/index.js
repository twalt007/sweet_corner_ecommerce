import types from "./types" ;
import axios from "axios";

export const getAllProducts = () => async dispatch => {
    try{
        const resp = await axios.get('/api/products');        
        dispatch({
            type: types.GET_ALL_PRODUCTS,
            products: resp.data.products
        })
    } catch(error){
        console.log("Error getting all products", error);
    }
}

export const changeProductView = () => {
    return{
        type: types.CHANGE_PRODUCT_VIEW,
    }
}

export const getProductDetails = (productId) => async dispatch => {
    try{
        const resp = await axios.get(`/api/products/${productId}`);
        dispatch({
            type: types.GET_PRODUCT_DETAILS,
            product: resp.data
        })
    } catch(error){
        console.log("Error getting product detials", error);
    }
}

export const clearProductDetails = () => {
    return{
        type: types.CLEAR_PRODUCT_DETAILS,
    }
}

export const addItemToCart = (productID,quantity) => async dispatch => {
    try{
        const cartToken = localStorage.getItem('sc-cart-token');
        const axiosConfig = {
            headers: {
                'X-Cart-Token': cartToken
            }
        }
        const resp = await axios.post(`/api/cart/items/${productID}`,{
            quantity: quantity
        },axiosConfig);
        localStorage.setItem('sc-cart-token', resp.data.cartToken);

        dispatch({
            type: types.ADD_ITEM_TO_CART,
            cartTotal: resp.data.total
        })
    }catch (error){
        console.log("Error adding item to cart", error)
    }
}
export const getActiveCart = () => async dispatch => {
    try{
        const cartToken = localStorage.getItem('sc-cart-token');
        const axiosConfig = {
            headers: {
                'X-Cart-Token': cartToken
            }
        }
        const resp = await axios.get(`/api/cart`,axiosConfig)
        dispatch({
            type: types.GET_ACTIVE_CART,
            cart: resp.data
        })
    }catch (error){
        console.log("Error getting active cart: ", error)
    }
}
export const getCartTotals = () => async dispatch => {
    try{
        const cartToken = localStorage.getItem('sc-cart-token');
        const axiosConfig = {
            headers: {
                'X-Cart-Token': cartToken
            }
        }
        const resp = await axios.get(`/api/cart/totals`,axiosConfig);
        dispatch({
            type: types.GET_CART_TOTALS,
            total: resp.data.total
        })
    }catch (error){
        console.log("Error getting cart totals: ", error)
    }
}
export const createGuestOrder = (guest) => async dispatch => {
    try {
        const cartToken = localStorage.getItem('sc-cart-token');
        const axiosConfig = {
            headers: {
                'X-Cart-Token': cartToken
            }
        }
        const data = {
            email: guest.email,
            firstName: guest.firstName,
            lastName: guest.lastName
        }
        const resp = await axios.post(`/api/orders/guest`,data,axiosConfig);
        localStorage.removeItem('sc-cart-token');
        dispatch({
            type: types.CREATE_GUEST_ORDER,
            order: {
                id: resp.data.id,
                message: resp.data.message
            }
        })
        return ({
            email: guest.email,
            orderID: resp.data.id
        })
    }catch (error){
        console.log("Error with guest checkout: ", error);
    }
}

export const getGuestOrderDetails = (orderId,email) => async dispatch => {
    try{
        const resp = await axios.get(`/api/orders/guest/${orderId}`,{
            params:{
                email: email
            }
        });
        dispatch({
            type: types.GET_GUEST_ORDER_DETAILS,
            orderDetails: resp.data
        })
    }
    catch(error){
        console.log("Error gettinget guest order details: ", error)
    }
}

