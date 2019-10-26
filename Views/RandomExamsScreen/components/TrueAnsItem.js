import React, { useState, useCallback, useEffect } from 'react';
import styled from "styled-components/native";

const TrueAnsItem = ({ id, answer, selected, onSelect, isTrue }) => {
    // chua chon - xam
    // chon sai - do
    // chon dung - xanh

    const checkTrueItem = !selected ? (isTrue ? '#16a800' : '#f2f2f2') : (isTrue ? '#16a800' : 'red'); //selected && isTrue ? '#16a800' :  : 
    const checkTrueText = !selected ? (isTrue ? '#fff' : '#000000') : '#fff'; //selected && isTrue ? '#fff' :  ';

    return (
        <AnswerItem onPress={() => onSelect(id)} selected={checkTrueItem} >
            <AnswerText selected={checkTrueText}>{id} - {answer}</AnswerText>
        </AnswerItem>
    );
}

export default TrueAnsItem;

const AnswerItem = styled.TouchableOpacity`
    background: ${props => props.selected};
    padding:10px 15px;
    margin: 8px 16px;
    border-radius:10;
`

const AnswerText = styled.Text`
    font-size:20;
    color: ${props => props.selected};
`