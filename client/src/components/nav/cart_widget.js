import React, {Component} from 'react';
import {Link} from "react-router-dom";
import {connect} from 'react-redux';
import {getCartTotals} from '../../actions/index'



class CartWidget extends Component{
    componentDidMount(){
        this.props.getCartTotals();
    }
    render(){
        const {total} = this.props;
        let itemCount = 0;

        if (total){
            itemCount = total.items
        }

        return (
            <li className="cart-widget">
                <Link to="/cart">
                    <i className="material-icons">shopping_cart</i>
                    <span className="cart-item-count">{itemCount}</span>
                </Link>
            </li>
        )
    }
} 

function mapStateToProps(state){
    return{
        total: state.cart.total
    }
}

export default connect(mapStateToProps,{
    getCartTotals: getCartTotals
})(CartWidget);