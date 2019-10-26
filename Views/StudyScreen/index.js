import React, { useState, useEffect } from "react";
import { connect } from "react-redux";
import styled from "styled-components";

import Icon from 'react-native-vector-icons/Ionicons';

import {
    StyleSheet,
    Button,
    View,
    SafeAreaView,
    Text,
    Alert,
} from 'react-native';

import AnswerOptions from './components/AnswerOptions';
import ManualAnswerOptions from './components/ManualAnswerOptions';

import QuestionsList from './components/QuestionsList';
import HeaderBar from './components/HeaderBar';

import Loading from '../../components/Loading';


import { getQuestions } from '../../services/question';

import { SQLite } from "expo-sqlite";
const db = SQLite.openDatabase("sathachlaixe.sqlite3");

const TIMEOUT = 500;

const StudyScreen = props => {

    const [currentMode, setMode] = useState('learningMode');

    const [loading, setLoading] = useState(true);

    const [data, getData] = useState(null);

    const [questions, setQuestions] = useState(null);

    useEffect(() => {
        const awaitLoading = setTimeout(() => {
            if (!questions) {
                getQuestions({ db, pageNo: 0, getData });
            }
        }, TIMEOUT);
        return () => clearTimeout(awaitLoading);
    }, []);

    useEffect(() => {
        if (data) {
            // console.log('data',data);
            setQuestions(data.map((q, k) => {
                q.answers = JSON.parse(q.answers).data;
                q.answerCount = q.answers.filter(ans => ans.isTrue).length;
                return q;
            }));
        }
    }, [data]);

    useEffect(() => {
        if (questions) {
            return setLoading(false);
        }
    }, [questions]);


    const [selectedPage, setSelectedPage] = useState(0);

    const loadQuestions = (pageNo) => {
        setLoading(true);
        setQuestions(null);
        setTimeout(() => {
            getQuestions({ db, pageNo: pageNo, getData });
        }, TIMEOUT);
    }

    const renderView = () => {
        return (
            <>
                <HeaderBar loadQuestions={loadQuestions} selectedPage={selectedPage} setSelectedPage={setSelectedPage} currentMode={currentMode} setMode={setMode} />
                <StudyView>
                    <Scroller>
                        <QuestionsList questions={questions} currentMode={currentMode} />
                    </Scroller>
                </StudyView>
            </>
        )
    }


    return loading ? <Loading /> : renderView();
}

export default StudyScreen;


const StudyView = styled.View`
    margin-top:47;
    margin-bottom:54
`


const Scroller = styled.ScrollView`
    padding-horizontal:16;
`