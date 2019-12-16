class ApiError extends Error {
    constructor(status = 500, message = 'Internal Server Error'){
        super(message);

        this.status = status;
    }
}

module.exports = ApiError;
