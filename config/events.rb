WebsocketRails::EventMap.describe do

  subscribe :client_connected, :to => WebsocketController, :with_method => :initialize_session

  namespace :audience do
      subscribe :my_location, :to => WebsocketController, :with_method => :audience_location
      subscribe :vote, :to => WebsocketController, :with_method => :audience_vote
  end

  namespace :presenter do
      subscribe :show, :to => WebsocketController, :with_method => :show
  end

end
