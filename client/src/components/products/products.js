import React, {Component} from 'react'
import './products.scss'
import {connect} from 'react-redux'
import {getAllProducts} from '../../actions/index'
import ProductItem from './product_item';
import {Row} from 'react-bootstrap';

class Products extends Component{
    
    componentDidMount(){
        this.props.getAllProducts();
    }

    goToDetails(id){
        this.props.history.push(`/products/${id}`);
    }

    render(){
        const {products} = this.props;
        const productList = products.map((product,index)=>{
            return (
                <ProductItem 
                    key={product.id} 
                    {...product} 
                    goToDetails={this.goToDetails.bind(this,product.id)}
                />
            );
        });
        return(
            <div className="products-container">
                <h3 className="title">Our Products</h3>
                <Row className="list">
                    {productList}
                </Row>                
            </div>
        )
    }
}

function mapStateToProps(state){
    return {products: state.products.list};
}

export default connect(mapStateToProps,{
    getAllProducts: getAllProducts
})(Products);