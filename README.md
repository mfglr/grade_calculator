<h3>A json format should be following</h3>


<code>
  [
    { "id" : 1, "score" : 5 },
    { "id" : 2, "score" : 98 },
    { "id" : 3, "score" : 100 },
    { "id" : 4, "score" : 45 },
    { "id" : 5, "score" : 10 },
    { "id" : 6, "score" : 65 }
]
</code>

<code>

<h1>Examples</h1>
  
#include grade calculator
require "grade_calculator"
  
grades = GradeCalculator.calculate("grades.json")
  
grades.each do |grade|
      puts grade.to_s
end

</code>

<h3>Output</h3>

<code>
  1 => FF: 5
  2 => AA: 98
  3 => AA: 100
  4 => FF: 45
  5 => FF: 10
  6 => DC: 65
</code>


<h1>Exceptions</h1>

<p>
  The following data will cause an error to be thrown.
  The message of the errors:
</br>
  Invalid score(string_value)!
</br>
  Invalid score(-1)!
</br>
  Invalid score(101)!
</p>
<code>
  [
    { "id" : 1, "score" : "string_value" },
]
</code>

<code>
  [
    { "id" : 1, "score" : "-1" },
]
</code>

<code>
  [
    { "id" : 1, "score" : "101" },
]
</code>


