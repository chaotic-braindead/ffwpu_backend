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

### 3. import [ffwpu.sql](ffwpu.sql)

```
mysql -u username -p ffwpu < ffwpu.sql
```

### 4. Enter database credentials in [ffwpu_backend/settings.py](./ffwpu_backend/settings.py)

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

### 5. Create a superuser account (this will be your admin account)

```
python manage.py createsuperuser
```

### 6. Start the server:

```
python manage.py runserver
```

---

<br />
<br />

# FFWPU Backend Endpoints Documentation

## LOGIN (api/login)

To login as admin, perform a POST request to api/login with the following in the body of the request:

1. username
2. password

**Example body:**

```
{"username": "admin", "password", "admin"}
```

### Response: This endpoint returns an access token and a refresh token.

- The **access token** must be passed to the Authorization header of all succeeding requests. This token expires 60 minutes after it was requested.
- The **refresh token** is used to generate a new access token when it expires. This token expires 1 day after it was requested. After this, the user will need to login again. You can store these tokens in local storage for later use.

## To refresh your access token: (api/refresh-token)

Perform a **POST** request to api/refresh-token with your refresh token in the body of the request:

```
{"refresh": "<your token here>"}
```

## NOTE: THE REMAINING METHODS REQUIRE AN AUTHORIZATION TOKEN TO WORK

### Your request headers should look something like:

```
{"Authorization": "Bearer <Your token>"}
```

## ADD ADMIN (api/add-admin)

To add another admin account, perform a **POST** request to api/add-admin with the following in the body of the request:

1. username
2. email
3. password

**Example body:**

```
{
    “username”: “admin1”,
    “email”: admin@admin.com,
    “password”: “password”
}
```

### Response: This endpoint returns a message confirming that the user is created. Otherwise, an error along with a message is returned.

---

## More API documentations:

- [Members](./members/README.md)
- Blessings (Documentation soon)
- Donations (Documentation soon)
- Worship (Documentation soon)
