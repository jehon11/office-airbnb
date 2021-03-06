class OfficeSpacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def search?
    true
  end

  def edit?
    record.owner == user
  end

  def update?
    record.owner == user
  end

  def destroy?
    record.owner == user
  end
end
