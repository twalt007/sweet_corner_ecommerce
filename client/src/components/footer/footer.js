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
                <Col xs={3} className="decDots-col">
                    <img className="decDots" src={footerDots} />
                </Col>
                <Col xs={5} sm={6} className="copyright-col">
                    <div className="copyright">Copyright &copy; {year} Sweet Corner. All rights reserved.</div>
                </Col>
                <Col className="phone-col">
                    <a className="phone" href='tel:+8002642099'><FontAwesomeIcon icon={faPhone} /> 800 264 2099</a>
                </Col>
            </Row>    
        </footer>
    )
}