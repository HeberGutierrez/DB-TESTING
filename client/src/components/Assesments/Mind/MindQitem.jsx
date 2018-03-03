import React from 'react';

const MindQitem =(props)=>(
  <div>
  <span>{props.assesments.m_questions}</span>
  <form>
  <div className="radio">
  <label>
  <input type="radio" value="option1" checked={true} />
              1
            </label>
          </div>
          <div className="radio">
            <label>
              <input type="radio" value="option2" />
              2
            </label>
          </div>
          <div className="radio">
            <label>
              <input type="radio" value="option3" />
              3
            </label>
          </div>
          <div className="radio">
            <label>
              <input type="radio" value="option3" />
              5
            </label>
          </div>
          <div className="radio">
            <label>
              <input type="radio" value="option3" />
              5
            </label>
          </div>
        </form>
  </div>
)

export default MindQitem;
