import React from "react";
import styled from "styled-components/native";

import Icon from 'react-native-vector-icons/Ionicons';

import {
    StyleSheet,
    Button,
    View,
    SafeAreaView,
    Text,
    Alert,
} from 'react-native';


import * as Progress from 'react-native-progress';


const Loading = props => {
    return (
        <LoadingView>
            <Progress.Circle size={100} indeterminate={true} />
        </LoadingView>
    );
}

const LoadingView = styled.View`
    z-index:9999;
    flex:1;
    align-items:center;
    justify-content:center;
`
const LoadingText = styled.Text`
    font-size:30;
`

export default Loading;