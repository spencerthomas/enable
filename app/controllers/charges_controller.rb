class ChargesController < ApplicationController
	before_action :amount_to_be_charged
	before_action :authenticate_user!
	before_action :set_plan

	def index
	end

	def new
	end

	def create
		if params[:subscription].include? 'yes'
			StripeTool.create_membership(email: params[:stripeEmail],
											stripe_token: params[:stripeToken],
											plan: @plan
											)
		else	
		customer = StripeTool.create_customer(email: params[:stripeEmail],
												stripe_token: params[:stripeToken])
		charge = StripeTool.create_charge(customer_id: customer.id,
										  amount: @amount,
										  description: "Enable subscription")
		end	
	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to new_charge_path
	end

	private

		def amount_to_be_charged
			@amount = 2000
		end

		def set_plan
			@plan = 1
		end
	end
end
