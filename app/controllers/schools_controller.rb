class SchoolsController < ApplicationController

def show
  @school = current_user.school
end

def example
end

end
