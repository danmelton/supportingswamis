class SupportController < ApplicationController
  def index
        @complaint = Complaint.new
  end

end
