
from django.shortcuts import render, redirect

from .carro import Carro

from core.models import Producto


def cart_add(request, id):
    cart = Carro(request)
    producto = Producto.objects.get(id=id)
    cart.add(producto=producto)
    return redirect("cart")


def item_clear(request, id):
    cart = Carro(request)
    producto = Producto.objects.get(id=id)
    cart.remove(producto)
    return redirect("cart")


def item_decrement(request, id):
    cart = Carro(request)
    producto = Producto.objects.get(id=id)
    cart.decrement(producto=producto)
    return redirect("cart")

def item_increment(request, id):
    cart = Carro(request)
    producto = Producto.objects.get(id=id)
    cart.add(producto=producto)
    return redirect("cart")


def cart_clear(request, producto_id):
    carro=Carro(request)
    carro.clear()
    return redirect("cart")


def cart_detail(request):
    return render(request, 'core/cart.html')

def eliminar_producto(request, producto_id):
    carro=Carro(request)
    producto=Producto.objects.get(id=producto_id)
    carro.remove(producto=producto)

    return redirect("cart")