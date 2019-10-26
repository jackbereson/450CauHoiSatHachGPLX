import _ from 'lodash';
import React, { useEffect, useState } from 'react';
import { StyleSheet } from 'react-native';
import Icon from 'react-native-vector-icons/Ionicons';

import styled from 'styled-components/native';

import Paging from './Paging';

import {Platform} from 'react-native';


const HeaderBar = props => {
    const { loadQuestions, selectedPage, setSelectedPage, setMode, currentMode } = props;
    return (
        <Bar>
            <Paging loadQuestions={loadQuestions} selectedPage={selectedPage} setSelectedPage={setSelectedPage} />
            <ActionBtn onPress={() => setMode(currentMode === 'testMode' ? 'learningMode' : 'testMode')} >
                {currentMode === 'testMode' && <Icon style={styles.iconBtn} name="ios-trophy" />}
                {currentMode === 'learningMode' && <Icon style={styles.iconBtn} name="ios-sunny" />}
            </ActionBtn>
        </Bar>
    )
}

const styles = StyleSheet.create({
    iconBtn: {
        fontSize: 30,
        color: '#ffa700'
    },
});


const Bar = styled.View`
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    flex:1;
    flex-direction:row;

    border-bottom-color: #f7f7f7;
    border-bottom-width: 1;
    border-top-color: #f7f7f7;
    border-top-width: 1;
    align-items: center;
    width: 100%;
    padding:6px 8px;
`


const ActionBtn = styled.TouchableOpacity`
    padding:0px 2px;
`

const ActionBtnName = styled.Text`
    font-size:20;
`

export default HeaderBar;