from app import views 
from django.contrib import admin
from django.urls import path

urlpatterns = [
    path('admin/', admin.site.urls),

    #CREATE
    path('',views.data_form, name="data_create"),

    #READ
    path('data/',views.data_read, name="data_read"),
]
