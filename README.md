# FFWPU Backend Server

## Setup

### Optional but recommended

---

Install venv, if not installed

```
pip install venv
```

Initialize and activate Python virtual environment

```
python -m venv [YOUR_VIRTUAL_ENVIRONMENT_NAME]
YOUR_VIRTUAL_ENVIRONMENT_NAME/Scripts/activate
```

### Required

---

Install dependencies

```
pip install -r requirements.txt
```

## Start the server:

```
python manage.py runserver
```

---

<br />
<br />

# FFWPU Backend Documentation

## LOGIN (api/login)

To login as admin, perform a POST request to api/login with the following in the body of the request:

1. username
2. password

**Example body:**

```
{"username": "admin", "password", "admin"}
```

### Response: This method returns a token that must be passed to the Authorization header of all succeeding requests. You can store this token in local storage for later use.

### Your request headers should look something like:

```
{"Authorization": "Token <Your token>"}
```

## NOTE: THE REMAINING METHODS REQUIRE AN AUTHORIZATION TOKEN TO WORK

## More API documentations:

- [Members](./members/README.md)
- Blessings (Documentation soon)
- Donations (Documentation soon)
- Worship (Documentation soon)
