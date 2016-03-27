class DashboardsController < ApplicationController
  def index
    @documents = Document.all
  end
end
