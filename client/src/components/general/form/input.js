import React from 'react'


export default props => {
    const { autoComplete="off", input, label, meta, type = "text", placeholder} = props

    const hasError = meta.touched && meta.error

    return(
        <div className="input-field">
            <input className="input" placeholder={placeholder} {...input} component="input" type={type} autoComplete={autoComplete}/>
            <div>{hasError}</div>
        </div>
    );
}

