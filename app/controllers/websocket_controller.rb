class WebsocketController < WebsocketRails::BaseController
    def initialize_session
        puts "client #{client_id} connected\n"
        send_message :handshake, { audience_id: client_id, slide: controller_store[:slide] }
        WebsocketRails[:presenter].trigger(:new_audience, client_id)
    end

    def audience_location
        if data[:silent] != true
            puts "#{client_id} lives in #{data[:city_state].join(', ')}"
        end
        WebsocketRails[:presenter].trigger(:audience_location, data)
    end

    def audience_vote
        if data[:silent] != true
            puts "#{client_id} votes for #{data[:soda_pop]}"
        end
        WebsocketRails[:presenter].trigger(:audience_vote, data)
    end

    def show
        controller_store[:slide] = data[:slide]
        puts "Presenter changes to #{controller_store[:slide]}"
        WebsocketRails[:audience].trigger(:show, { slide: controller_store[:slide] })
    end
end
