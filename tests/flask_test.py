from cat_service.server import app
import pytest
import cat_service


def test_root_returns_hello_world():
    client = cat_service.server.app.test_client()
    response = client.get('/')
    assert response.data == b'Hello World!'
