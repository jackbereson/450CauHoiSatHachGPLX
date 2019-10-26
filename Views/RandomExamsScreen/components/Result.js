import _ from 'lodash';
import React from 'react';
import styled from 'styled-components/native';

import { StyleSheet, ScrollView, Image, Text } from 'react-native';

const success = require('../../../assets/base64/success.json');
const fail = require('../../../assets/base64/fail.json');

const Result = props => {
    const { testScores  } = props;

    // console.log('testScores',testScores);


    const renderSuccessView = (
        <ResultView>
            <BgView>
                <BgTheme resizeMode='stretch' source={success} />
            </BgView>

            <CountTrue>
                <CountText>
                    {testScores} Đúng
                </CountText>
            </CountTrue>

            <CountFail>
                <CountText>
                    {30 - testScores} Sai
                </CountText>
            </CountFail>

            <TestResult>
                <PassText>
                    ĐẬU
                </PassText>
            </TestResult>
        </ResultView>
    );

    const renderFailureView = (
        <ResultView>
            <BgView>
                <BgTheme resizeMode='stretch' source={fail} />
            </BgView>

            <CountTrue>
                <CountText>
                    {testScores} Đúng
                </CountText>
            </CountTrue>

            <CountFail>
                <CountText>
                    {30 - testScores} Sai
                </CountText>
            </CountFail>

            <TestResult>
                <FailText>
                    RỚT
                </FailText>
            </TestResult>
        </ResultView>
    );

    return testScores >= 26 ? renderSuccessView : renderFailureView;
}


const ResultView = styled.View`
    /* background:pink; */
    /* margin-top:44;
    margin-bottom:54; */
    position:absolute;
    top:44;
    left:0;
    z-index:999;
    elevation:999;
`

const TestResult = styled.View`
    position:absolute;
    top:475;
    left:234;
`

const PassText = styled.Text`
    color:green;
    font-size:40;
    font-weight: 500;
    elevation: 9999;
`

const FailText = styled.Text`
    color:red;
    font-size:40;
    font-weight: 500;
    elevation: 9999;
`

const CountTrue = styled.View`
    background:green;
    padding: 8px;
    position:absolute;
    top:82;
    left:75;
    border-radius:5;
    elevation: 9999;
`

const CountFail = styled.View`
    background:red;
    padding: 8px;
    position:absolute;
    top:130;
    left:75;
    border-radius:5;
    elevation: 9999;
`
const CountText = styled.Text`
    color:#fff;
    font-size:18;
    font-weight: 400;
`

const ActionView = styled.View`
    position:absolute;
    top:300;
    left:0;
    z-index:1;
    elevation:9999;
`

const ActionBtn = styled.TouchableOpacity`
    padding: 8px;
    background:#ffa700;
    width:200;
    margin-top: 20px;
    z-index:1
`


const BtnText = styled.Text`
    color:#fff;
    font-size:24;
    font-weight: 500;
`

const BgView = styled.View`
    position:absolute;
    top:0;
    left:0;
    elevation: 999;
    background:#fff;
`

const BgTheme = styled.Image`
    width:460;
    height:618;
`

export default Result;