+++
date = '2025-08-13T15:50:41+03:00'
draft = true
title = 'How to Write a Good Unit Test'
+++

In this post, I'd like to share a few guidelines for creating maintainable unit tests.

# As you name the boat, so it will sail!

Test names are crucial because unclear names force developers to dive into the implementation.

When I read the test name, I'd like to get the answers to all of these questions:

- What state does it test?
- What logic does it verify?
- What outcome should I expect?

If I build the test name from the answers to these questions, I can be confident that readers will understand my code correctly.

**Example:**

```/dev/null/example.py#L1-5
# Bad: unclear what this test is doing
def test_user():
    pass

# Good: clearly describes state, logic, and expected outcome
def test_should_return_error_when_email_invalid():
    pass
```

# Keep it Simple!

When I need to modify a test or do anything that requires diving into the body, I'd like to read a clear implementation. What does this mean?

- The more lines of code the test body includes, the more complicated the test will be.
- Split the body into steps: arranging the necessary setup, acting on the system under test, and asserting the expected outcomes to verify correctness (AAA pattern).
```example.py
def test_calculate_total_with_tax():
    # Arrange
    items = [{"price": 10, "quantity": 2}]
    tax_rate = 0.1

    # Act
    result = calculate_total_with_tax(items, tax_rate)

    # Assert
    assert result == 22.0
```

- Remove all branch statements from the test body; make the test straightforward!

```example.py
# Bad: test with branch logic
def test_user_validation():
    user = create_user("john@email.com")
    if user.is_admin:
        assert user.can_delete_posts == True
    else:
        assert user.can_delete_posts == False

# Good: split into two focused tests
def test_admin_user_can_delete_posts():
    admin_user = create_admin_user("admin@email.com")
    assert admin_user.can_delete_posts == True

def test_regular_user_cannot_delete_posts():
    regular_user = create_regular_user("user@email.com")
    assert regular_user.can_delete_posts == False
```

# Fast and Furious!

A unit test's purpose is to verify logic implementation without external dependencies. There should be many unit tests for your module to cover all common and edge cases. This requires speed - I'm sure no programmer wants to wait several minutes for unit tests to run after each code modification, which they must do to ensure their changes are correct.
