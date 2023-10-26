<h1>Détails de la Dépense</h1>

<p><strong>Nom de la Dépense:</strong> <%= @expense.name %></p>
<p><strong>Montant:</strong> <%= @expense.amount %></p>
<p><strong>Date:</strong> <%= @expense.date %></p>

<%= link_to 'Modifier', edit_expense_path(@expense) %>
<%= link_to 'Retour à la liste des dépenses', expenses_path %>
