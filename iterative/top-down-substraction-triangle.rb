# To keep things simple, I'm considering the end of the iterations up to 50 rows
# or if we have a 0 (zero) as part of the last rows

def operate_triangle(head, left = 0)
  if head % 2 == 0
    left = head / 2
  else
    left = (head / 2) + 1
  end

  right = head - left
  [left, right]
end


def calculate(initial_head)
  heads = [[initial_head]]

  for i in 1..50
    break if heads.last.include?(0)   # we are done

    rows = []
    for j in 1..i
      if i == 1
        puts initial_head
      else
        left, right = operate_triangle(heads.last[j-1])

        if (heads.count % 2) == 1  # odd
          rows << left
          rows << right
        else
          if rows.count == 0
            rows << left
            rows << right
          else
            if (rows.count % 2) == 0 # even
              rows << right
            else
              rows << left
            end
          end
        end

        # Don't flush rows until is the last iteration in the row
        if (j+1) == i
          puts "#{rows}"
          heads << rows if rows.any?
          rows = []
        end
      end
    end
  end
end

# TEST
calculate(11)
