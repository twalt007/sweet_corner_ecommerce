import React from 'react';
import Money from '../general/money'
import {Col} from 'react-bootstrap';


const productItem = (props)=> {
    const {caption, cost, name, thumbnail} = props;
    return (
        <Col lg={3} md={4} sm={6} xs={12} onClick={props.goToDetails}>
            <div className="border">
                <h5 className="name">{name}</h5>
                <img className="image" src={thumbnail['url']} alt={thumbnail['altText']} />
                <div className="caption">{caption}</div>
                <Money className="cost" cost = {cost}/>
            </div>
        </Col>
    )
}

export default productItem;