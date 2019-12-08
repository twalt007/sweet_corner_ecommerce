import React from 'react';

const money = ({cost}) => {
    const price = `$${(cost/100).toFixed(2)}`;
    return (
        <div className="cost">{price}</div>
    )
}

export default money;