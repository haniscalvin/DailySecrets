import React from 'react';
import './App.css';
import Card from 'react-bootstrap/Card';
import axios from 'axios';

class App extends React.Component {
	constructor(){
		super()
		this.state = {
			response:""
		};
	}
	
	render(){
		return (
			<div className="App">
				<Card>
					<Card.Body>This is some text within a card body.</Card.Body>
				</Card>
			</div>
		);
	}
}

export default App;
