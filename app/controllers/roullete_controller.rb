class RoulleteController < AuthenticatedController
  def index
    @entries = Entry.all.select {|e| e.active }
  end
end
