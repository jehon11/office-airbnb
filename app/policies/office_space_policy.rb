class OfficeSpacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user)
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

  def edit
    record.user == user
  end

  def update
    record.owner == user
  end

  def destroy
    record.owner == user
  end

end
