from import_export import resources
from app.models import importexportdata


class importexportdata_resources(resources.ModelResource):
    def get_or_init_instance(self,instance_loader,row):
        importexportdata.bulk_create(self,
        batch_size=10000)  
        return self._meta.model(), True    

          # using_transactions, dry_run, raise_errors,

    class Meta:
        model = importexportdata
       
        fields = "__all__"
        use_bulk=True
        batch_size = 10000
        # skip_unchanged = True
        # report_skipped = False
        # force_init_instance = True