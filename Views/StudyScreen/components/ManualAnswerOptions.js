import React, { useState, useCallback } from 'react';
import {
    SafeAreaView,
    TouchableOpacity,
    FlatList,
    StyleSheet,
    Text,
} from 'react-native';
import Constants from 'expo-constants';
import styled from "styled-components/native";

export default function ManualAnswerOptions(props) {

    const { answers, answerCount } = props;
    // console.log('answers', answers);

    const [selected, setSelected] = useState(new Map());

    const onSelect = useCallback(
        id => {
                const newSelected = new Map(selected);
                newSelected.set(id, !selected.get(id));
                setSelected(newSelected);
        },
        [selected],
    );

    return (
        <FlatList
            data={answers}
            renderItem={({ item }) => {
                // console.log('item',item);
                const { id, answer, isTrue } = item;
                return (
                    <Item
                        id={id}
                        answer={answer}
                        selected={!!selected.get(id)}
                        onSelect={onSelect}
                        isTrue={isTrue}
                    />
                );
            }}
            keyExtractor={item => item.id}
            extraData={selected}
        />
    );
}


function Item({ id, answer, selected, onSelect, isTrue }) {
    // chua chon - xam
    // chon sai - do
    // chon dung - xanh

    const checkTrueItem = selected && isTrue ? '#16a800' : !selected ? '#f2f2f2' : 'red';
    const checkTrueText = selected && isTrue ? '#fff' : !selected ? '#000000' : '#fff';

    return (
        <AnswerItem onPress={() => onSelect(id)} selected={checkTrueItem} >
            <AnswerText selected={checkTrueText}>{id} - {answer}</AnswerText>
        </AnswerItem>
    );
}

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