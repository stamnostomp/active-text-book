defmodule Drop do
  import :math only: [sqrt: 1]
  # or only import :math exept: [sin: 1, cos: 1]
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  def mps_to_mph(mps) do
    2.23693629 * mps
  end

  def mps_to_kph(mps) do
    3 * mps
  end
end
