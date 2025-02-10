# FFWPU Backend Server

## Setup to run project locally:

### Optional but recommended:

1. Install venv, if not installed

```
pip install venv
```

2. Initialize and activate Python virtual environment

```
python -m venv [YOUR_VIRTUAL_ENVIRONMENT_NAME]
YOUR_VIRTUAL_ENVIRONMENT_NAME/Scripts/activate
```

### Required

---

### 1. Install dependencies

```
pip install -r requirements.txt
```

---

### 2. Create a database named `ffwpu` in MySQL

---

### 3. Enter database credentials in [ffwpu_backend/settings.py](./ffwpu_backend/settings.py)

```
DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.mysql",
        "NAME": "ffwpu",
        "USER": "<your username here>",
        "PASSWORD": "<your password here>",
        "HOST": "localhost",
        "PORT": "3306",
    }
}
```

### 4. Start the server:

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
