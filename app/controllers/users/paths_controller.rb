module Users
  class PathsController < ApplicationController
    before_action :authenticate_user!
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def create
      if current_user.update(path: path)
        redirect_to path, notice: "You have selected the #{path.title} path"
      else
        Rails.logger.debug current_user.errors.full_messages.inspect
        redirect_back(fallback_location: paths_url, alert: "Unable to select the #{path.title} path")
      end
    end

    private

    def path
      Path.find(params[:path_id])
    end

    def record_not_found
      redirect_to paths_url, alert: 'Path not found'
    end
  end
end
