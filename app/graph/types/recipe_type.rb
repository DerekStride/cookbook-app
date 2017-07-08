RecipeType = GraphQL::ObjectType.define do
  name 'Recipe'
  description 'A recipe that has your list of ingredients and preparation instructions.'
  global_id_field :id

  field :title, !types.String
  field :description, types.String

  field :cookbook do
    type CookbookType
    resolve -> (recipe, _, _) { recipe.cookbook }
  end
end
