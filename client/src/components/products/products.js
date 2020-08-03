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
        this.props.changeProductView();
    }

    render(){
        const {products, view} = this.props;
        const productList = products.map((product,index)=>{
            return (
                <ProductItem 
                    key={product.id} 
                    {...product} 
                    goToDetails={this.goToDetails.bind(this,product.id)}
                />
            );
        });
        // const viewIcon = (view) => {
        //     if (view) return <i className="material-icons">format_list_bulleted</i>
        //     else return <i className="material-icons">format_list_bulleted</i>
        // }
        return(
            <div className="products-container">
                <h3 className="title">Our Products</h3>
                <i className="view-type material-icons" onClick={this.changeView.bind(this)} >{view ? "format_list_bulleted" : "view_module"}</i>
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