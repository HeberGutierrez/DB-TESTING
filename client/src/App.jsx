import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';
import Profile from './components/Profile/Profile.jsx'
import Assesments from './components/Assesments/Assesments.jsx';
import ReadingTest from './components/Assesments/Reading/ReadingQList.jsx';
import MindQuestions from './components/Assesments/Mind/MindQuestions.jsx';

class App extends React.Component {
  constructor(props){
    super(props);
    this.state= {
      assesments:[]
    }
    this.getAssesment = this.getAssesment.bind(this);
  }
  getAssesment(){
    $.ajax({
      url:'/assesments',
      method: 'GET',
      success: (results)=>{
        this.setState({
          assesments: results
        })
      },
      error: (err)=>{
        console.log('this is err', err)
      }
    });
  }
  componentDidMount(){
    this.getAssesment();
  }
  render(){
    return(<div>
    <Assesments assesments={this.state.assesments}/>
    <h2>hello</h2>
    <Profile />
    <MindQuestions assesments={this.state.assesments}/>
    <ReadingTest />
    </div>
  )
  }
};

ReactDOM.render(<App />, document.getElementById('app'));;
