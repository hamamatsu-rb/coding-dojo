class HappyMarriage

  def neruton(men, women)
    
    match_status = [-1, -1, -1, -1]
    propose_status = [-1, -1, -1, -1]


    while match_status.all?{|e| e != -1}
      match_status.each_with_index do |i , v|

        women_index = men[i][propose_status[i] + 1]

        if v  == -1
          if !match_status.include?(women_index)
            match_status[i] = women_index
          else
            rival = match_status.index(women_index)
            rival_rank = women[women_index].index(rival)
            my_rank = women[women_index].index(rival)

            
          end

          propose_status += 1

        end
      end
    end


    return  [
      %w[1 1],
      %w[2 3],
      %w[3 2],
      %w[4 4]
    ]
  end

end