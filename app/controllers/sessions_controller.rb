class SessionsController < ApplicationController


def create
person=Person.from_omniauth(request.env['omniauth.auth'])
cookies[:person_id]=person.id
flash[:success]="Welcome, #{person.name}!"
redirect_to root_url
end


def destroy

cookies.delete(:person_id)
flash[:success]="GoodBye!!"
redirect_to root_url

end


def auth_fail

render text: "You've tried to authenticate via #{params[:strategy]}, but the following error
occurred: #{params[:message]}", status: 500

end




end