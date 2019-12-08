import React from 'react';
import "./form.scss"

export default props => {
    const {meta, placeholder = "Message", rows="5", cols, maxLegnth, input} = props

    const hasError = meta.touched && meta.error

    return (
        <div className="textarea">
            <textarea {...input} className="message" placeholder={placeholder} rows={rows} cols={cols} maxLength={maxLegnth} />
            <div>{hasError}</div>
        </div>
    )
}







