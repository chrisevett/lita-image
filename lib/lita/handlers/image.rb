module Lita
  module Handlers
    class Image < Handler

      ApplauseImages = [
        'http://i.imgur.com/t8zvc.gif',
        'http://i.imgur.com/5zKXz.gif',
        'http://www.animateit.net/data/media/july2012/clap-animated-animation-clap-000340-large.gif',
        'http://i.imgur.com/9Zv4V.gif',
        'http://assets0.ordienetworks.com/images/GifGuide/clapping/1292223254212-dumpfm-mario-Obamaclap.gif',
        'http://sunglasses.name/gif/joker-clap.gif',
        'http://www.reactiongifs.com/wp-content/uploads/2013/01/applause.gif',
        'http://i.imgur.com/3D5n4zT.gif', 
        'http://i.imgur.com/tnnQZQT.gif', 
        'http://i.imgur.com/CAQa8Q0.gif', 
        'http://i.imgur.com/IPh5pvu.gif', 
        'http://i.imgur.com/OXEeb5o.gif', 
        'http://i.imgur.com/1g5ltcr.gif' 
        ]
        
        DogeImages = [
         'http://i.imgur.com/VInLZK3.jpg',
         'http://i.imgur.com/x8Yj2aQ.jpg',
         'http://i.imgur.com/xQJRi93.jpg',
         'http://i.imgur.com/Eefuwmz.png',
         'http://i.imgur.com/ZfZ3tYM.jpg',
         'http://i.imgur.com/e4o92IV.jpg',
         'http://i.imgur.com/uB81km6.jpg',
         'http://i.imgur.com/0XgUdMo.png',
         'http://i.imgur.com/1vBdTto.gif',
         'http://i.imgur.com/vDRL1vf.gif',
         'http://i.imgur.com/YKC8ozC.gif',
         'http://i.imgur.com/nh0lKMR.gif',
         'http://i.imgur.com/3oVBtj4.gif',
         'http://i.imgur.com/u8qWfNM.gif',
         'http://i.imgur.com/5KjkT6x.gif',
         'http://i.imgur.com/SNtpaEn.gif',
         'http://i.imgur.com/qTAZJVx.png'
        ]
        
        SensibleChuckle = [
        'http://i.imgur.com/himZD0M.gif'
        ]      
      
      # applause route
      route(/applau(d|se)|bravo|slow clap/i, :applause, command: true, help: {"applause" => "Sends image of applause."})
      
      # doge route
      route(/\bdoge me\b/i, :doge, command: true, help: { "doge me" => "Display a single doge" })
      
      # chuckle route
      route(/\bchuckle sensibly\b/i, :chuckle, command: true, help: { "chuckle" => "chuckle, sensibly." })

      def applause(response)
        response.reply ApplauseImages.sample
      end
      
      def doge(response)
         response.reply DogeImages.sample
      end
      
      def chuckle(response)
         response.reply SensibleChuckle.sample
      end      
    end

    Lita.register_handler(Image)
  end
end
