from django.conf.urls import url
from . import views

app_name = 'personal'

urlpatterns = [
	url(r'^$', views.home, name='home'),
	url(r'^signin/', views.signin, name='signin'),
	url(r'^signup/', views.signup, name='signup'),
	url(r'^contact/', views.contact, name="contact"),
	
]