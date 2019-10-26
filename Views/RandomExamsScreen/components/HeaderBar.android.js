import _ from 'lodash';
import React, { useEffect, useState } from 'react';
import { StyleSheet, Alert } from 'react-native';
import Icon from 'react-native-vector-icons/Ionicons';

import styled from 'styled-components/native';


const HeaderBar = props => {
    const { exam, setExam, time, pointTheTest, hasResult, checkEmptyQuestions , showAnswer, testAgain } = props;
    const { name } = exam;

    const exitExam = () => {
        hasResult ? setExam(null) :
            Alert.alert(
                'Thông báo',
                'Bạn muốn thoát bài kiểm tra này ?',
                [
                    {
                        text: 'Không',
                        onPress: () => console.log('Cancel ok'),
                        style: 'cancel',
                    },
                    { text: 'Có', onPress: () => setExam(null) },
                ],
                { cancelable: false },
            );
    }

    const alertUnDoneQuestion = () => {
        const answers = checkEmptyQuestions();
        // console.log()
        Alert.alert(
            'Thông báo',
            `Câu chưa đánh : "${answers}"`,
            [
                {
                    text: 'Xác nhận',
                    onPress: () => console.log('Thoát thành công'),
                    style: 'cancel',
                }
            ],
            { cancelable: false },
        );
    }

    const alertFinishTest = () => {
        Alert.alert(
            'Thông báo',
            'Bạn muốn nộp bài chấm điểm ?',
            [
                {
                    text: 'Không',
                    onPress: () => console.log('Cancel ok'),
                    style: 'cancel',
                },
                { text: 'Có', onPress: () => getResult() },
            ],
            { cancelable: false },
        );
    }

    const getResult = () => {
        pointTheTest();
    }

    const getInExamAction = () => {
        return (
            <>
                <ActionBtn onPress={() => alertUnDoneQuestion()}>
                    <Icon style={styles.iconBtn} name="ios-heart" />
                </ActionBtn>
                <Timer>{time}</Timer>
                <ActionBtn onPress={() => alertFinishTest()}>
                    <Icon style={styles.iconBtn} name="ios-checkmark-circle-outline" color='#ffa700' />
                </ActionBtn>
            </>
        )
    }

    const getFinishedExamAction = () => {
        return (
            <>
                <ActionBtn onPress={() => testAgain()}>
                    <Icon style={styles.iconBtn} name="ios-refresh" />
                </ActionBtn>
                <ActionBtn onPress={() => showAnswer()}>
                    <Icon style={styles.iconBtn} name="ios-eye" color='#ffa700' />
                </ActionBtn>
            </>
        )
    }
    

    return (
        <Bar>
            <ActionBtn style={{ width: 30 }} onPress={() => exitExam()}>
                <Icon style={styles.iconBtn} name="ios-arrow-back" />
            </ActionBtn>
            <HeaderTitle hasResult={hasResult}>
                {hasResult ? 'Kết Quả' : name}
            </HeaderTitle>
            {hasResult ? getFinishedExamAction() : getInExamAction()}

        </Bar>
    )
}

const styles = StyleSheet.create({
    iconBtn: {
        fontSize: 30,
        color: '#b8b8b8'
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
    padding:0px 15px;
`


const HeaderTitle = styled.Text`
    font-size:20px;
    padding: 0px;
    width: ${props => props.hasResult ? '200' : '120'};
    text-align:center;
    color:#b8b8b8;
`

const Timer = styled.Text`
    font-size:20px;
    text-align:center;
    color:#ffa700;
    margin: 0px 7px;
`


const ActionBtn = styled.TouchableOpacity`
    padding:5px;
    margin: 0px 7px;
`

export default HeaderBar;