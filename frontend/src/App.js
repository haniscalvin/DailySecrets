import React from 'react';
import './App.css';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';

class App extends React.Component {
	// constructor(){
	// 	super()
		state = {
			posts:[]
		};
	// }
	
	componentDidMount(){
		axios.get("http://localhost:3000/posts").then(res=>{
			// this.setState({posts:res.data.data});
			const posts = res.data.data;
			this.setState({posts})
			// console.log(this.state.posts.data[0])
		})
	}

	render(){
		let cards = ""
		if(this.state.posts.length === 0){

		}
		else{
			cards = this.state.posts.map((item, index)=>(
				<Card key={index} style={{width:'18rem'}}>

					<Card.Title>
						{item.post_title}
					</Card.Title>

					<Card.Body>
						{item.post_content}
						<br/>
						<Button variant="primary">Click ME!</Button>
					</Card.Body>

				</Card>
			))
		}

		return (
			<div className="App">
				{cards}
			</div>
		);
	}
}

export default App;
