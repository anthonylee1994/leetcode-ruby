class ParkingSystem
  # =begin
  #     :type big: Integer
  #     :type medium: Integer
  #     :type small: Integer
  # =end
  def initialize(big, medium, small)
    @quotas = [big, medium, small]
  end

  # =begin
  #     :type car_type: Integer
  #     :rtype: Boolean
  # =end
  def add_car(car_type)
    if @quotas[car_type - 1].positive?
      @quotas[car_type - 1] -= 1
      true
    else
      false
    end
  end
end
