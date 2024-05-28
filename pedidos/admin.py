from django.contrib import admin

from .models import EntregaPedido, Pedido, LineaPedido


# Register your models here.

admin.site.register([Pedido, LineaPedido, EntregaPedido])