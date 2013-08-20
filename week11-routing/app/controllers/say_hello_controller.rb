class SayHelloController < ApplicationController
  
  def say_hello_to
    @name = params[:name]
    render :say_hello
  end

end
