class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
        
        #devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
    end

    def trainee_signed_in
        if !trainee_signed_in?
            redirect_to '/trainees/sign_in', notice: 'please login to continue'
        end
    end

    def trainer_signed_in
        if !trainer_signed_in?
            redirect_to '/trainers/sign_in', notice: 'please login to continue'
        end
    end

    def gym_signed_in
        if !gym_signed_in?
            redirect_to '/gyms/sign_in', notice: 'please login to continue'
        end
    end
end
