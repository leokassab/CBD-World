class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def sales?
    return true
  end

  def cart?
    return true
  end

  def update_all_orders?
    true
  end
end
