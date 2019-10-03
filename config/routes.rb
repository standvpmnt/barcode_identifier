Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'start#choice'
  # resource 'cobasreagents'
  get 'c111/scan', to: 'start#c111'
  get 'start/c111/add', to: 'cobasreagent#search'
  # get '/search', to: 'test#display'

end
