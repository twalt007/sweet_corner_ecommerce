import React from "react";
import './header.scss';
import {Col} from 'react-bootstrap';
import header from '../../assets/images/images/header.png';
import Nav from '../nav';
import centerLogo from '../../assets/images/images/logo.png';

// const imageStyle =  {
//     backgroundImage:`url(${header})`,
//     backgroundRepeat: 'no-repeat',
//     height:100
// }

const Header = props =>{
    return (
        <div className="header-container">
                <div className="top-image" style={{backgroundImage:`url(${header})`}} />
                <Nav />
                <img className="center-logo" alt="sweet-corner-logo" src={centerLogo} />
                <div className="slogan">We deliver cupcakes for the important events in life!</div>
        </div>
    )
}

export default Header