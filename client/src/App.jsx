import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';
import data from './assName.js';
import Assesments from './components/Assesments.jsx';

class App extends React.Component {
  constructor(props){
    super(props);
    this.state= {
      assesments:[]
    }
    this.getReadingaAssesment = this.getReadingaAssesment.bind(this);
  }
  getReadingaAssesment(){
    $.ajax({
      url:'/readingassesments',
      method: 'GET',
      success: (results)=>{
        this.setState({
          assesments: results
        })
      },
      error: (err)=>{
        console.log('err', err)
      }
    });
  }
  componentDidMount(){
    this.getReadingaAssesment();
  }
  render(){
    return(<div>
    <h1>Start your Assesments!</h1>
    <Assesments assesments={this.state.assesments}/>
    </div>
  )
  }
};

ReactDOM.render(<App />, document.getElementById('app'));;
