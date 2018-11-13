class OfficeSpacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true #all users can create a officespace
  end

  def create?
    true
  end
end
