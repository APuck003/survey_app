Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/surveys')

  resources :surveys do
    resources :survey_questions
  end
end
