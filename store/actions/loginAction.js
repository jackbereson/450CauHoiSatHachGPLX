export const loginAction = (username,password) => {
    return {
        type: 'LOGIN',
        payload: {
            name: username,
            pass: password
        }
    }
}