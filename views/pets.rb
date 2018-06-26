<h1> My Pets </h1>
<h2> Dogs </h2>
<ul>
  <% @dogs.each do |name| %>
    <li> <%= name %> </li>
  <% end %>
</ul>

<h2> Cats </h2>
<ul>
  <% Cat.allNames.each do |name| %>
    <li> <%= name %> </li>
  <% end %>
</ul>

<% if Cat.count > Dog.count %>
  <h2> There are more cats than dogs.</h2>
<% elsif Dog.count > Cat.count %>
  <h2> There are more dogs than cats.</h2>
<% else %>
  <h2> There are the same number of cats and dogs.</h2>
<% end %>


<form method="POST" action="/newPet">
  <h3> New Pet? </h3>
  <p>Dog or Cat: <input type="text" name="pet_type"></p>
  <p>Pet Name: <input type="text" name="pet_name"></p>
  <p>Pet Age: <input type="text" name="pet_age"></p>
  <input type="submit">
</form>