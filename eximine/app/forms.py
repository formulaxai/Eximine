from django import forms

from app.models import registrations, importexportdata

class profile_form(forms.ModelForm):
    class Meta:
        model = registrations
        fields= "__all__"

class importexportdata_Form(forms.Form):

  csv_file = forms.FileField()
  class Meta:

    model = importexportdata
    fields = ("COUNTRY","csv_file",)