
class application
  def call(env)
    resp=Rack::Response.new
    req=Rack:Request.new(env)
    if req.path.match(/items/)
      sel_item=req.path.split("/items/").last
      item=@@items.find{|i| i.name=sel_item}
      resp.write item.name
  end
end
