export default store => next => action => {
    if(typeof action != 'function'){
        return next(action);
    }
    return action(store.dispatch);
}