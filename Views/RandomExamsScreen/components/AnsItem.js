import React, { useState, useCallback, useEffect } from 'react';
import styled from "styled-components/native";


function AnsItem({ id, answer, selected, onSelect, isTrue }) {
    return (
        <AnswerItem onPress={() => onSelect(id)} selected={selected} >
            <AnswerText selected={selected}>{id} - {answer}</AnswerText>
        </AnswerItem>
    );
}

export default AnsItem;

const AnswerItem = styled.TouchableOpacity`
    background: ${props => props.selected ? '#16a800' : '#f2f2f2'};
    padding:10px 15px;
    margin: 8px 16px;
    border-radius:10;
`

const AnswerText = styled.Text`
    font-size:20;
    color: ${props => props.selected ? '#fff' : '#000000'};
`