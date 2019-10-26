import _ from 'lodash';
import React, { useEffect, useState } from 'react';
import Loading from '../../components/Loading';
import ExamsList from './components/ExamsList';
import Exam from './components/Exam';


const TIMEOUT = 500;

const ExamsScreen = props => {

    const [loading, setLoading] = useState(true);
    const [exam, setExam] = useState(null);
    const [examAgain, setExamAgain] = useState(null)

    useEffect(() => {
        const awaitLoading = setTimeout(() => {
            setLoading(false);
        }, TIMEOUT);
        return () => clearTimeout(awaitLoading);
    }, []);

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

    return loading ? <Loading /> : exam ? <Exam exam={exam} setExam={setExam} testAgain={testAgain} /> : <ExamsList setExam={setExam} />;
    // return <Result />
}

export default ExamsScreen;