import requests

from pytest_bdd import (
    scenarios, given, when, then
)


@given('a <url>')
def request_ctx(url):
    return dict(url=url)


@when('I request GET')
def request_get(request_ctx):
    request_ctx['response'] = requests.get(
        request_ctx['url']
    )


@then('response status should be <status>')
def assert_response_status(request_ctx, status):
    assert request_ctx['response'].status_code == \
        requests.status_codes.codes[status]


scenarios(
    'http_get.feature'
)
