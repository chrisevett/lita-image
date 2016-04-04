module Lita
  module Handlers
    class Image < Handler

      ApplauseImages = [
        'http://i.imgur.com/t8zvc.gif',
        'http://i.imgur.com/5zKXz.gif',
        'http://www.animateit.net/data/media/july2012/clap-animated-animation-clap-000340-large.gif',
        'http://i.imgur.com/9Zv4V.gif',
        'http://assets0.ordienetworks.com/images/GifGuide/clapping/1292223254212-dumpfm-mario-Obamaclap.gif',
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
         'http://i.imgur.com/qTAZJVx.png',
         'http://i.imgur.com/cOctbop.png', # rendicott:  added
         'http://i.imgur.com/RsK1sYH.png', # rendicott:  added
         'http://i.imgur.com/EuhX7oq.gif', # chrisevett: added
         'http://i.imgur.com/9LYxFXr.gif', # chrisevett: added
         'http://i.imgur.com/0LyneTh.gif', # chrisevett: added
         'http://i.imgur.com/6saY3q3.png', # chrisevett: added
         'http://i.imgur.com/KkCibCH.jpg'  # chrisevett: added 
        ]
        
        SensibleChuckle = [
        'http://i.imgur.com/himZD0M.gif'
        ]      

        BrettyGood = [
        'http://i.imgur.com/4NlIaDH.gif'
        ]      
        
        LunchImages = [
        'http://i.imgur.com/AN6eAQC.gif'
        ]
        
        SuccessImage = [
        'http://i.imgur.com/xh1EnRf.jpg'
        ]

        SkrumpetImage = [
          'http://i.imgur.com/qdsezPu.gif'
        ]


        FailImages = [
        'http://i.imgur.com/lP0RNPs.jpg',
        'http://i.imgur.com/ZgMUXSo.jpg',
        'http://i.imgur.com/uQutI49.jpg',
        'http://i.imgur.com/LvgxWa2.jpg',
        'http://i.imgur.com/VOsMKKP.png'
        ]
        
        
        DigitalStyleImages = [
        'http://i.imgur.com/RtGsVFB.jpg',
	      'http://i.imgur.com/vhwPY4z.png',
	      'http://i.imgur.com/mPp6B2E.png',
	      'http://i.imgur.com/rnpMwCB.gif',
	      'http://i.imgur.com/DCbwdY2.png'
        ]  

        ShipItImages = [
        'http://i.imgur.com/bKmAzNK.png',
        'http://i.imgur.com/YoJNNqI.jpg',
        'http://i.imgur.com/fW4UbYZ.png',
        'http://i.imgur.com/pjVI4eO.jpg',
        'http://i.imgur.com/voR9uvG.jpg',
        'http://i.imgur.com/bHFp2cb.jpg',
        'http://i.imgur.com/bBAFpPT.jpg',
        'http://i.imgur.com/dlUrMkK.jpg',
        'http://i.imgur.com/EOdw1hP.jpg'
        ]
        
        GoldStarImages = [
        'http://i.imgur.com/MQN0uzC.png'
        ]

        EliteImages = [
        'http://i.imgur.com/0XZc65v.png'
        ]
      
     
      # elite route 
      route(/elite/i, :elite, command: false, help: {"elite" => "Sooo elite....Yes!"})

      # applause route
      route(/applau(d|se)|bravo|slow clap/i, :applause, command: true, help: {"applause" => "Sends image of applause."})
      
      # doge route
      route(/\bdoge me\b/i, :doge, command: true, help: { "doge me" => "Display a single doge" })
      
      # chuckle route
      route(/\bchuckle sensibly\b/i, :chuckle, command: true, help: { "chuckle sensibly" => "chuckle, sensibly." })

      # bretty good
      route(/\b5\\5\b/i, :brettyGood, command: true, help: { "5\\5" => "bretty good :-DDD" })
      
      # lunch suggest
      route(/\blunch suggest\b/i, :lunch, command: true, help: { "lunch suggest" => "tells you where to eat" })
      
      # success route
      route(/\bsuccess baby\b/i, :success, command: true, help: { "success baby" => "Do it for Christine" })   

      # fail route
      route(/\bfail\b/i, :fail, command: true, help: { "fail" => "Display a fail image" })   

      # digital style
      route(/\bdigital style\b/i, :digitalStyle, command: true, help: { "digital style" => "one of the 3 things to do on the computer" })   
      
      # Ship It
      route(/\bship it\b/i, :shipIt, command: false, help: { "ship it" => "eh, it's probably fine..." })  
      
      # Gold Star
      route(/\bgold star\b/i, :goldStar, command: true, help: { "gold star" => "you get a gold star!" })

      # Skrumpet
      route(/\bskrumpet\b/i, :skrumpet, command: true, help: { "Skrumpet" => "2spoopy4me" })


      def skrumpet(response)
        response.reply SkrumpetImage.sample
      end

      def applause(response)
        response.reply ApplauseImages.sample
      end

      def lunch(response)
        response.reply LunchImages.sample
      end
      
      def doge(response)
         response.reply DogeImages.sample
      end
      
      def chuckle(response)
         response.reply SensibleChuckle.sample
      end      

      def brettyGood(response)
      	 response.reply BrettyGood.sample
      end

      def fail(response)
         response.reply FailImages.sample
      end

      def success(response)
         response.reply SuccessImage.sample
      end
      
      def digitalStyle(response)
         response.reply DigitalStyleImages.sample
      end

      def shipIt(response)
         response.reply ShipItImages.sample
      end

      def goldStar(response)
         response.reply GoldStarImages.sample
      end

      def elite(response)
	       response.reply EliteImages.sample
      end
      
    end

    Lita.register_handler(Image)
  end
end
