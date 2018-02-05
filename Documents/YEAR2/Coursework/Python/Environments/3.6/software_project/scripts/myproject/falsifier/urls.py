from django.conf.urls import url
from django.urls import path
from . import views

app_name = 'falsifier'

urlpatterns = [
    # ex: /falsifier/
    path('', views.index, name='index'),
    # ex: /falsifier/5/
    #path('<int:question_id>/', views.detail, name='detail'),
    # ex: /falsifier/5/results/
    #path('<int:question_id>/results/', views.results, name='results'),
    # ex: /falsifier/5/vote/
    #path('<int:question_id>/vote/', views.vote, name='vote'),
]