
from django.views import generic

from django.core.urlresolvers import reverse

from django.shortcuts import render, get_object_or_404, redirect

from .models import Album, Song

from django.http import JsonResponse, HttpResponseRedirect


from django.contrib.auth import authenticate, login
from django.views.generic import View
from .forms import UserForm


# create a new user account
class UserFormView(View):
    form_class = UserForm
    template_name = 'music/registration_form.html'

    # display blank form
    def get(self, request):
        form = self.form_class(None)
        return render(request, self.template_name, {'form': form})

    # process form data
    def post(self, request):
        form = self.form_class(request.POST)

        if form.is_valid():

            user = form.save(commit=False)

            # cleaned (normalized) data
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            user.set_password(password)
            user.save()

            # return User objects if credential are correct
            user = authenticate(username=username, password=password)

            if user is not None:

                if user.is_active:
                    login(request, user)
                    return redirect('music:index')

            return render(request, self.template_name, {'form': form})


def favorite(request, song_id):
    song = get_object_or_404(Song, pk=song_id)
    song.is_favorite = not song.is_favorite
    song.save()

    # return HttpResponse(str(song.album.id))
    # return render(request, 'music/detail.html', {'album': song.album})

    return HttpResponseRedirect(reverse('music:detail', args=(song.album.id,)))
