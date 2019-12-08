import React, {Component} from "react";
import {Field, reduxForm} from 'redux-form';
import Input from '../general/form/input';
import Textarea from '../general/form/textarea';
import '../general/form/form.scss'

class ContactForm extends Component {
    handleFormSubmit(formValues){
        console.log('On submit contact form values', formValues);
        this.props.reset();
    }



    render(){
        const {handleSubmit} = this.props;
        return (
            <div className="contactFormContainer">
                <h4>Contact Form</h4>
                <form onSubmit={handleSubmit(this.handleFormSubmit.bind(this))}>
                    <Field className="name" placeholder="Name" name="name" component={Input}/>
                    <Field className="field email" placeholder="Email" name="email" component={Input}  />
                    <Field className="field phone" placeholder="Phone" name="phone" component={Input} type="number"/>
                    <Field className="field subject" placeholder="Subject" name="subject" component={Input}/>
                    <Field className="message" component={Textarea} name='message'/>
                    <div className="form-actions">
                        <button type="submit">Send</button>
                    </div>
                </form>
            </div>
        )
    }
}
function validate(formValues){
    const {name, email, phone, subject, message} = formValues;
    const twoWordsRegex = /(\w.+\s).+/
    const nameRegex=/^[A-Za-z]*/;
    const emailRegex=/^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    const errors = {};
    if (!name){
        errors.name = "Please enter your name.";
    }else if (name.length <2) {
        errors.name = 'Name must be at least 2 charcters long.';
    }else if (!twoWordsRegex.test(name)){
        errors.name = 'Please include your first and last name.';
    }else if (!nameRegex.test(name)){
        errors.name = 'Please enter a valid name.';
    }
    if (!email){
        errors.email = 'Please enter your email address.';
    }else if(!emailRegex.test(email)){
        errors.email = 'Please enter a valid email address. Example your_name@domain.com.';
    }
    if (!phone){
        errors.phone = "Please enter your phone.";
    }else if (phone.length!=10){
        errors.phone = "Please enter a 10 digit phone number";
    }
    if (!subject || subject.legnth <2){
        errors.subject = "Please enter a subject.";
    }
    if (!message){
        errors.message = "Please enter a message.";
    }else if (message.legnth > 1000){
        errors.message = "1,000 character limit.";
    }
    return errors;
}

export default reduxForm({
    form: 'contact-form',
    validate: validate
})(ContactForm);