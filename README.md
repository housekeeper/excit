# Excit - Elixir Continuous Integration Tools

Excit is a tool set providing packages for testing, code analysis and standards, security checks and continuous integration

## Installation

```elixir
@deps [
  excit: "~> 0.1.0"
]
```

## Dependencies

### Credo

We use Credo as a linter and styleguide which ensures code standards throughout all our projects.  
It also forces to document the code which can be tests in Elixir (doctests) which forces developers to test their code.

#### Configuration

In `.credo.exs` file which can be either at the root of your project or the config/ folder.

examples:  
`strict` set to `true` forces credo to be used as a style guide and not only a linter.  
`check_for_updates` set to false avoids credo to check for updates every times it runs, useful when in active development on both sides.  
`checks` provides functions to customize the linter and style guide.

#### Run

`$ mix credo` or `$ mix credo` to run for the entire project.  
`$ mix credo list` to group by file.  
`$ mix credo <path/to/file>:<line_number>` to run for a specific file at a specific line.
