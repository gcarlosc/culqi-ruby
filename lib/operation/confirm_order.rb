require 'util/connect'

module Culqi::ConfirmOrder

  def initialize
    @url = ''
  end

  def confirm(id)
    response = Culqi.connect("#{@url}#{id}/confirm", Culqi.secret_key, nil, 'post', Culqi::READ_TIMEOUT)
    return response.read_body
  end
end
