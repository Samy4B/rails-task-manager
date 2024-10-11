Rails.application.routes.draw do
  root "tasks#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  # Route pour afficher toutes les tâches
  get "tasks", to: "tasks#index"

  # Route pour afficher les détails d"une tâche spécifique
  get "tasks/:id", to: "tasks#show", as: "task"

  # Route pour créer une nouvelle tâche (afficher le formulaire et soumettre le formulaire)
  get "tasks/new", to: "tasks#new", as: "new_task"
  post "tasks", to: "tasks#create"

  # Route pour éditer une tâche (afficher le formulaire et soumettre les modifications)
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"

  # Route pour supprimer une tâche
  delete "tasks/:id", to: "tasks#destroy", as: "delete_task"
end
