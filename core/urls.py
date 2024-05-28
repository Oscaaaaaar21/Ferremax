from django.urls import path, include
from .views import *
from core import views
from rest_framework import routers
from carro.views import *
## VIEWS -> URLS -> HTML

router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('TipoProductos', TipoProductoViewset)
router.register('Contacto', ContactoViewset)
router.register('Compra', CompraViewset)

urlpatterns = [
    path('api/', include(router.urls)),
    path('',index, name="index"),
    path('apiindex/',apiindex, name="apiindex"),
    path('about/',about, name="about"),
    path('cart/',cart, name="cart"),
    path('checkout/',checkout, name="checkout"),
    path('contact/',contact, name="contact"),
    path('news/',news, name="news"),
    path('shop/',shop, name="shop"),
    path('single-news/',singlenews, name="singlenews"),
    path('single-product/<id>/',singleproduct, name="singleproduct"),
    path('agregar-producto/',agregar_producto, name="agregar_producto"),
    path('listar-productos/',listar_productos, name="listar_productos"),
    path('modificar-productos/<id>/',modificar_productos, name="modificar_productos"),
    path('eliminar-productos/<id>/',eliminar_productos, name="eliminar_productos"),
    path('registro/',registro, name="registro"),
    path('gallery/',gallery, name="gallery"),
    path('detallepedido/<id>/', detallepedido, name="detallepedido"),
    path('status/', status, name='status'),
    path('subscripcion/', subscripcion, name="subscripcion"),
    path('ordercomplete/', ordercomplete, name="ordercomplete"),
    path('usuario/', usuario, name='usuario'),
    path('carro/', include('carro.urls', namespace='carro')),
    path('donacion/', donacion, name='donacion'),
    path('cambiar_estado_pedido/<int:pedido_id>/', views.cambiar_estado_pedido, name='cambiar_estado_pedido'),
    path('contacto_admin/', contacto_admin, name='contacto_admin'),
    #usuarios
    path('administracion_user/', administracion_user, name='administracion_user'),
    path('crear_usuario/', views.crear_usuario, name='crear_usuario'),
    path('modificar_user/<int:usuario_id>/', views.modificar_user, name='modificar_user'),
    path('eliminar_usuario/<int:usuario_id>/', views.eliminar_usuario, name='eliminar_usuario'),
    path('registrar-entrega/', views.registrar_entrega_pedido, name='registrar_entrega_pedido'),
    path('lista_entregas/', lista_entregas, name='lista_entregas'),
    path('listar_user/', listar_user, name='listar_user'),



    path('recuperar-contraseña/', views.recuperar_contraseña_view, name='recuperar_contraseña'),
    path('ver_pedidos_bode/', ver_pedidos_bode, name='ver_pedidos_bode'),

 #Carrito



    #CRUD
   
    path('suscribir/<id>/', agregar_suscriptor, name="suscribir"),
    path('quitar-usuario/<id>/', quitar_usuario_de_grupo, name='quitar_usuario_de_grupo'),

]