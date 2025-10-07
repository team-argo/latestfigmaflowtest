@ContentDelivery @InnovationStories @Research
Feature: Research and Innovation Content Showcase

  As a site visitor,
  I want to easily discover and view stories about research and innovation,
  So that I can learn about the organization's latest developments.

  Background:
    # Preconditions related to the site structure and data availability
    Given the Content Management System (CMS) has at least 15 approved "Innovation Story" entries published
    And the site infrastructure is operational
    And the user is accessing the feature via a standard web browser

  @ContentIndex
  Scenario: Successful Display of the Research & Innovation Index Page

    Given a user navigates to the dedicated "Research Initiatives and Innovation Stories" landing page
    When the page loads successfully
    Then the page title should accurately reflect "Research and Innovation Stories"
    And a prominent call-to-action or introduction text related to the content should be visible
    And a paginated list of the most recent stories should be displayed
    And the default view should show a minimum of 10 stories per page
    And each displayed story snippet should include:
      | Element             | Requirement                       |
      | Story Title         | Must be a clickable link          |
      | Publication Date    | Must be clearly visible           |
      | Brief Summary/Teaser| Must be present (max 250 characters) |
      | Featured Image/Icon | Must be correctly rendered        |

  @StoryDetail
  Scenario: Viewing the Full Details of a Specific Innovation Story

    Given the user is viewing the Research & Innovation Index Page
    And a specific story titled "Breakthrough in Quantum Computing" is displayed
    When the user clicks on the link for "Breakthrough in Quantum Computing"
    Then the dedicated story detail page should load successfully
    And the page URL should reflect the story title (SEO-friendly slug)
    And the full, uncropped primary content should be rendered
    And high-resolution media (e.g., images or embedded video) associated with the story should load without errors
    And the full list of relevant authors and contributors should be displayed
    And sharing options (e.g., Twitter, LinkedIn, Email) should be present and functional

  @Filtering
  Scenario Outline: Filtering Stories by Theme and Category

    Given the user is on the Research & Innovation Index Page
    And the filtering sidebar/widget is visible
    When the user selects the category filter "<Category>"
    Then only stories tagged with "<Expected_Result_Tag>" should be displayed
    And the total count of displayed stories should match the count for the "<Expected_Result_Tag>" category
    But stories tagged only with other categories should not be visible

    Examples:
      | Category              | Expected_Result_Tag |
      | Artificial Intelligence | AI                  |
      | Environmental Science | Sustainability      |
      | Health and Medicine   | Biomedicine         |

  @SearchFunctionality
  Scenario: Searching for Specific Keywords within Stories

    Given the user is viewing the Research & Innovation Index Page
    And the global search bar is accessible
    When the user enters the search term "patents filed 2024"
    And the user executes the search
    Then the results page should display all stories containing the exact phrase "patents filed 2024"
    And the search results should highlight the keyword where it appears in the story snippet
    And the results should be sorted by relevance or publication date

  @Accessibility
  Scenario: Ensuring Content Accessibility Standards are Met

    Given the dedicated Research & Innovation section page has loaded
    When the page is audited using accessibility tools (e.g., WAVE, Axe)
    Then all images and media must have descriptive alternative (alt) text defined
    And the color contrast ratio for text and backgrounds must meet WCAG 2.1 AA standards
    And navigation elements must be fully accessible via keyboard input (tab key)