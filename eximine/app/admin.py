from django.contrib import admin
from app.models import *
from app.resources import importexportdata_resources
from import_export.admin import ImportExportModelAdmin


# Register your models here.

@admin.register(registrations)
class registrationsModelAdmin(admin.ModelAdmin):
	list_display = ('fullname','phone_number','companyname','user_type','createdate')
	list_search_fields = ('fullname','phone_number','companyname','user_type','createdate')

#from django.contrib import admin

@admin.register(packages)
class packagesModelAdmin(admin.ModelAdmin):
    exclude = ('packageid', )
    def get_list_display(self, request):
        return [field.name for field in self.model._meta.concrete_fields]
    # list_display = ('packageid','plan_name','package_validity','download_points','unlimited_data_access','work_spaces','searches','work_spaces_validity','work_spaces_deletion','shipment_limit_workspaces','addon_points_facility','hot_products','hot_products_interval','hot_companies','hot_companies_interval','allowed_users')
    # list_search_fields = ('packageid','plan_name','package_validity','download_points','unlimited_data_access','work_spaces','searches','work_spaces_validity','work_spaces_deletion','shipment_limit_workspaces','addon_points_facility','hot_products','hot_products_interval','hot_companies','hot_companies_interval','allowed_users')


class importexportdata_admin(admin.ModelAdmin):
    change_list_template = 'admin/change_list_btn.html'
    import_template_name = 'upload_csv.html'
    # list_display = ('__all__',)
    def get_list_display(self, request):
        return [field.name for field in self.model._meta.concrete_fields]

# Register your models here.

admin.site.register(importexportdata, importexportdata_admin)

@admin.register(faqs)
class faqsModelAdmin(admin.ModelAdmin):
	list_display = ('title','description','status','createdate')
	list_search_fields = ('title','description','status','createdate')
    # readonly_fields = ('user_ip')

@admin.register(countries)
class countriesModelAdmin(admin.ModelAdmin):
	list_display = ('title','description','status','createdate')
	list_search_fields = ('title','description','status','createdate')

@admin.register(companies)
class companiesModelAdmin(admin.ModelAdmin):
	list_display = ('title','description','status','createdate')
	list_search_fields = ('title','description','status','createdate')

# admin.site.register(Membership)
# admin.site.register(UserMembership)
# admin.site.register(Model_choice)
# admin.site.register(Subscription)

