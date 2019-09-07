require 'util/connect'

module Culqi::ConfirmOrder

  def initialize
    @url = ''
  end

  def confirm(id)
    response = Culqi.connect("#{@url}#{id}", Culqi.secret_key, nil, 'post', Culqi::READ_TIMEOUT)
    return OpenStruct.new(JSON.parse(response.read_body))
  end
end
