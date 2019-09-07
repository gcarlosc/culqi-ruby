require 'util/connect'

module Culqi::Update

  def initialize
    @url = ''
  end

  def update(id, params={})
    response = Culqi.connect("#{@url}#{id}/", Culqi.secret_key, params, 'patch', Culqi::READ_TIMEOUT)
    return OpenStruct.new(JSON.parse(response.read_body))
  end
end
