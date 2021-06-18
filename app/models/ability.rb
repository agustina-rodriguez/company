# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)
    # busca el user y si no lo encuentrase inventa uno vacío.

    if user.id == 1
      can :manage, :all
      # el user con id 1 va a poder tene acceso a todo.
    end

    if user.admin?
      can :manage, Person
      can :manage, Task
      can [:index, :create, :update, :show], Department
      can :index, :administrator
      can :toggle_admin, :administrator
      # can :manage, Person
      # can :manage, Task
      # can [:index, :create, :update], Department
    else
      # este else se da cuando el usuario no es admin
      can [:index, :show], Person
      can [:index, :show], Department
      can :manage, Task
      can :create, User
      can :read, User, :id => user.id
      can :update, User, :id => user.id
    end

  end
end
