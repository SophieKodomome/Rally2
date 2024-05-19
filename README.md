<h1>Rally 2 &#x1F697; &#x1F525; &#x1F525; &#x1F525;</h1>
<h1>Contexte &#x1F9E0;</h1>
<p>The following of the rally game</p>

<h1>Tech &#x1F4BB;</h1>
<li>Language: <strong>C#</strong></li>
<li>GUI: <strong> AngularJs</strong></li>
<li>Database: <strong> Postgre</strong></li>

<h1>Features &#x1F680;</h1>
  <li>A form to write the number of rally,special & the number of racers</li>
  <li>A second form to write the racers in the special and their time (min:sec:millisec) in said specials</li>
  <li>The result all group mixed & different group</li>
  <li>All that in one page</li>

<h1>To do list &#x1F4CB;</h1>
  <h2> &#x1F4C4; Page Form</h2>
    <h3>Front Office</h3>
      <h4>First form</h4>
        <li>input number of rally</li>
        <li>input checkbox special</li>
        <li>input number of racer</li>
        <li>submit button next</li>
      <h4>Second form</h4>
        <li>section with list of rally</li>
        <ul>
          <li>section racers(i)</li>
            <ul>
              <li>input time for every special</li>
              <li>input time(min:sec:millisecond)</li>
              <li>button next racers(i+1)</li>
            </ul>
        </ul>
    <h3>Back Office</h3>
      <h4>Classes</h4>
        <li>Rally</li>
        <ul>
          <li>int Number</li>
          <li>function insertInfo()</li>
          <li>Arraylist Racer racers</li>
          <ul>
            <li>racers</li>
              <ul>
                <li>int id</li>
                <li>string name</li>
                <li>string group</li>
                <li>function getListRacers()</li>
                <li>Arraylist Special specials</li>
                <ul>
                  <li>Special</li>
                  <ul>
                    <li>int id</li>
                    <li>string name</li>
                    <li>Timestamp time</li>
                    <li>function getListSpecial()</li>
                  </ul>
                </ul>
              </ul>
          </ul>    
        </ul>
  <h3>Database</h3>
    <li>Table Special</li>
    <ul>
      <li>id</li>
      <li>name</li>
    </ul>
    <li>Group</li>
    <ul>
      <li>id</li>
      <li>name</li>
    </ul>
    <li>Table Racer</li>
    <ul>
      <li>id</li>
      <li>name</li>
      <li>idgroup(reference id.group)</li>
    </ul>
    <li>Time</li>
    <ul>
      <li>idRacer(reference id.racer)</li>
      <li>idSpecial(reference id.special)</li>
      <li>Time</li>
    </ul>
    <li>view v_racer</li>
    <ul>
      <li>id(id.racer)</li>
      <li>name(id.racer)</li>
      <li>idGroup(id.group)</li>
      <li>nameGroup(name.group)</li>
    </ul>
    <li>view v_time</li>
    <ul>
      <li>idRacer(id.v_racer)</li>
      <li>name(name.v_racer)</li>
      <li>idGroup (idGroup.v_racer)</li>
      <li>nameGroup (nameGroup.v_racer)</li>
      <li>idSpecial(idSpecial.Time)</li>
      <li>Time(Time.Time)</li>
    </ul>
        
            
        
        
        
