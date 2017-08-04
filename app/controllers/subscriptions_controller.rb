class SubscriptionsController < ApplicationController

	before_filter :authenticate_user!

	def create
		user = current_user

		#this gets the card details from the form
		token = params[:stripeToken]

		#create a customer
		customer = Stripe::Customer.create(
			card: token,
			plan: 1,
			email: user.email
			)

		#subscribe the user to a plan
		user.subscribed = "Basic"
		user.stripeid = customer.id
		user.save

		
	end

	def delete
		user = current_user
		customer = Stripe::Customer.retrieve(user.stripeid)
		subscription_id = customer.subscriptions.first.id
		subscription = customer.subscriptions.retrieve(subscription_id).delete
		user.subscribed = ""
		user.save
	end
end