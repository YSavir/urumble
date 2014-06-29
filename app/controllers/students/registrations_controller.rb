class Students::RegistrationsController < Devise::RegistrationsController

  def create
    binding.pry
    super
  end

end