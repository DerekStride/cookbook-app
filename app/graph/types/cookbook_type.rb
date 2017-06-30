CookbookType = GraphQL::ObjectType.define do
  name 'Cookbook'
  description 'A cookbook that contains delicious recipes.'
  global_id_field :id

  field :title, !types.String
  field :description, types.String
end
