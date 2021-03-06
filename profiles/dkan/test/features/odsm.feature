# time:0m44.59s
@api @disablecaptcha
Feature: Open Data Schema Map

@odsm_00
Scenario: Dummy test
Given I am on the homepage

@odsm_01 @api @fixme
Scenario: ODSM data.json 1.1 mapping
  Given I am logged in as a user with the "administrator" role
  And I go to "admin/config/services/odsm/edit/data_json_1_1"
  Then the "Homepage URL (landingPage)" field should contain "[node:field-landing-page:url] || [node:url]"

@odsm_02 @api
  Scenario: ODSM pagination
    Given I am logged in as a user with the "administrator" role
    And I go to "admin/dkan/datasets_per_page"
    And I fill in "edit-datasets-per-page" with "3"
    Then I press "Save configuration"
    Then I should see "The configuration options have been saved"
