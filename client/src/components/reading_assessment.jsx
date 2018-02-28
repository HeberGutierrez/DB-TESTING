import React from 'react';

function readingAssessment(props) {
  return (
    <h2 className="readingAssessment">{props.content}</h2>
  );
}

Question.propTypes = {
  content: React.PropTypes.string.isRequired
};

export default readingAssessment;
