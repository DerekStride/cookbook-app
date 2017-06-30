Rails.application.routes.draw do
  resources :cookbooks

  post '/graphql', to: 'graphql#create'
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: '/graphql' if Rails.env.development?
end
