import React from "react";
import './contact.scss';
import ContactForm from './contact_form'
import Schedule from '../general/schedule/schedule';
import {Container, Col, Row} from 'react-bootstrap';
import upDots from "../../assets/images/images/up-dots.png"
import downDots from "../../assets/images/images/down-dots.png"

export default props =>{
    return (
        <div className="contact-container">
            <Container fluid>
                <Row>
                    <Col sm={5} md={6} className="textBody">
                        <h4>Contact us today!</h4>
                        <div className="text">Talk cupcakes to us! At Sweet Corner's we love hearing from our customers. Send your questions, comments and flavor suggestions to:</div>
                        <div className="email"><a href="mailto:office@sweetcorner.com">office@sweetcorner.com</a></div>
                        <div className="text">Our expert bakers are waiting to create an unique cupcake bursting with freshness and flavor just for you. Our management team are also waiting for their next event to organize.</div>
                        <img className="upDots decoration" src={upDots} />
                    </Col>
                    <Col sm={7} md={6} className="Contact-Col">
                        <ContactForm />
                    </Col>
                </Row>
                <Row>
                    <Col sm={9} md={8} className="schedule-col">
                        <Schedule />
                    </Col>
                    <Col className="decoration" sm={3} md={4} className="dots-col">
                        <img className="downDots" src={downDots} />
                    </Col>
                </Row>
            </Container>
            
            
            
        </div>
    )
}