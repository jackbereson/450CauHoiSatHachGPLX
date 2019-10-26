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

export default function AnswerOptions(props) {

    const { answers } = props;
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
    return (
        <AnswerItem onPress={() => onSelect(id)} selected={isTrue} >
            <AnswerText selected={isTrue}>{id} - {answer}</AnswerText>
        </AnswerItem>
    );
}

// const styles = StyleSheet.create({
//     container: {
//         flex: 1,
//         marginTop: Constants.statusBarHeight,
//     },
//     item: {
//         backgroundColor: '#f9c2ff',
//         padding: 20,
//         marginVertical: 8,
//         marginHorizontal: 16,
//     },
//     title: {
//         fontSize: 20,
//     },
// });

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