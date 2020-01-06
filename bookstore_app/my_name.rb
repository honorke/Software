class Class
  alias old_new new
  def new(*args)
    print "creating a new", self.name, "\n"
    old_new(*args)
  end
end
class MyName
end

MyName.new

reg1 = /hay/ =~ 'haystack'
puts reg1
reg2 = /y/.match('haystack')
puts reg2

class Interpreter

  def do_a()
    print "three, ";
  end

  def do_d()
    print "hello ";
  end

  def do_e()
    print "!\n";
  end

  def do_v()
    print "Dave";
  end

  Dispatcher = {
      "a" => instance_method(:do_a),
      "d" => instance_method(:do_d),
      "e" => instance_method(:do_e),
      "v" => instance_method(:do_v)
  }
  def interpret(string)
    string.each_char{|b| Dispatcher[b].bind(self).call}
  end
end

interpreter = Interpreter.new
interpreter.interpret('dave')

a = 0
a += 1 unless a.zero?
puts a

selected = []
0.upto 5 do |value|
  selected << value if value==2...value==2
end
p selected

class Mega
  attr_accessor :names

  def initialize(names = "world")
    @names = names
  end

  def say_hi
    if names.nil?
      puts".."

    elsif @names.respond_to?("each")
    @names.each do |name|
      puts name
    end
  else
    puts "hello"
    end
    end
end
# n = Mega.new
# n.say_hi
class String
 def curvey?
   !("ABCD".include?(self.upcase))
 end
end
puts 'a'.curvey?
