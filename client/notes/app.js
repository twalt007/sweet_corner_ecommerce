import React from 'react';
import '../assets/css/app.scss';
import 'bootstrap/dist/css/bootstrap.min.css';
import { Route } from 'react-router-dom';
import About from './about';
import Contact from './contact';
import Footer from './footer';
import Header from './header';
import Home from './home';
import Services from './services';
import Products from './products';
import ProductDetails from './products/product_details';
import Cart from './cart';
import GuestCheckout from './checkout';
import GuestOrderDetails from './orders/guest_order_details'

const App = () => (
    <div className="app">
        <div className="container">
            <Header />
            {/* { isFetching && <LoadingComponent />}    high z index for component */}
            <Route path="/about" component={About}/>
            <Route path="/products" exact component={Products}/>
            <Route path="/contact" component={Contact}/>
            <Route path="/" exact component={Home}/>
            <Route path="/Services" component={Services}/>
            <Route path="/products/:product_id" component={ProductDetails} />
            <Route path="/cart" component={Cart} />
            <Route path="/checkout/guest" component={GuestCheckout} />
            <Route path="/orders/guest/:order_id" component={GuestOrderDetails} />

            <Footer />
        </div>
    </div>
);

export default App;
