class CustomerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.role == "manager" || user.admin?
  end

  def update?
    user.role == "manager" || user.admin?
  end

  def destroy?
    user.admin?
  end
end
