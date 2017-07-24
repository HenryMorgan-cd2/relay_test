AnswerType = GraphQL::ObjectType.define do
  name "Answer"
  description "A single answer"
  # Expose fields associated with Post model
  field :id, types.ID, "This id of this answer"
  field :name, types.String, "The title of this answer"
  field :body, types.String, "The body of this answer"
  field :author, UserType, "Author of this answer"
  field :created_at, types.String, "The time at which this answer was created"
end
