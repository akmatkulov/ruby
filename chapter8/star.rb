class CelistialBody
    attr_accessor :type, :name
end

bodies = Hash.new do |hash, key|
  body = CelistialBody.new
  body.type = "planet"
  hash[key] = body
end

bodies["Mars"].name = "Mars"
bodies["Europa"].name = "Europa"
bodies["Europa"].type = "moon"
bodies["Venus"].name = "Venus"

p bodies