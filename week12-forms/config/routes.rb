Testapp::Application.routes.draw do

  match "/" => "home#index"
  match "/sayhello/to/:name" => "say_hello#say_hello_to"
  match "/form/" => "form#index"
  match "form/say_hello_to_name" => "form#say_hello_to_name"

  # STEP 1: tell your application which url should go to which
  # peice of code (config/routes.rb)

  # STEP 2: create controller with matching name for your route
  # e.g. home#index == home_controller.rb in app/controllers
  # and inside the file have: 
  # class HomeController < ApplicationController

  # STEP 3: create a folder in views that matches controller name
  # e.g. /views/home

  # STEP 4: create a file inside this new folder that matches
  # your function name: 
  # e.g. home#index == /views/home/index.html.erb

  # STEP 5: add code to html with: <%=...%> & <%...%>
  # STEP 6: share between controller/view with @

end
