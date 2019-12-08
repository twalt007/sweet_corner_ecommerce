import React, {Component} from "react";
import {Field, reduxForm} from 'redux-form';
import './contact.scss';
import ContactForm from './contact_form'
import Schedule from '../general/schedule/schedule';
import {Col, Row} from 'react-bootstrap';
import upDots from "../../assets/images/images/up-dots.png"
import downDots from "../../assets/images/images/down-dots.png"

export default props =>{
    return (
        <div className="contact-container">
            <Row>
                <Col md={7} className="textBody">
                    <h4>Contact us today!</h4>
                    <div className="text">Talk cupcakes to us! At Sweet Corner's we love hearing from our customers. Send your questions, comments and flavor suggestions to:</div>
                    <div className="email"><a href="mailto:office@sweetcorner.com">office@sweetcorner.com</a></div>
                    <div className="text">Our expert bakers are waiting to create an unique cupcake bursting with freshness and flavor just for you. Our management team are also waiting for their next event to organize.</div>
                    <img className="upDots decoration" src={upDots} />
                </Col>
                <Col md={5}>
                    <ContactForm />
                </Col>
            </Row>
            <Row>
                <Col className="schedule" md={7}>
                    <Schedule />
                </Col>
                <Col className="decoration" md={5}>
                    <img className="downDots" src={downDots} />
                </Col>
            </Row>
            
            
        </div>
    )
}