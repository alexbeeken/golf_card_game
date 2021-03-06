require("bundler/setup")
Bundler.require(:default, :test)
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do
    Deck.all().each() do |deck|
      deck.destroy()
    end
    Card.all().each() do |card|
      card.destroy()
    end
    Game.all().each() do |game|
      game.destroy()
    end
    Player.all().each() do |player|
      player.destroy()
    end
    Hand.all().each() do |hand|
      hand.destroy()
    end
  end
end
