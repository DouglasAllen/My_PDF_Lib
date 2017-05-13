# exercise_w0104.rb

# constants for conversion multipliers.
DAYMINUTES = 1440.0
# not a constant in case it changes.
year_days = 365

def year_minutes yeardays 
  DAYMINUTES * yeardays
end

p year_minutes year_days
