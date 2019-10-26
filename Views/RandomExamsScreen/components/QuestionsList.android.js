import React, { useState, useEffect } from "react";
import styled from "styled-components";
import AutoHeightImage from 'react-native-auto-height-image';
import AnswersList from './AnswersList';
import TrueAnswersList from './TrueAnswersList';
import { questPic } from './../../../assets/quests/index';

const QuestionsList = props => {
    const { questions, checkAnswer, trueAnswersDisplay } = props;

    return questions ? questions.map((q, k) => {
        // console.log('q', q);
        const { content, answers, id, type, answerCount } = q;
        let questionHtml = (
            <Question>
                {content}
            </Question>
        );
        if (type === 'pic') {
            const { pic } = questPic.find(q => q.id === id);
            questionHtml = (
                <>
                    <Question>
                        {content}
                    </Question>
                    <AutoHeightImage width={320} source={pic} />
                </>
            );
        }

        return (
            <QuestionView key={k}>
                <QuestionNumber>
                    Câu {k + 1}
                </QuestionNumber>
                {questionHtml}
                {trueAnswersDisplay ?
                    <TrueAnswersList answers={answers} checkAnswer={checkAnswer} questionId={id} /> :
                    <AnswersList answers={answers} checkAnswer={checkAnswer} questionId={id} />
                }

            </QuestionView>
        )
    }) : <></>;
}

export default QuestionsList;


const QuestionView = styled.View`
    margin-top: 15;
    padding-bottom:10;
    border-bottom-color: #f7f7f7;
    border-bottom-width: 1;
`

const QuestionNumber = styled.Text`
    font-weight:500;
    font-size:20;
    text-align:justify;
`

const Question = styled.Text`
    font-weight:300;
    font-size:20;
    text-align:justify;
`

const QuestionPicture = styled.Image`
    /* flex:1; */
    height : 200;
`