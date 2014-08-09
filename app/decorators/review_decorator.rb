class ReviewDecorator < Draper::Decorator
  delegate_all

  def author  
    review.user.firstname + " " + review.user.lastname
  end

end
