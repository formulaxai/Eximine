from django.db import models
from .choice import COUNTRIES_CHOICE
# Create your models here.
# adding manualy  library
from django.db import models
from django.contrib import admin
from django.contrib.auth.models import AbstractUser
from django.contrib.auth.models import User
from django.contrib.auth.base_user import BaseUserManager
from django.utils.translation import ugettext_lazy as _
from django.db.models.signals import post_save, pre_save
from django.dispatch import receiver
from django.conf import settings
from datetime import datetime as dt
import stripe
import datetime
from app.choice import *
from datetime import timedelta
from django.utils.timezone import now
# from django.contrib.gis import geoip
# from app.models import packages
# stripe.api_key = settings.STRIPE_SECRET_KEY
# from app.choice import *
today = datetime.date.today()
        
class packages(models.Model):
    add_choice = (
        ('yes', 'Yes'),
        ('no', 'No')
    )

    def __unicode__(self):
        return self.packageid
    
    packageid = models.AutoField(primary_key=True)
    plan_name = models.CharField(max_length=200)
    package_validity = models.PositiveIntegerField(null=True, default=0, help_text=_('In Days'))
    price = models.DecimalField(max_digits=65, decimal_places=2, null=True, default=0, help_text=_('In INR'))
    download_points = models.PositiveIntegerField(null=True, default=0)
    download_points_perday = models.PositiveIntegerField(null=True, default=0, blank=True)
    unlimited_data_access = models.PositiveIntegerField(help_text=_('In Days'), blank=True)
    searches = models.PositiveIntegerField(null=True, default=0)
    work_spaces = models.PositiveIntegerField(null=True, default=0, blank=True)
    work_spaces_validity = models.PositiveIntegerField(null=True, default=0, help_text=_('In Days'), blank=True)
    work_spaces_deletion = models.PositiveIntegerField(null=True, default=0, blank=True)
    shipment_limit_workspaces = models.PositiveIntegerField(null=True, default=0, blank=True)
    addon_points_facility = models.CharField(max_length=200, null=True, choices=add_choice, blank=True)
    hot_products = models.PositiveIntegerField(null=True, default=0, blank=True)
    hot_products_interval = models.PositiveIntegerField(null=True, default=0, help_text=_('In Days'), blank=True)
    hot_companies = models.PositiveIntegerField(null=True, default=0, blank=True)
    hot_companies_interval = models.PositiveIntegerField(null=True, default=0, help_text=_('In Days'), blank=True)
    allowed_users = models.PositiveIntegerField(null=True, default=0)
    is_active = models.BooleanField(default=True)
    modifydate = models.DateField(null=True, blank=True)
    modifytime = models.TimeField(null=True, blank=True)
    createtime = models.TimeField(null=True)
    createdate = models.DateField(null=True)

    class Meta:
        verbose_name_plural = "Packages"


class registrations(models.Model):
    add_choice = (
        ('Yes', 'Yes'),
        ('No', 'No')
    )

    # user    = models.OneToOneField(User,on_delete=models.CASCADE)
    # packages = models.ForeignKey(packages, on_delete=models.CASCADE)
    email = models.CharField(max_length=50)
    password = models.CharField(max_length=100)
    fullname = models.CharField(max_length=200)
    country_code = models.CharField(max_length=135, blank=True)
    phone_number = models.CharField(max_length=135, blank=True)
    companyname = models.CharField(max_length=200)
    user_type = models.CharField(max_length=100)
    user_type_other = models.CharField(max_length=100, null=True)
    
    packageid = models.PositiveIntegerField(null=True, default=0,)
    plan_name = models.CharField(max_length=200)
    package_validity = models.PositiveIntegerField(null=True, default=0, help_text=_('In Days'))
    price = models.DecimalField(max_digits=65, decimal_places=2, null=True, default=0, help_text=_('In INR'))
    download_points = models.PositiveIntegerField(null=True, default=0)
    download_points_total = models.PositiveIntegerField(null=True, default=0)
    download_points_perday = models.PositiveIntegerField(null=True, default=0, blank=True)
    download_points_perday_total = models.PositiveIntegerField(null=True, default=0, blank=True)
    unlimited_data_access = models.PositiveIntegerField(help_text=_('In Days'), blank=True)
    unlimited_data_access_date = models.DateField(null=True, blank=True)
    searches = models.PositiveIntegerField(null=True, default=0)
    searches_total = models.PositiveIntegerField(null=True, default=0)
    work_spaces = models.PositiveIntegerField(null=True, default=0, blank=True)
    work_spaces_validity = models.PositiveIntegerField(null=True, default=0, help_text=_('In Days'), blank=True)
    work_spaces_validity_date = models.DateField(null=True, blank=True)
    work_spaces_deletion = models.PositiveIntegerField(null=True, default=0, blank=True)
    shipment_limit_workspaces = models.PositiveIntegerField(null=True, default=0, blank=True)
    addon_points_facility = models.CharField(max_length=200, null=True, choices=add_choice, blank=True)
    hot_products = models.PositiveIntegerField(null=True, default=0, blank=True)
    hot_products_total = models.PositiveIntegerField(null=True, default=0, blank=True)
    hot_products_interval = models.PositiveIntegerField(null=True, default=0, help_text=_('In Days'), blank=True)
    hot_companies = models.PositiveIntegerField(null=True, default=0, blank=True)
    hot_companies_total = models.PositiveIntegerField(null=True, default=0, blank=True)
    hot_companies_interval = models.PositiveIntegerField(null=True, default=0, help_text=_('In Days'), blank=True)
    allowed_users = models.PositiveIntegerField(null=True, default=0)
    allowed_users_total = models.PositiveIntegerField(null=True, default=0)
    start_on = models.DateField(null=True, blank=True)
    expire_on = models.DateField(null=True, blank=True)

    is_active = models.BooleanField(default=True)
    modifydate = models.DateField(null=True, blank=True)
    modifytime = models.TimeField(null=True, blank=True)
    createtime = models.TimeField(null=True)
    createdate = models.DateField(null=True)

    class Meta:
        verbose_name_plural = "Registrations"
    # def __unicode__( self ) :
    #    return self.fullname
    # def __str__(self):
    #     return self.phone_number

class faqs(models.Model):
    
    def __unicode__(self):
        return self.faqid

    faqid = models.AutoField(primary_key=True)
    title = models.TextField(null=True)
    title_id = models.TextField(null=True, blank=True, editable=False)
    tagline = models.TextField(null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    priority = models.PositiveIntegerField(null=True, default=0, blank=True)
    status = models.CharField(default='active', max_length=200, choices=status_choice)
    modifydate = models.DateField(null=True, blank=True)
    modifytime = models.TimeField(null=True, blank=True)
    createtime = models.TimeField(null=True)
    createdate = models.DateField(null=True)
    
    class Meta:
        verbose_name_plural = "FAQs"

class countries(models.Model):
    
    def __unicode__(self):
        return self.countryid

    countryid = models.AutoField(primary_key=True)
    title = models.TextField(null=True)
    title_id = models.TextField(null=True, blank=True, editable=False)
    tagline = models.TextField(null=True, blank=True)
    country_code = models.CharField(max_length=200)
    description = models.TextField(null=True, blank=True)
    priority = models.PositiveIntegerField(null=True, default=0, blank=True)
    status = models.CharField(default='active', max_length=200, choices=status_choice)
    modifydate = models.DateField(null=True, blank=True)
    modifytime = models.TimeField(null=True, blank=True)
    createtime = models.TimeField(null=True)
    createdate = models.DateField(null=True)
    
    class Meta:
        verbose_name_plural = "countries"

class companies(models.Model):
    
    def __unicode__(self):
        return self.companyid
    
    companyid = models.AutoField(primary_key=True)
    title = models.TextField(null=True)
    title_id = models.TextField(null=True, blank=True, editable=False)
    tagline = models.TextField(null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    priority = models.PositiveIntegerField(null=True, default=0, blank=True)
    status = models.CharField(default='active', max_length=200, choices=status_choice)
    modifydate = models.DateField(null=True, blank=True)
    modifytime = models.TimeField(null=True, blank=True)
    createtime = models.TimeField(null=True)
    createdate = models.DateField(null=True)
    
    class Meta:
        verbose_name_plural = "Company Master"

class importexportdata (models.Model):
    
    csv_file = models.FileField()
    COUNTRY = models.TextField(choices=COUNTRIES_CHOICE, null=True, blank=True)
    TYPE = models.TextField(choices=CHOICE_TYPE, null=True, blank=True)
    DATE = models.TextField(null=True, blank=True)  # blank=True, null=True
    MONTH = models.TextField(null=True, blank=True) 
    YEAR = models.TextField(null=True, blank=True) 
    HS_CODE = models.TextField(null=True, blank=True)
    TWO_DIGIT = models.TextField(null=True, blank=True)
    FOUR_DIGIT = models.TextField(null=True, blank=True)
    HS_CODE_DESCRIPTION = models.TextField(null=True, blank=True)
    COMMODITY_DESCRIPTION = models.TextField(null=True, blank=True)
    UQC = models.TextField(null=True, blank=True)
    QUANTITY = models.TextField(null=True, blank=True)
    CURRENCY = models.TextField(choices=CURRENCY_CHOICE, null=True, blank=True)
    UNT_PRICE_FC = models.TextField(null=True, blank=True)
    INV_VALUE_FC = models.TextField(null=True, blank=True)
    UNT_PRICE_INR = models.TextField(null=True, blank=True)
    INVOICE_NO = models.TextField(null=True, blank=True)
    SB_NO = models.TextField(null=True, blank=True)
    BE_NO = models.TextField(null=True, blank=True)
    UNIT_RATE_WITH_FOB_INR = models.TextField(null=True, blank=True)
    UNT_RATE_WITH_DUTY_INR=models.TextField(null=True, blank=True)
    PER_UNT_FOB = models.TextField(null=True, blank=True)
    PER_UNT_DUTY_INR=models.TextField(null=True, blank=True)
    FOB_INR = models.TextField(null=True, blank=True)
    FOB_FC = models.TextField(null=True, blank=True)
    DUTY_INR=models.TextField(null=True, blank=True)
    FOB_USD = models.TextField(null=True, blank=True)
    DUTY_FC =models.TextField(null=True, blank=True)
    DUTY_PERCENTAGE = models.TextField(null=True, blank=True)
    EX_TOTAL_VALUE_INR=models.TextField(null=True, blank=True)
    ASS_VALUE_INR=models.TextField(null=True, blank=True)                # change the value of percentage in importer name % change percentage
    ASS_VALUE_USD=models.TextField(null=True, blank=True)            #  and change the / ki jagh _ underscore use kro importer
    ASS_VALUE_FC=models.TextField(null=True, blank=True)
    EXCHANGE_RATE = models.TextField(null=True, blank=True)
    EXPORTER_NAME=models.TextField(null=True, blank=True)
    IMPORTER_NAME = models.TextField(null=True, blank=True)
    EXPORTER_ADDRESS=models.TextField(null=True, blank=True)
    IMPORTER_ADDRESS = models.TextField(null=True, blank=True)
    COUNTRY_OF_ORIGIN = models.TextField(null=True, blank=True)
    PORT_OF_DISCHARGE=models.TextField(null=True, blank=True)
    MODE_OF_PORT =models.TextField(null=True, blank=True)
    PORT_OF_LOADING =models.TextField(null=True, blank=True)
    PORT_CODE = models.TextField(null=True, blank=True)
    IMPORTER_ID=models.TextField(null=True, blank=True)
    EXPORTER_ID =models.TextField(null=True, blank=True)
    IMPORTER_NAME=models.TextField(null=True, blank=True)
    EXPORTER_NAME=models.TextField(null=True, blank=True)
    IMPORTER_ADDRESS=models.TextField(null=True, blank=True)
    EXPORTER_ADDRESS=models.TextField(null=True, blank=True)
    IMPORTER_CITY_STATE =models.TextField(null=True, blank=True) 
    EXPORTER_CITY = models.TextField(null=True, blank=True)
    IMPORTER_PIN=models.TextField(null=True, blank=True)
    EXPORTER_PIN = models.TextField(null=True, blank=True)
    IMPORTER_PHONE=models.TextField(null=True, blank=True)
    EXPORTER_PHONE = models.TextField(null=True, blank=True)
    IMPORTER_EMAIL=models.TextField(null=True, blank=True)
    EXPORTER_EMAIL = models.TextField(null=True, blank=True)
    IMPORTER_CONTACT_PERSON=models.TextField(null=True, blank=True)
    EXPORTER_CONTACT_PERSON = models.TextField(null=True, blank=True)
    BE_TYPE=models.TextField(null=True, blank=True)
    CHA_NAME=models.TextField(null=True, blank=True)
    RECORD_ID = models.TextField(null=True, blank=True)
    
    priority = models.PositiveIntegerField(null=True, default=0, blank=True)
    status = models.CharField(default='active', max_length=200, choices=status_choice)
    modifydate = models.DateField(null=True, blank=True)
    modifytime = models.TimeField(null=True, blank=True)
    createtime = models.TimeField(null=True)
    createdate = models.DateField(null=True)

    def get_fields(self):
        # list of some excluded fields
        excluded_fields = ['id', 'pk', 'priority', 'status', 'modifydate', 'modifytime', 'createtime', 'createdate']

        # getting all fields that available in `importexportdata` model,
        # but not in `excluded_fields`
        field_names = [field.name for field in importexportdata._meta.get_fields() 
                       if field.name not in excluded_fields]
        
        values = []
        for field_name in field_names:
            # get specific value from instanced object.
            # and outputing as `string` value.
            values.append('%s' % getattr(self, field_name))

        # joining all string values.
        # return ' | '.join(values)

        return ({'field_names':field_names, 'values':values})
    
    class Meta:
        verbose_name_plural = "Import/Export Data"
    
    # def __unicode__( self ) :
    #    return self.HS_CODE
    # def __str__(self):
    #     return self.TYPE