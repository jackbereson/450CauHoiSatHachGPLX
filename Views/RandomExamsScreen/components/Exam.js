import _ from 'lodash';
import React, { useEffect, useState } from 'react';

import styled from 'styled-components/native';
import { getRandomQuestionsByExam } from '../../../services/question';
import Loading from './../../../components/Loading/index';
import QuestionsList from './QuestionsList';
import HeaderBar from './HeaderBar';

import { useTimer } from 'react-timer-hook';
import { SQLite } from "expo-sqlite";
const db = SQLite.openDatabase("sathachlaixe.sqlite3");

import Result from './Result';

const TIMEOUT = 500;

const Exam = props => {

    const { exam, setExam, testAgain } = props;

    const { code } = exam;

    const [loading, setLoading] = useState(true);

    const [data, getData] = useState(null);

    const [questions, setQuestions] = useState(null);

    useEffect(() => {
        const awaitLoading = setTimeout(() => {
            if (!questions) {
                getRandomQuestionsByExam({db, getData });
            }
        }, TIMEOUT);
        return () => clearTimeout(awaitLoading);
    }, []);


    useEffect(() => {
        if (data) {
            let quests = data.map((q, k) => {
                // console.log('key',k);
                let newAnswers = [];
                let answers = JSON.parse(q.answers).data.map(a => {
                    a.checked = false;
                    return a;
                });
                const randomAnswers = () => {
                    let randomIndex = Math.floor(Math.random() * answers.length);
                    let aAnswer = answers[randomIndex];
                    aAnswer.id = `${newAnswers.length + 1}`;
                    newAnswers.push(aAnswer);
                    answers.splice(randomIndex, 1);
                    if (answers.length > 0) {
                        randomAnswers();
                    }
                };

                randomAnswers();

                q.answers = newAnswers;
                return q;
            });

            setQuestions(quests);
        }
    }, [data]);


    useEffect(() => {
        // console.log('questions', questions);
        if (questions) {
            return setLoading(false);
        }
    }, [questions]);

    let expiryTimestamp = new Date();
    expiryTimestamp.setSeconds(expiryTimestamp.getSeconds() + 1201);

    const {
        seconds,
        minutes,
        start,
        restart,
    } = useTimer({ expiryTimestamp, onExpire: () => pointTheTest() });

    useEffect(() => {
        start();
    }, []);

    const [hasResult, setHasResult] = useState(false);
    const [isResultDisplay, setResultDisplay] = useState(false);
    const [testScores, setScores] = useState(0);

    useEffect(() => {
        if (hasResult) {
            setResultDisplay(true);
        }
    }, [hasResult])


    const pointTheTest = () => {
        let score = 0;
        // console.log('questions', questions);
        questions.map(q => {
            let isPassedAll = true;
            // console.log('======> q', q.id);
            q.answers.map(a => {
                if (typeof a.checked !== "undefined" && a.checked !== a.isTrue) {
                    isPassedAll = false;
                };
                return a;
            });
            if (isPassedAll) {
                score = score + 1;
            }
            // console.log(q.id, isPassedAll);
            return q;
        });
        // console.log('score', score);
        setScores(score);
        setHasResult(true);
    }

    const checkAnswer = ({ questionId, selectedAnswers }) => {
        // console.log('questionId, answerId ', questionId, selectedAnswers);
        const newQuestions = questions.map(q => {
            if (q.id === questionId) {
                q.answers = q.answers.map(a => {
                    a.checked = selectedAnswers.get(a.id);
                    return a;
                });
            }
            return q;
        });
        setQuestions(newQuestions);
    }

    const checkEmptyQuestions = () => {
        let emptyList = [];
        questions.map(q => {
            let checkedCount = 0;
            q.answers.map(a => {
                if (a.checked) {
                    checkedCount = checkedCount + 1;
                }
                return a;
            });
            if (checkedCount === 0) {
                emptyList.push(q.id);
            }
            return q;
        });
        // console.log('emptyList', emptyList);
        return emptyList;
    }

    const [trueAnswersDisplay, setTrueAnswersDisplay] = useState(false);

    const showAnswer = () => {
        setResultDisplay(false);
        setTrueAnswersDisplay(true);
    }

    const renderList = () => {
        return (
            <>
                <HeaderBar checkEmptyQuestions={checkEmptyQuestions} setExam={setExam} exam={exam} time={`${minutes}:${seconds}`} start={start} restart={restart} pointTheTest={pointTheTest} hasResult={hasResult} testAgain={testAgain} showAnswer={showAnswer} />
                {
                    isResultDisplay && <Result testScores={testScores} />
                }
                <ExamsView >
                    <Scroller>
                        <QuestionsList questions={questions} checkAnswer={checkAnswer} trueAnswersDisplay={trueAnswersDisplay} />
                    </Scroller>
                </ExamsView>

            </>
        )
    }

    return loading ? <Loading /> : renderList();
}


const ExamsView = styled.View`
    /* background:pink; */
    margin-top:44;
    margin-bottom:54
`

const Scroller = styled.ScrollView`
    padding-horizontal:16;
`


export default Exam;