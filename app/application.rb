
class Application
  def call(env)
    resp=Rack::Response.new
    req=Rack:Request.new(env)
    if req.path.match(/items/)
      req_item=req.path.split("/items/").last
      item=@@items.find{|i| i.name=req_item}
      resp.write item.name
    end
    resp.finish
  end
end
