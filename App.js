import React from "react";
import { Provider } from "react-redux";
import { createStore, applyMiddleware, combineReducers } from "redux";
import thunk from "redux-thunk"

import { ThemeReducer } from './store/reducers/themeReducer/ThemeReducer';

import store from './store/';
import SplashScreen from "./Views/SplashScreen/";

const App = props => {


  return (
    <Provider store={store}>
      <SplashScreen />
    </Provider>
  );
}

export default App;
