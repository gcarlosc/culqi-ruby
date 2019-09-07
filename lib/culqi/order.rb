module Culqi
  class Order
    extend List
    extend Post
    extend Delete
    extend Get
    extend Update
    extend ConfirmOrder

    URL = '/orders/'
    @url = URL
  end
end
