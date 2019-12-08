import React, {Component} from 'react';
import {connect} from 'react-redux';
import {getProductDetails, clearProductDetails, addItemToCart} from '../../actions'
import Money from '../general/money'
import {Row, Col} from 'react-bootstrap';


class ProductDetails extends Component{
    constructor(props){
        super(props);

        this.state={
            quantity: 1
        }
    }
    componentDidMount(){
        const {getProductDetails, match: {params}} = this.props;
        getProductDetails(params.product_id);
    }
    componentWillUnmount(){
        this.props.clearProductDetails();
    }
    incrementQuantity(){
        let currentQuantity = this.state.quantity;
        this.setState({
            quantity: currentQuantity+1
        });
    }
    decrementQuantity(){
        let currentQuantity = this.state.quantity;
        if (currentQuantity !==1){
            this.setState({
                quantity: currentQuantity-1
            });
        }        
    }
    async handleAddToCart(details){
        let currentQuantity = this.state.quantity;
        await this.props.addItemToCart(details.id,currentQuantity)
        this.props.history.push('/cart')
    }

    render(){
        const {details} = this.props;
        if(!details){
            return(
                <h1>Loading</h1>
            )
            
        }else{
            return(
                <div className="details-container">
                    <Row>
                        <Col md={5} sm={12}>
                            <img className="image" src={details.image.url}/>
                        </Col>
                        <Col md={7} sm={12}>
                            <div className="content">
                                <div className="detail-content">
                                    <h1 className="product-title">{details.name}</h1>
                                    <div className="tagline">{details.caption}</div>
                                    <h4>Description</h4>
                                    <div>{details.description}</div>
                                    <Money cost={details.cost}/>
                                </div>
                                <div className="cart-content">
                                    <h4 className="cart-title">Quantity</h4>
                                    <div className="cart-functions">
                                        <button className="button decrease" onClick={this.decrementQuantity.bind(this)}>-</button>
                                        <div className="quantity" >{this.state.quantity}</div>
                                        <button className="button increase" onClick={this.incrementQuantity.bind(this)}>+</button>                                   
                                        <button className="button add" onClick={this.handleAddToCart.bind(this,details)}>Add To Cart</button>
                                    </div>                                    
                                </div>
                            </div>                            
                        </Col>
                    </Row>
                </div>
            )
        }
        
    }
};

function mapStateToProps(state){
    return {details: state.products.details}
}

export default connect(mapStateToProps,{
    getProductDetails:getProductDetails,
    clearProductDetails:clearProductDetails,
    addItemToCart: addItemToCart
})(ProductDetails);