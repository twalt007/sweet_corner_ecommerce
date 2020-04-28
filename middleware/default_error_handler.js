module.exports = (error, req, res, next) => {
    let message = 'Internal Server Error';
    let status = 500;

    if(error instanceof ApiError){
        message = error.message;
        status = error.status
    }
    // ::  ::  ::  in development ::  ::  ::
    // if(error.status=422){
    //     //do stuff
    // }
    // else{
    //     console.error(error);
    // }
    
    res.status(status).send(message);
};

