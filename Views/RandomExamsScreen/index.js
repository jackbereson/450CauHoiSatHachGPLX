import React, { useEffect, useState } from "react";
import { connect } from "react-redux";
import styled from "styled-components/native";

import Icon from 'react-native-vector-icons/Ionicons';

import Loading from '../../components/Loading/';
import ExamsList from './components/ExamsList';
import Exam from './components/Exam';

import {
    StyleSheet,
    Button,
    View,
    SafeAreaView,
    Text,
    Alert,
} from 'react-native';

const TIMEOUT = 500;

const RandomExamsScreen = props => {

    const [loading, setLoading] = useState(true);
    const [exam, setExam] = useState(null);
    const [examAgain, setExamAgain] = useState(null)

    useEffect(() => {
        if (loading) {
            const awaitLoading = setTimeout(() => {
                setLoading(false);
            }, TIMEOUT);
            return () => clearTimeout(awaitLoading);
        }
    }, [loading]);

    useEffect(() => {
        if (!exam && examAgain) {
            setExam(examAgain);
            setExamAgain(null);
        }
    }, [examAgain]);

    const testAgain = () => {
        setExamAgain(exam);
        setExam(null);
    }

    const getRandomBtn = (
        <RandomExamsView>
            <GotoARandomExam onPress={() => startExam()}>
                <ButtonContainer>
                    <Icon style={styles.iconBtn} name="ios-timer" color={'#fff'} />
                    <RandomText>THI THỬ</RandomText>
                </ButtonContainer>
            </GotoARandomExam>
        </RandomExamsView>
    );

    const startExam = () => {
        setLoading(true);
        setExam({ name: "Đề thi", code: "a0001", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 1 });
    }

    return loading ? <Loading /> : exam ? <Exam exam={exam} setExam={setExam} testAgain={testAgain} /> : getRandomBtn;
}

const styles = StyleSheet.create({
    iconBtn: {
        fontSize: 100,
    },
});

const RandomExamsView = styled.View`
    flex:1;
    justify-content:center;
    align-items:center;
    margin-bottom:54
`

const GotoARandomExam = styled.TouchableOpacity`
    background: #ffa700;
    border-radius:160;
    padding:30px 55px;
    border-color: #F1A100;
    border-width: 5;
`
const ButtonContainer = styled.View`
    text-align:center;
`

const RandomText = styled.Text`
    color:#fff;
    font-size:20;
    font-weight:bold;
    text-align:center;
`;

export default RandomExamsScreen;