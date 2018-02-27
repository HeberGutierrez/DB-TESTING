import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';
import data from './assName.js'
import Assesments from './components/Assesments.jsx'

class App extends React.Component {
  constructor(props){
    super(props);
    this.state= {
      assesments:[]
    }
  }
  componentDidMount(){

  }
  render(){
    return(<div>
    <h1>Start your Assesments!</h1>
    <Assesments assesments={this.state.assesments}/>
    </div>
  )
  }
};

ReactDOM.render(<App />, document.getElementById('app'));
