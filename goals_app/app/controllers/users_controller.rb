class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create 
        user = User.create(user_params)
        if user.save
            # login this user
            # redirect_to 
        else
            flash[:errors] = user.errors.message
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    def destroy
        
    end
    
    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
