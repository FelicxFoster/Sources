from django.conf.urls import url
from django.views.generic import ListView, DetailView
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy

from .models import Album, Song

from . import views

app_name = 'music'

urlpatterns = [
    # Album Part
    # /music/
    url(r'^$', ListView.as_view(model=Album, template_name='music/index.html',
                                context_object_name='album_list'), name='index'),

    # /music/2/
    url(r'^(?P<pk>\d+)/$', DetailView.as_view(model=Album,
                                              template_name='music/detail.html'), name='detail'),

    # /music/alubm/add/
    url(r'^album/add/$', CreateView.as_view(model=Album,
                                            fields="__all__"), name="album-add"),

    # /music/alubm/3/update/
    url(r'^album/(?P<pk>\d+)/update/$',
        UpdateView.as_view(model=Album, fields="__all__"), name="album-update"),

    # /music/alubm/3/delete/
    url(r'^album/(?P<pk>\d+)/delete/$',
        DeleteView.as_view(model=Album, success_url=reverse_lazy('music:index')), name="album-delete"),

    # Song Part
    # /music/songs/
    url(r'^songs/$', ListView.as_view(model=Song,
                                      context_object_name="songs"), name="songs"),

    # /music/songs/add/
    url(r'^songs/add/$', CreateView.as_view(model=Song,
                                            fields="__all__"), name='song-add'),

    # /music/songs/2/update/
    url(r'^songs/(?P<pk>\d+)/update/$', UpdateView.as_view(model=Song,
                                                           fields="__all__"), name="song-update"),

    # /music/songs/2/delete/
    url(r'^songs/(?P<pk>\d+)/delete/$', DeleteView.as_view(model=Song, success_url=reverse_lazy(
        'music:songs')), name="song-delete"),



    # /muisc/register/
    url(r'^register/$', views.UserFormView.as_view(), name='register'),

    # /music/2/favorite/
    url(r'^songs/(?P<song_id>\d+)/favorite/$', views.favorite, name='favorite')

]
