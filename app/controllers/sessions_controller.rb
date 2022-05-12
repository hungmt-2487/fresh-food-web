class SessionsController < Devise::SessionsController
  def new 
    super
  end

  def create 
    user = User.find_by username: params[:session][:username]
    if user && user&.valid_password?(params[:session][:password])
      redirect_to products_path
    else
      flash[:alert] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
  end
end
