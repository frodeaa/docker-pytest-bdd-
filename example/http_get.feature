Feature: HTTP GET
    Example illustrating use of docker-pytest-bdd

Scenario: fetch urls
    Given a <url>
    When I request GET
    Then response status should be <status>

    Examples:
    | url                     | status      |
    | https://httpstat.us/200 | OK          |
    | https://httpstat.us/400 | BAD_REQUEST |
