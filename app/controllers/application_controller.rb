class ApplicationController < ActionController::Base
  before_action :authenticate_patient!
end
