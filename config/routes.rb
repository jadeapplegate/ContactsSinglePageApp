ContactsSinglePageApp::Application.routes.draw do
  root 'contacts#main'

  get 'contacts', to: 'contacts#index'
end


#   Prefix Verb URI Pattern         Controller#Action
#     root GET  /                   contacts#main
# contacts GET  /contacts(.:format) contacts#index