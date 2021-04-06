"""
Django settings for eximine project.

Generated by 'django-admin startproject' using Django 3.1.6.

For more information on this file, see
https://docs.djangoproject.com/en/3.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.1/ref/settings/
"""

from pathlib import Path
import os
# Build paths inside the project like this: BASE_DIR / 'subdir'.
# BASE_DIR = Path(__file__).resolve().parent.parent
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '^$696l7^vv7(m9i8u_^mxjtxgk1ay#1-*-!gk9(c72f9s&hc_)'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS =  ["127.0.0.1", "localhost", "demo.dalyne.in", "*"]

# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'app',
    'import_export'
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'eximine.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates'),],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

TEMPLATE_LOADERS = ('django.template.loaders.filesystem.Loader',
    'admin_tools.template_loaders.Loader',
    'django.template.loaders.cached.Loader',
    'django.template.loaders.app_directories.Loader',
    'django.template.loaders.eggs.Loader', )

WSGI_APPLICATION = 'eximine.wsgi.application'

# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.sqlite3',
#         'NAME': BASE_DIR / 'db.sqlite3',
#     }
# }

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'eximine',
        # 'USER': 'root',
        # 'PASSWORD': 'Biala#96',
        'USER': 'root',
        'PASSWORD': '',
        # 'USER': 'eximine',
        # 'PASSWORD': 'jU%hYjU2(jY&dE2',
        'HOST': 'localhost',
        'PORT': '3306',
        'OPTIONS': {
            "init_command": "SET sql_mode='STRICT_TRANS_TABLES'",
        }

    }
}

# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
# https://docs.djangoproject.com/en/3.1/topics/i18n/

LANGUAGE_CODE = 'en-us'
TIME_ZONE = 'UTC'
USE_I18N = True
USE_L10N = True
USE_TZ = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/

STATIC_URL = '/static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static')
]
STATIC_ROOT = '/static/'
# STATIC_ROOT = os.path.join(BASE_DIR, 'static')

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

from app.email_info import *

EMAIL_USE_TLS = EMAIL_USE_TLS
EMAIL_HOST = EMAIL_HOST
EMAIL_HOST_USER = EMAIL_HOST_USER
EMAIL_HOST_PASSWORD = EMAIL_HOST_PASSWORD
EMAIL_PORT = EMAIL_PORT

KEEP_LOGGED_KEY = 'keep_me_logged' # session key
KEEP_LOGGED_DURATION = 365         # in days

LOGIN_URL = 'login'
LOGIN_REDIRECT_URL = 'dashboard'
LOGOUT_URL = 'logout'
LOGOUT_REDIRECT_URL = 'login'

TEMPLATE_DIR = os.path.join(BASE_DIR, "templates")

if DEBUG:
    STRIPE_PUBLISHABLE_KEY = 'pk_test_51IP3d3KLJ6tifEb4yvXLej7bndrAcOsLu8xddRWyFXDewNLELJQiFciYjrCMoUQTUYZMlMtYNz0GNOvg2Y0hGBhb00bt0HdAZk'
    STRIPE_SECRET_KEY = 'sk_test_51IP3d3KLJ6tifEb49dUI23Pom1bHnzwaHVmOCjobjA0YstYyPUjVsC0Uz4y7TK3D9sKdIUP8oNMbPoC1CG7CcOXA00ZkJ92mIR'

else:
    # live keys
    STRIPE_PUBLISHABLE_KEY = 'pk_test_51IP3d3KLJ6tifEb4yvXLej7bndrAcOsLu8xddRWyFXDewNLELJQiFciYjrCMoUQTUYZMlMtYNz0GNOvg2Y0hGBhb00bt0HdAZk'
    STRIPE_SECRET_KEY = 'sk_test_51IP3d3KLJ6tifEb49dUI23Pom1bHnzwaHVmOCjobjA0YstYyPUjVsC0Uz4y7TK3D9sKdIUP8oNMbPoC1CG7CcOXA00ZkJ92mIR'

STATE_ID = 1

# AUTH_USER_MODEL = 'app.User'
VERIFY_EXPIRE_DAYS = 3

# PAYSTACK_SECRET_KEY = config('PAYSTACK_KEY')

IMPORT_EXPORT_USE_TRANSACTIONS = True
IMPORT_EXPORT_SKIP_ADMIN_LOG = True

DATA_UPLOAD_MAX_NUMBER_FIELDS = 1024880

PAYMENT_VARIANTS = {
    'razorpay': ('django_payments_razorpay.RazorPayProvider', {
        'public_key': 'rzp_live_YWmjEUBpECXiH1',
        'secret_key': 'Q9A4cAR5bFL5jsYH457nA94U'
    })
}