import React from "react";
import './services.scss';
import {Col, Row} from 'react-bootstrap';
import strips from "../../assets/images/images/strips1.png";
import dots from "../../assets/images/images/dots-box1.png";
import displayed from "../../assets/images/images/box2.png"

export default props =>{
    return (
        <div className="services-container">
            <Row>
                <Col md={7} className="text">
                    <div>
                        <h4 className="h4 text">We cherish the sweet moments...</h4>
                        <div className="text">For couples looking beyond the traditional wedding Sweet Corner offers the modern day alternative to a traditional wedding cake. Stack your wedding cupcakes on towering tiers or treat each guest to a sweet token of your wedded bliss.</div>
                        <div className="text">Wedding cupcake prices average about $3.00 per person, depending on how elaborate your cake design is.</div>
                        <div className="text">A non-refundable fee of $50.00 is required to reserve your date and will be deducted from your final bill.</div>
                        <div className="text">Higher prices may apply to custom cupcake flavors and highly detailed cupcakes.</div>
                        <h4 className="h4 text">Party Cupcakes</h4>
                        <div className="text">Dress it up with the Sprinkles Cupcake or keep it simple and let the cupcakes shine!</div>
                        <div className="text">Simple birthday cupcakes, such as Barney, Batman, Three Princesses, Thomas the Train, etc, range from $65 and up.</div>
                        <div className="text">3D Custom Cakes, Helmets, Wine Bottles, Naughty Cakes, Logos are a minimum $135.00+, will be based on time required and intricacy of the design.</div>
                        <h4 className="h4 text">Gift Cupcake</h4>
                        <div className="text">Sending our cupcakes by post is the perfect way to say pretty much anything you can think of - from Happy Birthday and Welcome to your new home, to Thanks for a lovely weekend and Congratulations on your new baby.</div>
                        <div className="text">A yummy alternative to flowers, we can deliver cupcakes to any doorstep you choose in California.</div>
                        <div className="text">Not only do we offer a gift that is a little different - but the way we do it is pretty special too.</div>
                        <div className="text">Our cupcakes are sold in boxes of 6 and 12 and delivered directly to the address you choose.</div>
                    </div>
                </Col>
                <Col md={3} className="services-lines">
                    <img className="dots" src={dots} />
                </Col>
                <Col md={2} className="services-lines">
                    <div className="strips" style={{backgroundImage:`url(${strips})`}} />
                </Col>
                <img className="cake" src={displayed} />
            </Row>
        </div>
    )
}