Background: sales in database
 
  Given the following sales exist:


  | good     | price | date       | city    |
  | Mouse    | 10    | "2015-1-1" | Cairo   |
  | Screen   | 700   | "2015-1-7" | Alex    |
  | CPU      | 4000  | "2015-1-9" | Aswan   |
  | Keybaord | 150   | "2015-1-7" | Mansoura|
 Write one test that checks that clicking on the checkbox actually gets the data of the desired city 


Scenario: clicking on the checkbox actually gets the data of the desired city
  When I press the checkbox for "Alex"
  Then  I should see /"Alex"/
  AND I should not see /"Mansoura"/

