defmodule Excit.FeatureCase do
  @moduledoc """
  This module defines the test case to be used by wallaby
  """
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      import Excit.Router.Helpers
    end
  end

  setup _tags do
    {:ok, session} = Wallaby.start_session()
    {:ok, session: session}
  end
end
