import types from '../actions/types'
import { ModalTitle } from 'react-bootstrap';

const DEFAULT_STATE = {
    list: [], 
    view: true,
    details: null
}

export default (state=DEFAULT_STATE,action) => {
    switch(action.type){
        case types.GET_ALL_PRODUCTS:
            return {...state, list: action.products}
        case types.CHANGE_PRODUCT_VIEW:
            if (state.view) return {...state, view: false}
            else if (!state.view) return {...state, view: true}
        case types.GET_PRODUCT_DETAILS:
            return {...state, details: action.product}
        case types.CLEAR_PRODUCT_DETAILS:
            return {...state, details: null}
        default: 
            return state;
    }
}