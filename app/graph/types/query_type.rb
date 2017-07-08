QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'

  connection :cookbooks do
    type CookbookType.connection_type
    resolve -> (_, args, _) { Cookbook.first(args[:first] || 10) }
  end

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
