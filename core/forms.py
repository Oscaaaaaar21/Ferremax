from django import forms

from pedidos.models import EntregaPedido, Pedido
from .models import *
from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
class ContactoForm(forms.ModelForm):

    
    class Meta: 
        model = Contacto
        fields = '__all__'

class ProductoForm(ModelForm):

    nombre = forms.CharField(min_length=4,widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    precio = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Precio"}))
    stock = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Stock"}))
    descripcion = forms.CharField(min_length=10,max_length=200,widget=forms.Textarea(attrs={"rows":4}))

    class Meta:
        model = Producto
        #fields = ['nombre','precio','stock','tipo']
        fields = '__all__'

        widgets = {
            'vencimiento' : forms.SelectDateWidget(years=range(1940,2024))
        }




class DonacionForm(forms.Form):
    Email = forms.EmailField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Email"}))
    Monto = forms.IntegerField(label='Monto a Donar' , min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Monto que desea donar (USD)"}))




class CustomUserCreationForm(forms.Form):
    username = forms.CharField(label='Usuario', min_length=4, max_length=150)
    first_name = forms.CharField(label='Nombre' , min_length=0, max_length=150)
    last_name = forms.CharField(label='Apellido' , min_length=0, max_length=150)

    email = forms.EmailField(label='Email')
    password1 = forms.CharField(label='Contraseña', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirmar Contraseña', widget=forms.PasswordInput)

    def clean_username(self):
        username = self.cleaned_data['username'].lower()
        r = User.objects.filter(username=username)
        if r.count():
            raise  ValidationError("Usuario ya existe")
        return username
    

    def clean_first_name(self):
        username = self.cleaned_data['first_name'].lower()
        r = User.objects.filter(username=username)
        return username
    
    def clean_last_name(self):
        username = self.cleaned_data['last_name'].lower()
        r = User.objects.filter(username=username)
        return username

    def clean_email(self):
        email = self.cleaned_data['email'].lower()
        r = User.objects.filter(email=email)
        if r.count():
            raise  ValidationError("Email ya existe")
        return email

    def clean_password2(self):
        password1 = self.cleaned_data.get('password1')
        password2 = self.cleaned_data.get('password2')

        if password1 and password2 and password1 != password2:
            raise ValidationError("Contraseñas no coinciden")

        return password2

    def save(self, commit=True):
        user = User.objects.create_user(
            self.cleaned_data['username'],
            self.cleaned_data['email'],
            self.cleaned_data['password1']
        )
        return user
    

class EntregaPedidoForm(forms.ModelForm):
    class Meta:
        model = EntregaPedido
        fields = ['pedido', 'fecha_entrega', 'observaciones']

        