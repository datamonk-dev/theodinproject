class LessonsController < ApplicationController
  before_action :set_cache_control_header_to_no_store
  before_action :authenticate_user!, only: [:show]

  def show
    @lesson = Lesson.find(params[:id])
      if @lesson.locked_for?(current_user)
    redirect_to path_course_path(@lesson.path, @lesson.course), alert: 'This lesson is locked until the previous project is approved.'
    return
  end
    if user_signed_in?
      @project_submission = current_user.project_submissions.find_by(lesson: @lesson)
      Courses::MarkCompletedLessons.call(user: current_user, lessons: Array(@lesson))
    end
  end


end
