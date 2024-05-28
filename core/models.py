from django.db import models
from django.contrib.auth.models import User
# Create your models here. 


opciones_consulta = [
        [0, "Consulta"],
        [1, "Reclamo"],
        [2, "Sugerencia"],
        [3, "Felicidades"]
    ]
#TABLA TIPO PRODUCTO

class tipoProducto(models.Model):
    descripcion = models.CharField(max_length=50)

    def __str__(self):
        return self.descripcion

#TABLA PRODUCTO

class Producto(models.Model):
    nombre = models.CharField(max_length=50)
    precio = models.IntegerField()
    stock = models.IntegerField()
    tipo = models.ForeignKey(tipoProducto, on_delete=models.CASCADE)
    imagen = models.ImageField(upload_to="productos", null=True)

    def __str__(self):
        return self.nombre

   

class Contacto(models.Model):
    nombre = models.CharField(max_length=50)
    correo = models.EmailField()
    tipo_consulta = models.IntegerField(choices=opciones_consulta)
    mensaje = models.TextField()
    avisos = models.BooleanField()

    def __str__(self):
        return self.nombre 

class Compra(models.Model):
    fecha = models.DateTimeField(auto_now_add=True)
    usuario_id = models.IntegerField()
    

    def __str__(self):
        return self.nombre 



