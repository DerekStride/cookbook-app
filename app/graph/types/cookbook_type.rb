CookbookType = GraphQL::ObjectType.define do
  name 'Cookbook'
  description 'A cookbook that contains delicious recipes.'
  global_id_field :id

  field :title, !types.String
  field :description, types.String

  connection :recipes do
    type RecipeType.connection_type
    resolve -> (cookbook, _, _) { cookbook.recipes }
  end
end
