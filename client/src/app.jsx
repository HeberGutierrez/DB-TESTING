import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';
import assesments from './components/assesments.jsx'

class App extends React.Component {
  render() {
    return <h1>Hello, people </h1>;
  }
}

ReactDOM.render(<App />, document.getElementById('app'));
