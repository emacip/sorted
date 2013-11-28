# Option 1
class SortedIps < Array

  def initialize(*args)

    #TODO: check that every element in args is a string IP

    super args
    sort! do |ipa, ipb|
      ipa_octects = ipa.split('.')
      ipb_octects = ipb.split('.')
      4.times do |i|
        comparison = ipa_octects[i].to_i <=> ipb_octects[i].to_i
        break comparison unless comparison == 0
      end
    end
  end

end

# SortedIps.new('201.1.1.2', '1.1.1.1', '34.12.12.12') => ["1.1.1.1", "34.12.12.12", "201.1.1.2"]


# Option 2
class Array

  def ips_sort
    sort do |ipa, ipb|
      ipa_octects = ipa.split('.')
      ipb_octects = ipb.split('.')
      4.times do |i|
        comparison = ipa_octects[i].to_i <=> ipb_octects[i].to_i
        break comparison unless comparison == 0
      end
    end
  end

end

# ['201.1.1.2', '1.1.1.1', '34.12.12.12'].ips_sort => ["1.1.1.1", "34.12.12.12", "201.1.1.2"]
# [1,2,3].ips_sort => NoMethodError: private method `split' called for 1:Fixnum