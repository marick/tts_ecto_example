defmodule App.Schemas.Basic.ValidationTest do
  use App.Case
  alias Examples.Schemas.Basic.Validation.Tester

  test "first version" do 
    Tester.validate(:ok)
    Tester.validate(:bad_date)
  end

  test "second version" do 
    Tester.check_everything
  end
  
end
