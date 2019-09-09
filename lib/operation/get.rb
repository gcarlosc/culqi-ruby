require 'util/connect'

module Culqi::Get

  def initialize
    @url = ''
  end

  def get(id)
    response = Culqi.connect("#{@url}#{id}/", Culqi.secret_key, nil, 'get', Culqi::READ_TIMEOUT)
    return OpenStruct.new(JSON.parse(response.read_body, symbolize_names: true))
  end
end
