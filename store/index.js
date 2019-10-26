import thunk from 'redux-thunk';
import loginReducer from './reducers/loginReducer';
import { combineReducers, applyMiddleware, createStore } from 'redux';

const AppReducers = combineReducers({
    loginReducer,
});

const rootReducer = (state, action) => {
    return AppReducers(state, action);
}

const store = createStore(rootReducer, applyMiddleware(thunk));

export default store;