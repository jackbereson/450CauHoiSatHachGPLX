import React from "react";
import {
    FlatList,
} from 'react-native';
import styled from "styled-components";
import AutoHeightImage from 'react-native-auto-height-image';
import AnswerOptions from './AnswerOptions';
import ManualAnswerOptions from './ManualAnswerOptions';
import { questPic } from './../../../assets/quests/index';


const QuestionsList = props => {
    const { questions, currentMode } = props;

    return questions ?
        <FlatList
            data={questions}
            renderItem={({ item }) => {
                // console.log('item',item);
                const { content, answers, id, type, answerCount } = item;
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
                            <AutoHeightImage width={380} source={pic} />
                        </>
                    );
                }

                return (
                    <QuestionView>
                        <QuestionNumber>
                            Câu {id} ~ ({answerCount} câu đúng)
                                </QuestionNumber>
                        {questionHtml}
                        {currentMode === 'learningMode' && <AnswerOptions answers={answers} />}
                        {currentMode === 'testMode' && <ManualAnswerOptions answers={answers} answerCount={answerCount} />}
                    </QuestionView>
                );
            }}
            keyExtractor={item => item.id.toString()}
            extraData={currentMode}
        />
        : <></>;



    // questions.map((q, k) => {
    //     const { content, answers, id, type, answerCount, pic } = q;
    //     
    // }) : <></>;
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