class TripPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end

    def resolve_my_trips
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def my_trips?
    true
  end


  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
