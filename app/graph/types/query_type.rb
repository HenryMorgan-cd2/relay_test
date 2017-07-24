 QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema"

  # current user
  field :viewer do
    type UserType
    description "Current user"
    resolve ->(obj, args, ctx) {
      ctx[:current_user]
    }
  end

  # Get Post by ID
  field :post, QuestionType do
    argument :id, !types.ID
    description 'Root object to get viewer related collections'
    resolve -> (obj, args, ctx) {
      Question.find(args["id"])
    }
  end
end
