import _ from 'lodash';
import React, { useEffect, useState } from 'react';
import { StyleSheet, ScrollView } from 'react-native';
import { Constants, Colors, View, Card, Button, Text, Image } from 'react-native-ui-lib'; //eslint-disable-line
// import posts from '../../data/posts';
import styled from 'styled-components/native';

const cardImage = require('../../../assets/base64/exam1.json');
const cardImage2 = require('../../../assets/base64/exam2.json');

const Exams = [
    { name: "Đề 1", code: "a0001", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 1 },
    { name: "Đề 2", code: "a0002", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 2 },
    { name: "Đề 3", code: "a0003", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 4", code: "a0004", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 5", code: "a0005", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 2 },
    { name: "Đề 6", code: "a0006", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 7", code: "a0007", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 1 },
    { name: "Đề 8", code: "a0008", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 2 },
    { name: "Đề 9", code: "a0009", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 2 },
    { name: "Đề 10", code: "a0010", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 1 },
    { name: "Đề 11", code: "a0011", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 2 },
    { name: "Đề 12", code: "a0012", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 13", code: "a0013", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 14", code: "a0014", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 1 },
    { name: "Đề 15", code: "a0015", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 2 },
    { name: "Đề 16", code: "a0016", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 17", code: "a0017", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 18", code: "a0018", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 19", code: "a0019", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 20", code: "a0020", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 21", code: "a0021", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 22", code: "a0022", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 23", code: "a0023", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 24", code: "a0024", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 25", code: "a0025", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 26", code: "a0026", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 27", code: "a0027", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 28", code: "a0028", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 29", code: "a0029", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
    { name: "Đề 30", code: "a0030", desc: "Bộ đề thi B2 - Có 30 câu hỏi - Chúc bạn đạt kết quả tốt nhất", style: 3 },
];

const ExamsList = props => {
    const { setExam } = props;
    return (
        <ExamsView >
            <Scroller>
                {
                    Exams.map((exam, k) => {
                        const { name, desc, style } = exam;
                        let html = (
                            <Card key={k} row height={160} style={{ marginBottom: 15 }} onPress={() => setExam(exam)}>
                                <Card.Image width={115} imageSource={cardImage} />
                                <View padding-20 flex>
                                    <ExamName>
                                        {name}
                                    </ExamName>
                                    <Text text80 dark20>
                                        {desc}
                                    </Text>
                                </View>
                            </Card>
                        );
                        if (style === 2) {
                            html = (
                                <Card key={k} row height={160} style={{ marginBottom: 15 }} onPress={() => setExam(exam)} br10>
                                    <View padding-20 flex>
                                        <ExamName>
                                            {name}
                                        </ExamName>

                                        <Text text80 dark20>
                                            {desc}
                                        </Text>
                                    </View>
                                    <Card.Image width={115} imageSource={cardImage} />
                                </Card>
                            )
                        }
                        if (style === 3) {
                            html = (
                                <Card key={k} style={{ marginBottom: 15 }} onPress={() => setExam(exam)}>
                                    <View padding-20>
                                        <ExamName>
                                            {name}
                                        </ExamName>

                                        <Text text80 dark20>
                                            {desc}
                                        </Text>
                                    </View>
                                    <Card.Image height={120} imageSource={cardImage2} />
                                </Card>
                            );
                        }
                        return html;
                    })
                }
            </Scroller>
        </ExamsView>
    )
}

const ExamsView = styled.View`
    /* background:pink; */
    margin-bottom:54;
`

const Scroller = styled.ScrollView`
    padding-horizontal:16;
    padding-vertical: 16;
`
const ExamName = styled.Text`
    font-weight:500;
`

export default ExamsList;