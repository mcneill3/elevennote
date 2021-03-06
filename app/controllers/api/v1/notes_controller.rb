class API::V1::NotesController < API::APIController

  before_action :authorize_api_key

  def index
    @notes = current_api_user.notes.ordered
  end

  def show
    @note = current_api_user.notes.find params[:id]
  end

  def create
    @note = current_api_user.notes.build note_params
    if @note.save
      render :show
    else
      render json: note.errors, status: :unprocessable_entity
    end
  end

end
