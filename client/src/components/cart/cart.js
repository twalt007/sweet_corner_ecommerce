import React, {Component} from 'react';
import './cart.scss';
import {connect} from 'react-redux';
import {getActiveCart} from '../../actions/index';
import Table from 'react-bootstrap/Table';
import { Link } from 'react-router-dom';
import Money from '../general/money';



class Cart extends Component{

    componentDidMount(){
        this.props.getActiveCart();
    }
    totals = () => {
        const {cost,items} = this.props.cartItems.total;
        return (
            <div className="totals">
                <div className="title">Cart Total:</div>
                <div className="total-quantity">{items}</div>
                <div className="total-cost"><Money cost={cost} /></div>
            </div>
        )
    }

    render(){
        console.log("Cart Items:", this.props.cartItems)
        let cartList = null;

        if (this.props.cartItems.items){
            cartList = this.props.cartItems.items.map((itemInfo,index)=>{
                return (
                    <tr className="product-row" key={index}>
                        <td className="image"><img src={itemInfo.thumbnail.url} /></td>
                        <td className="name">{itemInfo.name}</td>
                        <td><Money className="price" cost={itemInfo.each} /></td>
                        <td className="quantity">{itemInfo.quantity}</td>
                        <td><Money className="itemTotal" cost={itemInfo.total}/></td>
                    </tr>
                )
            })
        };

        return(
            <div className="cart-container">
                <Table>
                    <thead className="table-head">
                        <tr>
                            <th></th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody className="table-body">
                        {cartList}
                    </tbody>
                </Table>
                <div className="grand-total">
                    {this.props.cartItems.total ? this.totals() : ""}
                </div>
                <Link className="guest-checkout" to="/checkout/guest">Checkout as Guest</Link>
            </div>
        )
    }
}

function mapStateToProps(state){
    return{
        cartItems: state.cart
    }
}

export default connect(mapStateToProps, {
    getActiveCart: getActiveCart
})(Cart);