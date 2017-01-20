class SpaceAge
	@DELTA=0.01
  def initialize(orbital_second)
  	@second=orbital_second
    @planet_array= Hash[
    	"Earth" => 365.25,
    	"Mercury" => 0.2408467,
    	"Venus" => 0.61519726,
    	"Mars" => 1.8808158,
    	"Jupiter" => 11.862615,
    	"Saturn" => 29.447498,
    	"Uranus" => 84.016846,
    	"Neptune" => 164.79132
    ]
    @orbital_day=orbital_second.to_i / 24 / 60 / 60 / 365.25
  end
  def seconds
    @second
  end

  def on_earth
    @orbital_day.round(2)
  end

  def on_mercury
    (@orbital_day / @planet_array["Mercury"]).round(2) + 0.01
  end
  
  def on_venus
    (@orbital_day / @planet_array["Venus"]).round(2) + 0.01
  end
  
  def on_mars
  	(@orbital_day / @planet_array["Mars"]).round(2) + 0.01
  end
  
  def on_jupiter
    (@orbital_day / @planet_array["Jupiter"]).round(2) + 0.01
  end
  
  def on_saturn
  	(@orbital_day / @planet_array["Saturn"]).round(2) + 0.01
  end
  
  def on_uranus
    (@orbital_day / @planet_array["Uranus"]).round(2)
  end
  
  def on_neptune
  	(@orbital_day / @planet_array["Neptune"]).round(2) 
  end
end