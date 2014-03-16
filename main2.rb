require 'rubygems'
require 'mysql'
=begin
begin    
    
    #con = Mysql.new 'localhost', 'root', '1111'
    client = Mysql.new 'db4free.net', 'phim', 'password','phim' 
      
    puts client.get_server_info
    rs = client.query 'SELECT VERSION()'
    puts rs.fetch_row  
    
    results = client.query("SELECT * from zombies")
      puts results
      results.each {|row|
          puts row.inspect          
      }  
    
  rescue Mysql::Error => e
    puts e.errno
    puts e.error
    puts "Try again"
    
  ensure
    client.close if client
end
=end


begin 
  def sayHi(name)
      if name != ""
        str = "Hello : " + name
      else
        str = "???"
      end
  end
  
  def sayBy(name)
     if name != ""
         str  = "Bye : " + name
      else
         str = "???"
      end
  end
  
  def getName
    print "Enter name : "
    name = gets
    disPlay(name)
  end
  
  def disPlay(name)
    r_str = sayHi(name)
    puts r_str
  end
  
  def mul(*args)
     args.each do |val|
       if val.is_a?Array
         puts  val.inspect
       else
         puts val + " => " + "#{val.length}"
       end
     
     end
  end
  
  getName
  mul('1','3','9',[2,4,7])
end
