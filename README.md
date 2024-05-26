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
      <h4>(ok)First form</h4>
        <li>(ok)input number of rally</li>
        <li>(ok)input checkbox special</li>
        <li>(ok)input number of racer</li>
        <li>(ok)submit button next</li>
      <h4>Second form</h4>
        <li>(ok)section with list of rally</li>
        <ul>
          <li>(ok)section racers(i)</li>
            <ul>
              <li>(ok)input time for every special</li>
              <li>(ok)input time(min:sec:millisecond)</li>
              <li>(ok)button next racers(i+1)</li>
            </ul>
        </ul>
    <h3>(ok)Back Office</h3>
      <h4>(ok)Classes</h4>
        <li>(ok)Rally</li>
        <ul>
          <li>(ok)int Number</li>
          <li>(ok)function insertInfo()</li>
          <li>(ok)Arraylist Racer racers</li>
          <ul>
            <li>(ok)racers</li>
              <ul>
                <li>(ok)int id</li>
                <li>(ok)string name</li>
                <li>(ok)string group</li>
                <li>(ok)function getListRacers()</li>
                <li>(ok)Arraylist Special specials</li>
                <ul>
                  <li>(ok)Special</li>
                  <ul>
                    <li>(ok)int id</li>
                    <li>(ok)string name</li>
                    <li>(ok)int minute</li>
                    <li>(ok)int sec</li>
                    <li>(ok)int millisec</li>
                    <li>(ok)function getListSpecial()</li>
                  </ul>
                </ul>
              </ul>
          </ul>    
        </ul>
  <h3>(ok)Database</h3>
    <li>(ok)Table Special</li>
    <ul>
      <li>(ok)id</li>
      <li>(ok)name</li>
    </ul>
    <li>(ok)Group</li>
    <ul>
      <li>(ok)id</li>
      <li>(ok)name</li>
    </ul>
    <li>(ok)Table Racer</li>
    <ul>
      <li>(ok)id</li>
      <li>(ok)name</li>
      <li>(ok)idgroup(reference id.group)</li>
    </ul>
    <li>(ok)Time</li>
    <ul>
      <li>(ok)idRacer(reference id.racer)</li>
      <li>(ok)idSpecial(reference id.special)</li>
      <li>(ok)minute</li>
      <li>(ok)second</li>
      <li>(ok)millisecond</li>
    </ul>
    <li>(ok)view v_racer</li>
    <ul>
      <li>(ok)id(id.racer)</li>
      <li>(ok)name(id.racer)</li>
      <li>(ok)idGroup(id.group)</li>
      <li>(ok)nameGroup(name.group)</li>
    </ul>
    <li>(ok)view v_time</li>
    <ul>
      <li>(ok)idRacer(id.v_racer)</li>
      <li>(ok)name(name.v_racer)</li>
      <li>(ok)idGroup (idGroup.v_racer)</li>
      <li>(ok)nameGroup (nameGroup.v_racer)</li>
      <li>(ok)idSpecial(idSpecial.Time)</li>
      <li>(ok)minute(minute.Time)</li>
      <li>(ok)second(second.Time)</li>
      <li>(ok)millisecond(millisecond.Time)</li>
    </ul>
        
            
        
        
        
