import React from "react";
import { connect } from "react-redux";
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

const SettingScreen = props => {

    return (
        <SettingView>
            <SettingTouch>
                <ButtonContainer>
                    <Icon style={styles.iconBtn} name="ios-finger-print" color={'#fff'} />
                    <CustomText>Coding</CustomText>
                </ButtonContainer>
            </SettingTouch>
        </SettingView>
    );
}

const styles = StyleSheet.create({
    iconBtn: {
        fontSize: 100,
    },
});

const SettingView = styled.View`
    flex:1;
    justify-content:center;
    align-items:center;
    margin-bottom:54
`

const SettingTouch = styled.TouchableOpacity`
    background: #ffa700;
    border-radius:160;
    padding:30px 55px;
    border-color: #F1A100;
    border-width: 5;
`
const ButtonContainer = styled.View`
    text-align:center;
`

const CustomText = styled.Text`
    color:#fff;
    font-size:20;
    font-weight:bold;
    text-align:center;
`;

export default SettingScreen;