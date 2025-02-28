module Cancellable
  extend ActiveSupport::Concern
  included do
    scope :cancelled, -> { where(cancelled: true) }
  end
  
  def cancel!
    update(cancelled: true)
  end
end
