# Simple Django App

This is a simple, minimal Django application intended to help you understand the core concepts of working with Django.

## Prerequisites

Make sure Python 3, `pip`, and the Python virtual environment package are installed.

### Ubuntu/Debian

Update your package index:

```bash
sudo apt update
```

Install Python, pip, and the virtual environment package:

```bash
sudo apt install -y python3 python3-pip python3-venv
```

Verify the installation:

```bash
python3 --version
pip3 --version
```

---

## Clone the Repository

Clone the project:

```bash
git clone https://github.com/instalab-repo/simple-django-app.git
```

Navigate to the Django project:

```bash
cd simple-django-app/cool_counters
```

---

## Create a Virtual Environment

Create a Python virtual environment:

```bash
python3 -m venv .venv
```

Activate it:

```bash
source .venv/bin/activate
```

Your shell prompt should now indicate that the virtual environment is active.

---

## Install Project Dependencies

Install the required Python packages:

```bash
pip install -r requirements.txt
```

If this is the first time setting up the project and `requirements.txt` does not yet exist, install Django manually:

```bash
pip install django
```
 
 
Then generate the dependency file:

```bash
pip freeze > requirements.txt
```

Future installations only require:

```bash
pip install -r requirements.txt
```

---

## Apply Database Migrations

Create or update the SQLite database:

```bash
python3 manage.py migrate
```

---

## Run the Development Server

Start the Django development server:

```bash
python3 manage.py runserver
```

---

## Access the Application

Open your browser and navigate to:

```
http://127.0.0.1:8000
```

---

## Deactivate the Virtual Environment

When you're finished working on the project, exit the virtual environment:

```bash
deactivate
```