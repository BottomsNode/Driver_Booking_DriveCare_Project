from django.conf.urls.static import static
from django.conf import settings
from django.contrib import admin
from django.urls import path,include
from Customer import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include('Customer.urls')),
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
