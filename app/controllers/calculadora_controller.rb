class CalculadoraController < ApplicationController

  def indexCalculadora

    @num1 = params[:valor].to_f
    @num2 = params[:valor2].to_f

    @num3 = @num1 + @num2

    puts @num3

  end

end
