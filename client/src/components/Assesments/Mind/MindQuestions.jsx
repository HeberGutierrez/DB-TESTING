import React from 'react';
import MindQitem from './Assesments/Mind/MindQitem.jsx';

const MindQuestions = (props) =>(
  <div className="MindQuestions">
  <h2>Mind Assesments:</h2>
  <h4> There are {props.assesments.length} questions in your test!</h4>
  <p> Finish the mind Assesment completly to save your answers</p>
  {props.assesments.map((assesments, key)=>
    <MindQitem assesments={assesments}
    key={assesments.mindID}></MindQitem>
  )}
  </div>
);

export default MindQuestions;
