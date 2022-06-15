from django.shortcuts import render


# Lorem
def index(request):
    return render(request, 'index.html')
