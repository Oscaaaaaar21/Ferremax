#se encarga de converit los datos
from .models import*
from rest_framework import serializers



class ProductoSerializers(serializers.ModelSerializer):

   #agregamos las fk 
    class Meta:
        model = Producto
        fields = '__all__'



class TipoProductoSerializers(serializers.ModelSerializer):
    class Meta:
        model = tipoProducto
        fields = '__all__'


class TipoProductoSerializers(serializers.ModelSerializer):
    class Meta:
        model = tipoProducto
        fields = '__all__'

class TipoProductoSerializers(serializers.ModelSerializer):
    class Meta:
        model = tipoProducto
        fields = '__all__'

class ContactoSerializers(serializers.ModelSerializer):
    class Meta:
        model = Contacto
        fields = '__all__'

class CompraSerializers(serializers.ModelSerializer):
    class Meta:
        model = Compra
        fields = '__all__'     
#serializer lo evia el user el cual lo carga en url