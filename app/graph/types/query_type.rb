QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'

  field :cookbook do
    type CookbookType
    argument :id, !types.ID

    resolve ActiveRecordResolver
  end

  field :recipe do
    type RecipeType
    argument :id, !types.ID

    resolve ActiveRecordResolver
  end
end
