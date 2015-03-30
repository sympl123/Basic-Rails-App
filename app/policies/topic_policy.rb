class TopicPolicy < ApplicationPolicy

  def index?
    true
  end

  def create?

  end

  def update?
    create?
  end

  def show?
    record.public? || user.present?
  end
end