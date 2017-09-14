class PrescriptionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @prescriptions = current_user.prescriptions
    # @prescriptions = Prescription.all
    render "index.html.erb"
  end

  def new
    @products = Product.all
    render "new.html.erb"
  end

  def create
    prescription = Prescription.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      amount: params[:amount],
      schedule: params[:schedule],
      dosage: params[:dosage]
    )
    prescription.save

    job_id =
      Rufus::Scheduler.singleton.in params[:schedule] do
        # Rails.logger.info "Time to take your prescription: http://chillpill.localtunnel.me/prescriptions/#{prescription.id}/edit"

        # put your own credentials here 
        account_sid = 'AC372d9c4127c1966b7f2703d77d39b8d8' 
        auth_token = 'aa17503bf351fc1f367e81f48a7e5546' 

        # set up a client to talk to the Twilio REST API 
        @client = Twilio::REST::Client.new account_sid, auth_token 

        @client.api.account.messages.create(
          :from => '+12676807025',
          :to => '+13123408815',
          :body => "Time to take your prescription: http://chillpill.localtunnel.me/prescriptions/#{prescription.id}/edit" 
        )
      end
    redirect_to "/"
  end

  def show
    @prescription = Prescription.find_by(id: params[:id])
    if @prescription
    puts "---------------------"
    puts @prescription.dosage
    puts "---------------------"
    end
    render "show.html.erb"
  end

  def edit
    prescriptions = current_user.prescriptions
    @prescription = prescriptions.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @prescription = Prescription.find(params[:id])
    @prescription.amount = params[:amount]
    @prescription.save
    render "update.html.erb"
  end

  def destroy
    prescription = Prescription.find_by(id: params[:id])
    prescription.destroy
    render "destroy.html.erb"
  end
end

              
