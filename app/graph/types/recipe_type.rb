RecipeType = GraphQL::ObjectType.define do
  name 'Recipe'
  description 'A recipe that has your list of ingredients and preparation instructions.'
  global_id_field :id

  field :title, !types.String
  field :description, types.String
end
