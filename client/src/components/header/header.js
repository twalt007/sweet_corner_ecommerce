import React from "react";
import './header.scss';
import {Col} from 'react-bootstrap';
import header from '../../assets/images/images/header.png';
import header_lrg from '../../assets/images/images/header_lrg.png';
import header_Xlrg from '../../assets/images/images/header_Xlrg.png';
import Nav from '../nav';
import centerLogo from '../../assets/images/images/logo.png';


const Header = props =>{
    return (
        <div className="header-container">
                <div className="top-image" style={{backgroundImage:`url(${header})`}} />
                <div className="top-image-lrg" style={{backgroundImage:`url(${header_lrg})`}} />
                <div className="top-image-Xlrg" style={{backgroundImage:`url(${header_Xlrg})`}} />
                <Nav />
                <img className="center-logo" alt="sweet-corner-logo" src={centerLogo} />
                <div className="slogan">We deliver cupcakes for the important events in life!</div>
        </div>
    )
}

export default Header