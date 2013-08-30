class FormController < ApplicationController

  def index

  end

  def say_hello_to_name
     @name = params[:Name]
     render 'say_hello/say_hello'
  end
end