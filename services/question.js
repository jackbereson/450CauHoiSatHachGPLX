// import { db } from './db';

export {
    getQuestions,
    getQuestionsByExam,
    getRandomQuestionsByExam
}

const getQuestions = async ({ db, pageNo, getData }) => {
    // console.log('db',db);
    const amount = 45;
    if (db) {
        db.transaction(tx => {
            tx.executeSql(
                `SELECT category, content, id, type , answers , pic
                 FROM   Question 
                 LIMIT  ?
                 OFFSET ?
                 `,
                [amount, amount * pageNo],
                (_, { rows: { _array } }) => {
                    getData(_array);
                }
            );
        });
    }
}

const getQuestionsByExam = async ({ db, code, getData }) => {
    // console.log('db',db);
    if (db) {
        db.transaction(tx => {
            const query = `SELECT category, content, id, type , answers , pic
            FROM   Question 
            WHERE  exams like '%${code}%' ORDER BY random()
            `;
            // console.log('query',query);
            tx.executeSql(
                query,
                [],
                (_, { rows: { _array } }) => {
                    getData(_array);
                }
            );
        });
    }
}

const getRandomQuestionsByExam = async ({ db, getData }) => {
    // console.log('db',db);
    if (db) {
        db.transaction(tx => {
            const query = `SELECT category, content, id, type , answers , pic
            FROM   Question 
            ORDER BY random()
            LIMIT 30
            `;
            // console.log('query',query);
            tx.executeSql(
                query,
                [],
                (_, { rows: { _array } }) => {
                    getData(_array);
                }
            );
        });
    }
}