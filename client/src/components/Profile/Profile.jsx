import React from 'react';


class Profile extends React.Component {
 constructor(props) {
   super(props);
   this.state = {
     name: '',
     LastName: '',
     Nickname: '',
     phone: '',
     birthdate: '',
     gender: [],
     nationality: '',
     identification: '',
     education_level: [],
     coding_experience: [],
     personal_reference: '',
     holacode_discovery: [],
     commitment: []

   };
   this.handleChange = this.handleChange.bind(this);
   this.handleSubmit = this.handleSubmit.bind(this);
 }
 handleChange(e) {
   this.setState({value: e.target.value});
 }

 handleSubmit(e) {
   alert('A' + this.state.value);
   e.preventDefault();
 }
 render() {
   return (<form onSubmit={this.handleSubmit}>
     <label>
       Name:
       <input type="text" name={this.state.name}/>
     </label>
     <br/>
     <label>
       Last Name:
       <input type="text" LastName={this.state.LastName}/>
     </label>
     <br/>
     <label>
       Nickname:
       <input type="text" Nickname={this.state.Nickname}/>
     </label>
     <br/>
     <label>
       Email:
       <input type="text" Email={this.state.Email}/>
     </label>
     <br/>
     <label>
       Phone:
       <input type="text" Phone={this.state.Phone}/>
     </label>
     <br/>
     <label>
       Birthday:
       <input type="text" Birthday={this.state.Birthday}/>
     </label>
     <br/>
     <label>
       Gender:
       <input type="text" Gender={this.state.Gender}/>
     </label>
     <br/>
     <label>
       Nationality:
       <input type="text" Nationality={this.state.Nationality}/>
     </label>
     <br/>
     <label>
       Identification:
       <input type="text" Identification={this.state.Identification}/>
     </label>
     <br/>
     <label>
       Education Level:
       <input type="text" EducationLevel={this.state.EducationLevel}/>
     </label>
     <br/>
     <label>
       Coding Experience:
       <input type="text" CodingExperience={this.state.CodingExperience}/>
     </label>
     <br/>
     <label>
       Personal Reference:
       <input type="text" PersonalReference={this.state.PersonalReference}/>
     </label>
     <br/>
     <label>
       Holacode Discovery:
       <input type="text" HolacodeDiscovery={this.state.HolacodeDiscovery}/>
     </label>
     <br/>
     <label>
       Commitment:
       <input type="text" Commitment={this.state.Commitment}/>
     </label>
     <br/>
     <input type="submit" value="Submit"/>
   </form>);
 }
}

export default Profile;

/*
const Profile = (props)=>(
  <div className="profile">
    <h2> Applicant : </h2>
    <li>Before starting your test fill out the format below: done</li>

  </div>
)
*/
