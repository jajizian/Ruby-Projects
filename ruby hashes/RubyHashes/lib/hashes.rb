# RubyHashes
# Part I
def array_2_hash emails, contacts
    
    contactHash = {}
    count = 0
    
    if emails[0] == nil
            return contacts
    else
        contacts.each do |key, value|
            newKey = :"#{key}"
            contactHash[newKey] = emails[count]
            count+=1
         end
    end
    
    return contactHash
end



# Part II
def array2d_2_hash contact_info, contacts
    
    contactHash = {}
    count = 0
    
    if contact_info[0][0] == nil
        return contacts
    end
    
    contacts.each do |key, value|
        newKey = :"#{key}"
        contactHash[newKey] = {:email => contact_info[count][0], :phone => contact_info[count][1]}
        count+=1
    end
    
    return contactHash
end

# Part III
def hash_2_array contacts
    
    emailArr = []
    phoneArr = []
    nameArr = []
    finalArr = []
    
    contacts.each do |key, value|
        newKey = :"#{key}"
        
        emailArr << contacts[newKey][:email]
        phoneArr << contacts[newKey][:phone]
        nameArr << "#{key}"
    end
    
    finalArr << emailArr << phoneArr << nameArr
        
        return finalArr
end
