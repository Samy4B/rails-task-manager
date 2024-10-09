<h1>Edit Task</h1>

<%= form_with model: @task, local: true do |form| %>
  <div class="form-group">
    <%= form.label :title %>
    <%= form.text_field :title, class: 'form-control' %>
  </div>

  <div class="form-group">
    <%= form.label :details %>
    <%= form.text_area :details, class: 'form-control' %>
  </div>

  <div class="form-group">
    <%= form.label :completed %>
    <%= form.check_box :completed %>
  </div>

  <%= form.submit 'Update Task', class: 'btn btn-primary' %>
<% end %>

<%= link_to 'Back to task list', tasks_path %>
