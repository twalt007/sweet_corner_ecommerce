import React, {Component} from 'react'
import {connect} from 'react-redux';
import {getGuestOrderDetails} from '../../actions';
import {queryToObject} from '../../helpers'
import './guest_order.scss'
import OrderItem from './order_item';
import Table from 'react-bootstrap/Table';
import Money from '../general/money'


class GuestOrderDetails extends Component{
    componentDidMount(){
        const {match, location} = this.props;
        const query = queryToObject(location.search);
        const orderId = match.params.order_id;
        this.props.getGuestOrderDetails(orderId, query.email);
    }
    formatTime = (createdAt) => {
        return createdAt;
    }
    statusHeader = () => {
        const {createdAt, id, itemCount, status, total} = this.props.details;
        return (
            <div className="top-half">
                <div className="header">
                    <h1><span className = "blue">Guest </span>Order Details</h1>
                    <h1>Status:<span className="yellow">{status}</span></h1>
                    <h3 className="order-num">Order #: <span className="orange">{id}</span></h3>
                </div>
                <div className="overview">
                    <h5 className="time"><span className="bold">Order Placed: </span>{this.formatTime(createdAt)}</h5>
                    <h5 className="top-total-quantity"><span className="bold">Order Total Items: </span>{itemCount}</h5>
                    <h5 className="top-total-quantity"><span className="bold">Order Total Cost: </span><Money className="money" cost={total} /></h5>
                    <h3 className="table-title bold">Order Items:</h3>
                </div>
            </div>
        )
    }
    
    render (){
        const {details} = this.props;
        if(!details){
            return(
                <h1>Loading</h1>
            )
        }else{
            const orderList = details.items.map((item,index)=>{
                return (
                    <OrderItem key={item.id} {...item} />
                );
            });
            return(
                <div className="guest-order-container">
                    {this.statusHeader()}
                    
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
                            {orderList}
                            <tr className="grand-total">
                                <td colspan="2"></td>
                                <td className="summary">Order Totals: </td>
                                <td className="total-quantity">{details.itemCount}</td>
                                <td className="total-cost"><Money cost={details.total} /></td>
                            </tr>
                        </tbody>
                    </Table>
                    
                </div>
            )
        }        
    }
}

function mapStateToProps(state){
    return{details: state.orders.details}
}

export default connect(mapStateToProps,{
    getGuestOrderDetails:getGuestOrderDetails,
})(GuestOrderDetails);

{/* <div className="grand-total">
                        {this.props.cartItems.total ? this.totals() : ""}
                    </div> */}