import * as FileSystem from 'expo-file-system';
import { Asset } from 'expo-asset';

export const setUp = async () => {

    FileSystem.deleteAsync(`${FileSystem.documentDirectory}SQLite/sathachlaixe.db`).then(cUri => {
        console.log('Delete file successfully');
    });

    FileSystem.getInfoAsync(`${FileSystem.documentDirectory}SQLite/sathachlaixe.db`).then(({ exists }) => {
        if (!exists) {
            FileSystem.downloadAsync(
                Asset.fromModule(require('../assets/db/sathachlaixe.db')).uri,
                `${FileSystem.documentDirectory}SQLite/sathachlaixe.db`
            ).then(() => {
                console.log('Db saved');
            });
        }
    });

}