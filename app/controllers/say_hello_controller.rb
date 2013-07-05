class SayHelloController < ApplicationController
  
  def say_hello_to
    @name = params[:name]
    render :say_hello
  end
  
  def say_hello_number
    @sum = params[:a] + params[:b]
    render :say_hello_number
  end

end
