defmodule Examples.Schemas.Basic.JustParams do
  alias App.Schemas.Basic, as: Basic
  use TransformerTestSupport.Variants.Changeset

  build(
    module_under_test: Basic,
    examples: [
      # -------------------------------------------VALID-------------------
      ok: %{
        params: to_strings(
          lock_version: 1,
          date: "2001-01-01"), 
      },
      error: %{
        params: to_strings(
          lock_version: 1,
          date: "1-1-1"),
      }
    ])
end
