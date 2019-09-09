require 'util/connect'

module Culqi::Delete

  def initialize
    @url = ''
  end

  def delete(id)
    response = Culqi.connect("#{@url}#{id}/", Culqi.secret_key, nil, 'delete', Culqi::READ_TIMEOUT)
    return OpenStruct.new(JSON.parse(response.read_body, symbolize_names: true))
  end
end
