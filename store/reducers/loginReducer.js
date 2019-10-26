const loginReducer = (state = { username: '', password: '' }, action) => {
    switch (action.type) {
        case 'LOGIN':
            return Object.assign({}, state, {
                username: action.username,
                password: action.password,
            });
    }

    return state;
}

export default loginReducer;