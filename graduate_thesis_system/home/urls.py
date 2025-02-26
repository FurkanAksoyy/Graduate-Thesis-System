from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),  # Route for the index page
    path('admin/', views.home, name='home'),
    path('add/<str:model_name>/', views.add, name='add'),
    path('delete/<str:model_name>/<int:record_id>/', views.delete, name='delete'),
    path('update/<str:model_name>/<int:record_id>/', views.update, name='update'),
    path('search/', views.search_thesis, name='search_thesis'),
    path('submit/', views.submit_thesis, name='submit_thesis'),
     
    
]
