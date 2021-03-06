Feature: quiz page

  As a user, I can see the quiz page for a course

  Background:
    Given a member user named "member-user"
    And a course named "5 Trends"
    And a video named "5 Trends Video"
    And a Quiz named "5 Trends Quiz"
    And two questions for the Quiz named "5 Trends Quiz"
    And two answers for each of the the questions for the quiz name "5 Trends Quiz"
    And a section for the course "5 Trends" with the quiz "5 Trends Quiz"
    And I log in as member user named "member-user"
    And I visit the "5 Trends" course page

  Scenario:
    When I go to the quiz page for "5 Trends Quiz"
    Then I see a link to start the quiz

  Scenario:
    When I go to the quiz page for "5 Trends Quiz"
    And I click on the link to start the quiz named "5 Trends Quiz"
    Then I see the first question for the quiz

  Scenario:
    When I go to the quiz page for "5 Trends Quiz"
    And I click on the link to start the quiz named "5 Trends Quiz"
    And I answer correctly all the questions for the quiz named "5 Trends Quiz"
    Then I see that I passed the quiz

  Scenario:
    When I go to the quiz page for "5 Trends Quiz"
    And I click on the link to start the quiz named "5 Trends Quiz"
    And I answer incorrectly some the questions for the quiz named "5 Trends Quiz"
    And I visit the "5 Trends" course page
    Then I see that that I did not pass the quiz
