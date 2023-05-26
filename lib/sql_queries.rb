def selects_all_female_bears_return_name_and_age
  <<-SQL
    SELECT
      bears.name,
      bears.age
    FROM
      bears
    WHERE
      sex='F';
  SQL
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  <<-SQL
    SELECT
      bears.name
    FROM
      bears
    ORDER BY 
      name ASC
  SQL
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  <<-SQL
    SELECT
      bears.name,
      bears.age
    FROM
      bears
    WHERE
      alive = 1;
    ORDER BY
      age ASC
  SQL
end

def selects_oldest_bear_and_returns_name_and_age
  <<-SQL
    SELECT
      bears.name,
      bears.age
    FROM
      bears
    WHERE
    (age = (select MAX(age) FROM bears)) AND (name<>'null') 
  SQL
end

def select_youngest_bear_and_returns_name_and_age
  <<-SQL
    SELECT
      bears.name,
      bears.age
    FROM
      bears
    WHERE
    age = (select MIN(age) FROM bears)
  SQL
end
