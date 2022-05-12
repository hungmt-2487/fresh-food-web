class SessionsController < Devise::SessionsController
  def new 
    super
  end

  def create 
    # super
    user = User.find_by username: params[:session][:username]
    if user && user&.valid_password?(params[:session][:password])
      sign_in user
      redirect_to products_path
    else
      flash[:alert] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
    sign_out current_user
    redirect_to new_user_session_path
  end
end
