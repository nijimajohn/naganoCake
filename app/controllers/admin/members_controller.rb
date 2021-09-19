class Admin::MembersController < ApplicationController
   before_action :authenticate_admin!

  def index
    @members= Member.all
    @members = Member.page(params[:page]).reverse_order
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member= Member.find(params[:id])
    if @member.update(member_params)
      flash[:notice] = "登録情報を変更しました"
      redirect_to admin_member_path(@member)
    else
      render "edit"
    end
  end
  
  private

  def member_params
  	params.require(:member).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number,:is_deleted)
  end

end
