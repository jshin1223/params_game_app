class Api::AlphabetsController < ApplicationController
  def my_name
    @name = params["name"]
    render 'first_letter_json.jb'
  end 

  def check_word
    @name = params[:name]

    # puts "=" * 50
    # p @name[0] == "A"
    # puts "=" * 50
    if @name[0].upcase == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
  end

  def segment_guess
    target_number = 42
    @number = params[:guess].to_i

    if @number > target_number
      @message = "You guessed too high, try a lower number."
    elsif @number < target_number
      @message = "Your guess was too low, aim higher in life and in your guess."
    else
      @message = "You Win!!!"
    end
    render 'segment_guess.json.jb'
  end 



  def string_guess
    target_number = 42
    @number = params[:number].to_i

    if @number > target_number
      @message = "You guessed too high, try a lower number."
    elsif @number < target_number
      @message = "Your guess was too low, aim higher in life and in your guess."
    else
      @message = "You Win!!!"
    end
    render 'string_guess.json.jb'
  end 


  def form_params
    @message = params[:ham]
    render 'form_params_view.json.jb'
  end
end

