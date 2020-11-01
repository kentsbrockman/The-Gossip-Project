module CitiesHelper
  def gossips?(user)
    user.gossips.length > 0 ? true : false
  end
end
