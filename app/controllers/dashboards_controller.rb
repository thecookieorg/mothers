class DashboardsController < ApplicationController
  def index
    @accounts = current_user.accounts
    @questions = current_user.questions
  end
end
