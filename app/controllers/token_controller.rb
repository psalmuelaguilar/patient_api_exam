class TokenController < ApplicationController
  def index
    data = ::TokenProvider.issue_token({})
    render json: { token: data }
  end
end
