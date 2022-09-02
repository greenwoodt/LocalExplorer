class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

  end
  def show?
    true
    # DONT DELETE
    # user.bookings.include?(record.booking) || record.booking.trip.user == user
  end
end
