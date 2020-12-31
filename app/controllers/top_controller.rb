class TopController < ActionController::Base
  def index
    @help_contents = HelpContent.all
    @help_records = HelpRecord.all
  end
end
