class ApplicationController < ActionController::API
    def test
      render json: { test: "success is fetching" }
    end
  end
