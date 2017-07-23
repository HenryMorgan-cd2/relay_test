class GraphqlsController < ApplicationController
  before_action :authenticate

  def create
    query_string = params[:query]
    query_variables = JSON.load(params[:variables]) || {}
    context = { current_user: current_user }
    result = Schema.execute(query_string, variables: query_variables, context: context)
    render json: result
  end

  private

  def authenticate
    authenticate_with_http_token do |token, options|
      User.find_by(api_token: token)
    end
  end
end
