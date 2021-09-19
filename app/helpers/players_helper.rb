module PlayersHelper
  def build_order_link(column:, label:)
    link_to(label, list_players_path(column: column))
  end
end
