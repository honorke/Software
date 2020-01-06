class Class
  alias old_new new
  def new(*args)
    print "creating a new", self.name, "\n"
    old_new(*args)
  end
end