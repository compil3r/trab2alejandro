class HomeController < ApplicationController
  def home
  end

  def show_usuarios 
    @users = User.all
  end


  def edit_usuario
    @user = User.find(params[:id])
  end

  def update_usuario
    @user = User.find(params[:id])
    # just update password if it's not empty
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    else 
      # check if password and password_confirmation are equal
      if params[:user][:password] != params[:user][:password_confirmation]
        flash[:alert] = "As senhas não são iguais."
        redirect_to editar_usuario_path(@user)
        return
      end
    end

    if @user.update(user_params)
      # login with new password if is the current user
      if @user == current_user
        bypass_sign_in(@user)
      end

      redirect_to usuarios_path, notice: "Usuário atualizado com sucesso!"

    else
      render :edit_usuario
    end
    
  end

  def new_usuario
    @user = User.new
  end

  def create_usuario
    @user = User.new(user_params)
    if @user.save
      redirect_to usuarios_path, notice: "Usuário criado com sucesso!"
    else
      render :new_usuario
    end
  end

  def destroy_usuario
    @user = User.find(params[:id])

    # if the current user is the deleted user, redirect to root
    if @user == current_user
    @user.destroy

      redirect_to root_path, notice: "Usuário excluído com sucesso!"
    else
    @user.destroy

      redirect_to usuarios_path, notice: "Usuário excluído com sucesso!"
    end
    
  end


  private
    def user_params
      params.require(:user).permit(:email, :admin, :password, :password_confirmation)
    end
end
