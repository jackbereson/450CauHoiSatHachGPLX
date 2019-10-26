import React from 'react';
import styled from 'styled-components';

const MainButton = props => (
	<ButtonContainer
		onPress={() => alert('Hi!')}
		backgroundColor={props.backgroundColor}
	>
		<ButtonText textColor={props.textColor}>{props.text}</ButtonText>
	</ButtonContainer>
);

export default MainButton;

const ButtonContainer = styled.TouchableOpacity`
	width: 100px;
	height: 40px;
	padding: 12px;
	border-radius: 10px;	
	background-color: ${props => props.backgroundColor};
`;

const ButtonText = styled.Text`
	font-size: 15px;
	color: ${props => props.textColor};
	text-align: center;
`;