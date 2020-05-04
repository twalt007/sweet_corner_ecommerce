import React from 'react';
import { Link } from 'react-router-dom';
import './nav.scss';
import CartWidget from "./cart_widget"

export default props => {
    return (
        <div className="nav">
            <div className="dropdown">
                <i className="material-icons dpdn-menu">menu</i>
                <div className="dropdownctnt">
                    <ul className="nav2">
                        <li>
                            <Link to="/">Home</Link>
                        </li>
                        <li>
                            <Link to="/products">Products</Link>
                        </li>
                        <li>
                            <Link to="/about">About Us</Link>
                        </li>
                        <li>
                            <Link to="/services">Services</Link>
                        </li>
                        <li>
                            <Link to="/contact">Contact</Link>
                        </li>
                    </ul>
                </div>
            </div>
            <div className="standard-menu">
                <ul className="main-nav">
                    <li>
                        <Link to="/">Home</Link>
                    </li>
                    <li>
                        <Link to="/products">Products</Link>
                    </li>
                    <li>
                        <Link to="/about">About Us</Link>
                    </li>
                    <li>
                        <Link to="/services">Services</Link>
                    </li>
                    <li>
                        <Link to="/contact">Contact</Link>
                    </li>
                </ul>
            </div>
            <CartWidget/>
        </div>
    );
}
