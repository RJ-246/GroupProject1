from django.shortcuts import render
from django.http import HttpResponse
from .models import *
# Create your views here.

def index(req):
    donuts = Donut.objects.all()
    context = {
        'donutData' : donuts
    }
    return render(req, 'theapp/index.html', context)
