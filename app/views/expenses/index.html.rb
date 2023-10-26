<h1>Liste des Dépenses</h1>

<%= link_to 'Créer une nouvelle dépense', new_expense_path %>

<ul>
  <% @expenses.each do |expense| %>
    <li>
      <%= link_to expense.name, expense %>
    </li>
  <% end %>
</ul>
