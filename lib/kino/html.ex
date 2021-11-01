defmodule Kino.HTML do
  @moduledoc """
  A widget for rendering HTML.

  ## Examples

      content = "<a href='link'>example</a>"
      Kino.HTML.new(content)
  """

  @enforce_keys [:content]

  defstruct [:content]

  @type t :: %__MODULE__{
          content: binary()
        }
  @doc """
  Wraps the given binary content into the html struct.
  """
  @spec new(binary()) :: t()
  def new(content) do
    %__MODULE__{content: content}
  end
end
