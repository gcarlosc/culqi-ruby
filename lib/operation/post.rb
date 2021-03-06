require 'util/connect'

module Culqi::Post

  def initialize
    @url = ''
  end

  def create(params={})
    response = if @url.include? 'token'
                 key = Culqi.public_key
                 Culqi.connect(@url, key, params, 'post', Culqi::READ_TIMEOUT, true)
               else
                 key = Culqi.secret_key
                 Culqi.connect(@url, key, params, 'post', Culqi::READ_TIMEOUT)
               end
    return response.read_body
  end
end
