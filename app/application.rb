
class Application
  def call(env)
    resp=Rack::Response.new
    req=Rack::Request.new(env)
    if req.path.match(/items/)
      req_item=req.path.split("/items/").last
      item=@@items.find{|i| i.name=req_item}
      if item==nil
        resp.status==400
      else
        resp.status=200
        resp.write item.price
      end
    else
      resp.status=404

    end
    resp.finish
  end
end
