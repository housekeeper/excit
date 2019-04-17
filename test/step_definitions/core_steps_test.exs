 defmodule StepDefinitions.CoreSteps do
  use Cabbage.Feature, async: false, file: "case.feature"

  setup do
    params_factory = %{}
  end

  # run mix test test/core_steps_test.exs to generate the regex methods from the feature file
  # pointed by on line 2, "case.feature"

end
