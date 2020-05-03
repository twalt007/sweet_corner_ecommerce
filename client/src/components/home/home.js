import React from "react";
import './home.scss';
import {Container, Col, Row} from 'react-bootstrap';
import strips from '../../assets/images/images/strips2.png';
import dots from '../../assets/images/images/dots-box2.png';
import bottomCupcakes from '../../assets/images/images/cupcakes.png'

export default props =>{
    return (
        <div className="home-container">
            <Container>
            <Row>
                <Col md={7}>
                    <div>
                        <h4 className="h4 text">We cherish the sweet moments...</h4>
                        <div className="text">Sweet Corner's story began first from our passion for sweets, which is inspired by our everyday job and also by the acknowledged weakness for sweets.</div>
                        <div className="text">For us, the Sweet corner means: the right amount of sweet, flawless appearance, the combination of shape, color and proportion and a right and balanced decor for the event.</div>
                        <div className="text">We have been baking gourmet cupcakes, 100% from Scratch, since day one. We always use the finest and most natural ingredients we can find.</div>
                        <h4 className="text">We can make happiness with so little!</h4>
                        <div className="text">We can provide services for Weddings, Bar &amp; Bat Mitzvahs, Birthdays, Showers,Corporate Events, and any other special occasion!</div>
                        <div className="text">Our expert bakers are waiting to create a memorable, unique cupcake bursting with freshness and flavor just for you.</div>
                        <div className="text">Their delicious taste, great variety and their sweet universe, colorful and flavorful cupcakes make the best choice for a chic desert. How could you resist these delicious cupcakes?</div>
                    </div>
                </Col>
                <Col sm={5}>
                    <img className="dots" src={dots} />
                    <div className="strips" style={{backgroundImage:`url(${strips})`}} />
                </Col>
            </Row>
            <Row>
                <div className="tagline">Please note you will be overwhelmed by the sweet content</div>
                <img className="btmCupCakes" src={bottomCupcakes} />
            </Row>
            </Container>
        </div>
    )
}