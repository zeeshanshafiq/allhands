namespace :db do
  desc "Cleans up events that have a certain string"
  task clean_up_events_that_start_with: :environment do
    
    Event.all.each do |event|
    
      if event.headline.start_with?(args[:start_with])
        event.delete
      end
    end
  end

end
