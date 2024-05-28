from django.contrib import admin
from .models import *

# Register your models here.

class ProductoAdmin(admin.ModelAdmin):
    list_display = ['nombre','precio','stock','tipo']
    search_fields = ['nombre']
    list_per_page = 1
    list_editable = ['precio']
    list_filter = ['tipo']
admin.site.register(tipoProducto)
admin.site.register(Producto, ProductoAdmin)
admin.site.register(Contacto)