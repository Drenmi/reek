Feature: Resiliency regarding incomprehensible sources
  In order to not have Reek crash on incomprehensible sources
  As a user
  I want Reek to just skip this source and print out a helpful error message

  @wip
  Scenario: Incomprehensible source
    Given a smelly file called 'smelly.rb'
    And a corrupt file called 'corrupt.rb'
    When I run reek corrupt.rb smelly.rb
    Then it reports the error "TODO"
    And it reports:
    """

    """
