class UsersController < ApplicationController

def create
  @user = User.new(user_params)

  if @user.save
      flash[:message] =  "logged in"
  else
    flash[:message] = "not loged in, give it another shot"
  end

  redirect_to users_path

end

private
def user_params
  return params.require(:user).permit(:email, :password)
end

end
