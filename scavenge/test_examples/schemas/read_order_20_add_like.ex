defmodule Examples.Schemas.Basic.AddLike do
  alias App.Schemas.Basic, as: Basic
  use TransformerTestSupport.Variants.Changeset

  build(
    module_under_test: Basic,
    examples: [
      # -------------------------------------------VALID-------------------
      ok: %{
        params: to_strings(
          age: 1,
          date: "2001-01-01"), 
      },
      error: %{
        params: like(:ok, except: [date: "1-1-1"])
      }
    ])
end
