import React, {Component} from "react";
import {Field, reduxForm} from 'redux-form';
import Input from '../general/form/input';
import "./checkout.scss"
import {connect} from "react-redux";
import {createGuestOrder} from '../../actions'

class GuestCheckout extends Component{
    
    async handleGuestCheckout(formValues){
        const orderInfo = await this.props.createGuestOrder(formValues);
        console.log("guest order submitted");
        const redirectUrl = `/orders/guest/${orderInfo.orderID}?email=${orderInfo.email}`
        this.props.history.push(redirectUrl);
        this.props.reset();
    }

    render(){
        const {handleSubmit} = this.props;
        return (            
            <div className="guest-checkout-container">
                <h2>Guest Checkout</h2>
                <form className="form" onSubmit={handleSubmit(this.handleGuestCheckout.bind(this))}>
                    <Field className="firstName" placeholder="First Name" name="firstName" component={Input}/>
                    <Field className="lastName" placeholder="Last Name" name="lastName" component={Input}/>
                    <Field className="email" placeholder="Email" name="email" type="email" component={Input}/>
                    <div className="button">
                        <button type="submit">Submit Order </button>
                    </div>
                </form>
            </div>
        )
    }
}
function validate(formValues){
    const {firstName, lastName, email} = formValues;
    const nameRegex=/^[A-Za-z]+$/;
    const emailRegex=/^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    const errors = {};

    if (!firstName){
        errors.firstName = "Please enter your first name.";
    }else if (firstName.length <2) {
        errors.firstName = 'First name must be at least 2 charcters long.';
    }else if (!nameRegex.test(firstName)){
        errors.firstName = 'Please enter a valid first name. Name may be only one word long and not include spaces.';
    }

    if (!lastName){
        errors.lastName = "Please enter your last name.";
    }else if (lastName.length <2) {
        errors.lastName = 'Last name must be at least 2 charcters long.';
    }else if (!nameRegex.test(lastName)){
        errors.lastName = 'Please enter a valid last name. NAme may be only one word long and may not include spaces.';
    }

    if (!email){
        errors.email = 'Please enter your email address.';
    }else if(!emailRegex.test(email)){
        errors.email = 'Please enter a valid email address. Example your_name@domain.com.';
    }

    return errors;
}

const ValidatedGuestCheckout = reduxForm({
    form: 'guest-checkout',
    validate: validate
})(GuestCheckout);

export default connect(null,{
    createGuestOrder: createGuestOrder
})(ValidatedGuestCheckout)
