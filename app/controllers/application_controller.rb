class ApplicationController < ActionController::Base
  #befire_action 記述予定
  before_action :configure_permitted_parameters, if: :devise_controller?

  #ログイン時のパス
  def after_sign_in_path_for(resource)
    if member_signed_in?
       root_path
    else admin_signed_in?
         admin_order_path #変更必要
    end
  end

  #サインアップ時
  def after_sign_up_path_for(resource)
      members_path
  end

  #ログアウト時のパス
  def after_sign_out_path_for(resource)
      root_path
  end

  #新規登録保存
  protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up,
        keys: [:first_name, :last_name, :first_name_kana, :last_name_kana, :email, :postal_code, :address, :telephone_number])
    end
end
