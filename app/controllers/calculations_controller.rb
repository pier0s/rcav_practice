class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
@title="Square"
@num=params[:num].to_f
@square=@num**2

    render("output.html.erb")
  end

def square_root
  @title="Square Root"
  @num=params[:num].to_f
  @square_root=@num**(0.5)

      render("output.html.erb")
    end

    def random_number
      @title="Random Number"
      @min=params[:min].to_i
      @max=params[:max].to_i
      @ranum=rand(@max-@min+1)+@min

          render("output.html.erb")
        end

        def payment
          @title="Payment"
          @interest=params[:interest].to_f/10000
          @years=params[:years].to_f
          @value=params[:value].to_f
          rate=@interest/12
          months=@years*12


          amount = @value*(rate+(rate/(((1+rate)**months)-1)))

      @monthly_payment = amount

              render("output.html.erb")
            end

end
