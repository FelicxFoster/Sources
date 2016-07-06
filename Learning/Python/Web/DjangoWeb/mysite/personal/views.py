from django.shortcuts import render

# Create your views here.
def home(request):
	return render(request, 'personal/home.html')
	
def signin(request):
	return render(request, 'personal/signin.html')

	
def contact(request):
	return render(request, 'personal/contact.html', {'content': ['If you would like to contact me, please email me', 'zoro@onepiece.com']})
	
def signup(request):
	return render(request, 'personal/signup.html')
