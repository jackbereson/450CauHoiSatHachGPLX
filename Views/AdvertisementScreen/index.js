import React from "react";
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
import {
    AdMobBanner,
    AdMobInterstitial,
    PublisherBanner,
    AdMobRewarded
} from 'expo-ads-admob';


const AdvertisementScreen = props => {

    // Display a banner
    return (
        <AdvertisementView>
            <AdMobBanner
                bannerSize="fullBanner"
                adUnitID="ca-app-pub-4865906376043931/7079744639" // Test ID, Replace with your-admob-unit-id
                testDeviceID="EMULATOR"
                servePersonalizedAds // true or false
                onDidFailToReceiveAdWithError={this.bannerError} />

            <PublisherBanner
                bannerSize="fullBanner"
                adUnitID="ca-app-pub-4865906376043931/7079744639" // Test ID, Replace with your-admob-unit-id
                testDeviceID="EMULATOR"
                onDidFailToReceiveAdWithError={this.bannerError}
                onAdMobDispatchAppEvent={this.adMobEvent} />
            {/* // Display a DFP Publisher banner
            <PublisherBanner
                bannerSize="fullBanner"
                adUnitID="ca-app-pub-3940256099942544/6300978111" // Test ID, Replace with your-admob-unit-id
                testDeviceID="EMULATOR"
                onDidFailToReceiveAdWithError={this.bannerError}
                onAdMobDispatchAppEvent={this.adMobEvent} />

            // Display an interstitial
            AdMobInterstitial.setAdUnitID('ca-app-pub-3940256099942544/1033173712'); // Test ID, Replace with your-admob-unit-id
            AdMobInterstitial.setTestDeviceID('EMULATOR');
await AdMobInterstitial.requestAdAsync({servePersonalizedAds: true});
            await AdMobInterstitial.showAdAsync();
            
            // Display a rewarded ad
            AdMobRewarded.setAdUnitID('ca-app-pub-3940256099942544/5224354917'); // Test ID, Replace with your-admob-unit-id
            AdMobRewarded.setTestDeviceID('EMULATOR');
            await AdMobRewarded.requestAdAsync();
            await AdMobRewarded.showAdAsync(); */}
        </AdvertisementView>
    );
}


const AdvertisementView = styled.View`
`

export default AdvertisementScreen;