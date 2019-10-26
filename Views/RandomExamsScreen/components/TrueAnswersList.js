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
import TrueAnsItem from './TrueAnsItem';

export default function TrueAnswersList(props) {

    const { answers, questionId, checkAnswer } = props;
    // console.log('answers', answers);

    const [selected, setSelected] = useState(new Map());

    const onSelect = useCallback(
        id => {
            const newSelected = new Map(selected);
            newSelected.set(id, !selected.get(id));
            setSelected(newSelected);
        },
        [selected]
    );

    // console.log('answers',answers);

    return (
            <FlatList
                data={answers}
                renderItem={({ item }) => {
                    // console.log('item',item);
                    const { id, answer, isTrue, checked } = item;
                    return (
                        <TrueAnsItem
                            id={id}
                            answer={answer}
                            selected={checked}
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