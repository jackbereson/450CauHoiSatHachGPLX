import React, { useState } from "react";
import { connect } from "react-redux";
import styled from "styled-components";

import Icon from 'react-native-vector-icons/Ionicons';

import {
    StyleSheet,
    Button,
    View,
    SafeAreaView,
    Text,
    Alert,
} from 'react-native';

import Constants from 'expo-constants';

import StudyScreen from "./StudyScreen/";
import ExamsScreen from './ExamsScreen/';
import RandomExamsScreen from './RandomExamsScreen/';
import SettingScreen from './SettingScreen/';
import AdvertisementScreen from './AdvertisementScreen/';


const Views = props => {
    const { statusBarHeight } = Constants;

    const [currentScreen, setScreen] = useState('StudyScreen');


    return (
        <Container statusBarHeight={statusBarHeight}>
            {currentScreen === 'StudyScreen' && <StudyScreen />}
            {currentScreen === 'ExamsScreen' && <ExamsScreen />}
            {currentScreen === 'RandomExamsScreen' && <RandomExamsScreen />}
            {currentScreen === 'SettingScreen' && <SettingScreen />}
            {currentScreen === 'AdvertisementScreen' && <AdvertisementScreen />}

            <ActionBar>
                <Icon style={styles.iconBtn} onPress={() => setScreen('StudyScreen')} name="ios-school" color={currentScreen === 'StudyScreen' ? '#ffa700' : '#b8b8b8'} />
                <Icon style={styles.iconBtn} onPress={() => setScreen('ExamsScreen')} name="ios-medal" color={currentScreen === 'ExamsScreen' ? '#ffa700' : '#b8b8b8'} />
                <Icon style={styles.iconBtn} onPress={() => setScreen('RandomExamsScreen')} name="ios-timer" color={currentScreen === 'RandomExamsScreen' ? '#ffa700' : '#b8b8b8'} />
                <Icon style={styles.iconBtn} onPress={() => setScreen('SettingScreen')} name="ios-options" color={currentScreen === 'SettingScreen' ? '#ffa700' : '#b8b8b8'} />
                <Icon style={styles.iconBtn} onPress={() => setScreen('AdvertisementScreen')} name="ios-happy" color={currentScreen === 'AdvertisementScreen' ? '#ffa700' : '#b8b8b8'} />
            </ActionBar>
        </Container>
    );
}

const styles = StyleSheet.create({
    iconBtn: {
        fontSize: 30,
        padding: 10,
        paddingLeft: 25,
        paddingRight: 25,
    },
});

const Container = styled.SafeAreaView`
    flex:1;
    margin-top: ${props => props.statusBarHeight};
`

const ActionBar = styled.View`
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    flex:1;
    flex-direction:row;
    border-top-color: #f7f7f7;
    border-top-width: 1;
    align-items: center;
    justify-content:center;
    width: 100%;
`

export default Views;