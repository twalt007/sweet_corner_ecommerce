import React, {Component} from 'react'
import './products.scss'
import {connect} from 'react-redux'
import {getAllProducts, changeProductView} from '../../actions/index'
import ProductItem from './product_item';
import {Row} from 'react-bootstrap';

class Products extends Component{
        
    componentDidMount(){
        this.props.getAllProducts();
    }

    goToDetails(id){
        this.props.history.push(`/products/${id}`);
    }

    changeView(){
        console.log("productView changing", " Current Product View State: ", this.props.view)
        this.props.changeProductView();
    }

    render(){
        const {products, view} = this.props;
        console.log("products", this.props);
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
                <h3 className="title">Our Products Testing</h3>
                <div className="view-type" onClick={changeView}>View</div>
                <Row className={view ? "tile" : "list"}>
                    {productList}
                </Row>                
            </div>
        )
    }
}

function mapStateToProps(state){
    return {
        products: state.products.list,
        view: state.products.view
    };
}

export default connect(mapStateToProps,{
    getAllProducts: getAllProducts,
    changeProductView: changeProductView
})(Products);