import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';

import {thunk} from "redux-thunk";
import {applyMiddleware, combineReducers, createStore} from "redux";
import {Provider} from "react-redux";
import cartReducer from "./components/order/reduce/cartReducer";

const middleware = [thunk];

const rootReduce = combineReducers({
    cartReducer,
});
const store = createStore(rootReduce, applyMiddleware(...middleware));

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
    <Provider store={store}>
        <App/>
    </Provider>
);

