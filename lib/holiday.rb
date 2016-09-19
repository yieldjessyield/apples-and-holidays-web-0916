require 'pry'

 holiday_hash = {
   :winter => {
     :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
   },
   :summer => {
     :fourth_of_july => ["Fireworks", "BBQ"]
   },
   :fall => {
     :thanksgiving => ["Turkey"]
   },
   :spring => {
     :memorial_day => ["BBQ"]
   }
 }

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
#  holiday_hash = {
#    :winter => {
#      :christmas => ["Lights", "Wreath"],
#      :new_years => ["Party Hats"]
#    },
#    :summer => {
#      :fourth_of_july => ["Fireworks", "BBQ"]
#    },
#    :fall => {
#      :thanksgiving => ["Turkey"]
#    },
#    :spring => {
#      :memorial_day => ["BBQ"]
#    }
#  }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter][:christmas] << supply

  holiday_hash[:winter][:new_years] << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

holiday_hash[season][holiday_name] = supply_array
holiday_hash
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)

  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holiday|
    puts "#{season}:".to_s.capitalize!
      holiday.each do |holiday_name, item|
       new_holiday_name = holiday_name.to_s.split("_").map {|h| h.capitalize!}
       new_item = item.join(", ")
        puts "  #{new_holiday_name.join(" ")}: #{new_item}"

      end
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
#   Winter:
#     Christmas: Lights, Wreath
#     New Years: Party Hats
#   Summer:
#     Fourth Of July: Fireworks, BBQ
#   etc.

#end
#all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holiday|

    holiday.each do |k,v|

     if v.include? 'BBQ'
      bbq_holidays << k
      end

    end

  end
bbq_holidays
#binding.pry
end


  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

#all_holidays_with_bbq(holiday_hash)

