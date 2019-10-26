import React, { Component } from "react";

import {
  Platform,
  StyleSheet,
} from 'react-native';


import styled from "styled-components/native";
import Views from './../index';

import Icon from 'react-native-vector-icons/Ionicons';

import * as FileSystem from 'expo-file-system';
import { Asset } from 'expo-asset';
import * as Progress from 'react-native-progress';

class SplashScreen extends Component {

  state = {
    isLoading: true
  }

  // performTimeConsumingTask = async () => {
  //   return new Promise((resolve) =>
  //     setTimeout(
  //       () => { 
  //         resolve('result');
  //       },
  //       5000
  //     )
  //   )
  // }

  setUp = async () => {

    const sqliteFolderUri = `${FileSystem.documentDirectory}SQLite/`;

    await FileSystem.getInfoAsync(sqliteFolderUri).then(({ exists }) => {
      if (exists) {
        console.log("==> Folder exists");
      }
      else {
        console.log("==> Folder dead");
        FileSystem.makeDirectoryAsync(sqliteFolderUri).then(() => {
          console.log("SQLite folder created");
        });
      }
    });

    // let checkDbExisted = false;

    // await FileSystem.getInfoAsync(`${sqliteFolderUri}sathachlaixe.sqlite3`).then(({ exists }) => {
    //   if (exists) {
    //     console.log("==> Db exists");
    //     checkDbExisted = true;
    //   }
    // });

    //test
    // if (checkDbExisted)
    //   return this.setState({
    //     isLoading: false
    //   })
    // else 
    // {
    await FileSystem.downloadAsync(
      Asset.fromModule(require('../../assets/db/sathachlaixe.sqlite3')).uri,
      `${sqliteFolderUri}sathachlaixe.sqlite3`
    ).then(() => {
      console.log("==> Copied db");
      this.setState({
        isLoading: false
      });
    });
    // }
  }

  async componentDidMount() {
    // Preload data from an external API
    // Preload data using AsyncStorage
    await this.setUp();
    // if (data !== null) {
    //   this.setState({
    //     isLoading: false
    //   })
    // }
  }

  renderSplashScreen = (
    <Container>
      <Icon style={styles.iconBtn} name="ios-car" color={'#fff'} />
      <Title>
        450 Câu Hỏi
      </Title>
      <Title>
        Lái Xe Ôtô Mới Nhất
      </Title>
      {
        Platform.OS === "ios" && (
          <LoadingView>
            <Progress.Circle size={100} indeterminate={true} color="#fff" />
          </LoadingView>
        )
      }

    </Container>
  );

  render() {
    const { isLoading } = this.state;
    return isLoading ? this.renderSplashScreen : <Views />
  }
}

const styles = StyleSheet.create({
  iconBtn: {
    fontSize: 100,
  },
});

const Container = styled.View`
    flex:1;
    background: orange;
    justify-content:center;
    align-items:center;
    padding:20px;
`
const Title = styled.Text`
    color: white;
    font-size: 35;
    font-weight: 400;
    text-align:center
`
const LoadingView = styled.View`
  margin-top:15
`

export default SplashScreen;