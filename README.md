# FFWPU Backend

## Local Setup:

1. Clone repository
   ```
   git clone https://github.com/chaotic-braindead/ffwpu_backend.git
   ```
2. Create a virtual environment
   ```
   cd ffwpu_backend
   python -m venv venv
   ```
3. Install requirements
   ```
   pip install -r requirements.txt
   ```
4. Change credentials in [settings.py](ffwpu_backend\ffwpu_backend\settings.py)
   ```
   DATABASES = {
       "default": {
           "ENGINE": "django.db.backends.mysql",
           "NAME": "ffwpu_db",
           "USER": <your username>,
           "PASSWORD": <your password>,
           "HOST": "localhost",
           "PORT": "3306",
       }
   }
   ```
5. Create and clone database
   ```
   mysql -u <username> -p -e "CREATE DATABASE ffwpu_db;"
   mysql -u <username> -p ffwpu_db < ffwpu_db.sql
   ```
6. Run server
   ```
   cd ffwpu_backend
   python manage.py runserver
   ```

## NOTE: A default admin credentials is already created within the db dump:

username: `admin`  
password: `admin`
