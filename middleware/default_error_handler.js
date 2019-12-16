module.exports = (error, req, res, next) => {
    let message = 'Internal Server Error';
    let status = 500;

    if(error instanceof ApiError){
        message = error.message;
        status = error.status
    }

    res.status(status).send(message);
};

