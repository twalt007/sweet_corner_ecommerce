import React from "react";
import './about.scss';
import {Col, Row} from 'react-bootstrap';
import strips from "../../assets/images/images/strips1.png";
import dots from "../../assets/images/images/dots-box1.png";
import frosting from "../../assets/images/images/box1.png"

export default props =>{
    return (
        <div className="about-container">
            <Row>
                <Col md={7} sm={4}>
                    <div>
                        <h4 className="h4 text">Delicious cupcakes, magical moments!</h4>
                        <div className="text">Sweet Corner is growing fast. Our delicious cupcakes of all sizes, shapes and colors and tastes are creating a real wow factor.</div>
                        <div className="text">Our delicious cupcakes are different from other bakeries. Why? Well, not only are our cupcakes and baked goods prepared fresh every day, we also create personalized cupcakes in any size and shape just for you! Simply delicious and unique.</div>
                        <div className="text">Our expert bakers create stunning cupcakes in any flavor, color, size or shape you choose.</div>
                        <div className="text">Have you seen a stunning cupcake in a magazine, a TV show or on the internet? Want something unique to reflect a character or personality? Sweet Corner's cupcakes are baked with love and that's why we can create perfect and unique cupcake for you.</div>
                        <div className="text">No idea is too creative for our bakers at Sweet Corner cupcakes. Contact us today to discuss you special cupcake.</div>
                    </div>
                </Col>
                <Col md={3} className="decoration">
                    <img className="dots" src={dots} />
                </Col>
                <Col md={2} className="decoration">
                    <div className="strips" style={{backgroundImage:`url(${strips})`}} />
                </Col>
                <div className="tagline">Please note you will be overwhelmed by the sweet content</div>
                <img className="frosting" src={frosting} />
            </Row>
        </div>
    )
}