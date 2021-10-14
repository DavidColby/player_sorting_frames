class Player < ApplicationRecord
  FILTER_PARAMS = %i[name team_id column direction].freeze

  belongs_to :team

  scope :by_name, ->(query) { where('players.name ilike ?', "%#{query}%") }
  scope :by_team, ->(team_id) { where(team_id: team_id) if team_id.present? }

  def self.filter(filters)
    Player.includes(:team)
          .by_name(filters['name'])
          .by_team(filters['team_id'])
          .order("#{filters['column']} #{filters['direction']}")
  end
end
