import React from 'react';
import Money from '../general/money';



const orderItem = (props)=> {
    const {name,thumbnail} = props.product;
    const {total, each, quantity} = props;
    return (
            <tr className="product-row">
                <td className="image"><img src={thumbnail['url']} alt={thumbnail['altText']} /></td>
                <td className="name">{name}</td>
                <td><Money className="cost" cost = {each} /></td>
                <td className="quantity">{quantity}</td>
                <td className="total"><Money className="itemTotal" cost={total}/></td>
            </tr>
    )
}

export default orderItem;