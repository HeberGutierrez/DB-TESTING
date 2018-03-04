import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';
import Profile from '../public/src/components/Profile/Profile.jsx'
import Assesments from '../public/src/components/Assesments/Assesments.jsx';
import ReadingTest from '../public/src/components/Assesments/Reading/ReadingQList.jsx';
import MindQuestions from '../public/src/components/Assesments/Mind/MindQuestions.jsx';

class App extends React.Component {
  constructor(props){
    super(props);
    this.state= {
      assesments:[],
      reading: []
    }
    this.getMindAssesment = this.getMindAssesment.bind(this);
    this.getReadingAssesment = this.getReadingAssesment.bind(this);
  }
  getMindAssesment(){
    $.ajax({
      url:'/public/src/components/Assesments/Mindassesments',
      method: 'GET',
      success: (results)=>{
        this.setState({
          assesments: results
        })
        console.log(results);
      },
      error: (err)=>{
        console.log('this is err', err)
      }
    });
  }
  getReadingAssesment(){
    $.ajax({
      url:'/public/src/components/Assesments/Reading',
      method: 'GET',
      success: (results)=>{
        this.setState({
          reading: results
        })
        console.log(results);
      },
      error: (err)=>{
        console.log('this is err', err)
      }
    });
  }

  componentDidMount(){
    this.getMindAssesment();
    this.getReadingAssesment();
  }
  render(){
    return(<div>
      <h1>Start your Assesments</h1>
    <div>
    <Assesments assesments={this.state.assesments}/>
    </div>
    <div>
    <Profile />
    </div>
    <div>
    <MindQuestions mindassesments={this.state.mind}/>
    </div>
    <div>
    <ReadingTest readingassesments={this.state.reading}/>
    </div>
    </div>
  )
  }
}

export default App;
