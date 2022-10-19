from django.shortcuts import render

# Create your views here.
from django.http import JsonResponse
from django.views import View  
from django.views.decorators.csrf import csrf_exempt, csrf_protect

class HomeView(View):  

 def get(self, request):
    return JsonResponse({"message":
    'xyz',
    "status":"true"})