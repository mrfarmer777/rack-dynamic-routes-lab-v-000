
class application
  def call(env)
    resp=Rack::Response.new
    req=Rack:Request.new(env)
    sel_item=req.split(/items/).last.to_s

  end
end
