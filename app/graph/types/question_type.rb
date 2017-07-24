QuestionType = GraphQL::ObjectType.define do
  name "Question"
  description "A single question that returns a question with author, total votes and comments"
  # Expose fields associated with Post model
  field :id, types.ID, "This id of this question"
  field :name, types.String, "The title of this question"
  field :body, types.String, "The body of this question"
  field :answers_count, types.Int,  "The total number of answers on this question"
  field :author, UserType, "Author of this question"
  field :created_at, types.String, "The time at which this question was created"
end
