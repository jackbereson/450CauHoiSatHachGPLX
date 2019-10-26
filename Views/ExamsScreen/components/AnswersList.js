import React, { useState, useCallback, useEffect } from 'react';
import {
    SafeAreaView,
    TouchableOpacity,
    FlatList,
    StyleSheet,
    Text,
} from 'react-native';
import Constants from 'expo-constants';
import styled from "styled-components/native";
import AnsItem from './AnsItem';

export default function AnswersList(props) {

    const { answers, questionId, checkAnswer } = props;
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

    useEffect(() => {
        if (selected.size > 0) {
            checkAnswer({ questionId, selectedAnswers: selected });
        }
    }, [selected]);

    return (
        <FlatList
            data={answers}
            renderItem={({ item }) => {
                // console.log('item',item);
                const { id, answer, isTrue } = item;
                return (
                    <AnsItem
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