import React from "react";
import './footer.scss';
import {Col, Row} from 'react-bootstrap';
import footerDots from "../../assets/images/images/dots-footer.png"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {faPhone} from '@fortawesome/free-solid-svg-icons';

export default props =>{
    const year = new Date().getFullYear();
    return (
        <footer className="footer-container">
            <Row className="row">
                <Col md={4}>
                    <img className="decDots" src={footerDots} />
                </Col>
                <Col md={4}>
                    <div className="copyright">Copyright &copy; {year} Sweet Corner. All rights reserved.</div>
                </Col>
                <Col md={4}>
                    <div className="phone"><FontAwesomeIcon icon={faPhone} /> 800 264 2099</div>
                </Col>
            </Row>    
        </footer>
    )
}