import React, { useState } from 'react';
import {
    SafeAreaView,
    TouchableOpacity,
    FlatList,
    StyleSheet,
    Text,
} from 'react-native';
import Constants from 'expo-constants';
import styled from "styled-components/native";


export default function Paging(props) {
    const { loadQuestions, selectedPage, setSelectedPage } = props;


    const onSelect = (id) => {
        loadQuestions(id);
        setSelectedPage(id);
    }

    return Array.from({ length: 10 }, (v, k) => (
        <Pager key={k} number={k + 1} id={k} onSelect={onSelect} selectedPage={selectedPage} />
    ));
}


function Pager({ id, number, selectedPage, onSelect }) {
    // console.log('selectedPage === id', selectedPage, id, selectedPage === id);//
    const selected = selectedPage === id;
    return (
        <Item onPress={() => onSelect(id)} selected={selected} >
            <ItemText selected={selected} >{number}</ItemText>
        </Item>
    );
}


const PagingContainer = styled.View`
    flex:1;
    flex-direction:row;
`

const Item = styled.TouchableOpacity`
    background: ${props => props.selected ? '#16a800' : '#f2f2f2'};
    margin: 0px 3px;
    border-radius:50;
    padding:8px;
    width:30px;
`

const ItemText = styled.Text`
    font-size:12;
    color:${props => props.selected ? '#fff' : '#b8b8b8'};
    text-align:center;
`