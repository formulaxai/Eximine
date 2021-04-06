from django.urls import path
from django.conf.urls import url


from app import views


# /(?P<id>\d+)/$
# /<int:pk>/
urlpatterns = [
    path("", views.index, name = 'home'),
    path("about/", views.about, name = 'about'),
    path("contact/", views.contact, name= "contact"),
    path('register/<int:pk>/', views.register, name= 'register'),
    path('register/', views.register, name= 'register'),
    path('dashboard/',views.dashboard, name= 'dashboard'),
    path('login/', views.login , name="login"),
    path('forgot-password/', views.forgotpassword , name="forgot-password"),
    path('forgot-password-complete/<uidb64>/<token>', views.forgotpasswordcomplete.as_view() , name="forgot-password-complete"),
    path('forgot-password-complete/', views.forgotpasswordcomplete.as_view() , name="forgot-password-complete"),
    path('logout/', views.logout, name="logout"),
    path('myprofile/',views.myprofile, name='myprofile'),
    path('users',views.users, name ='users'),
    path('accessLog', views.accessLog, name= 'accessLog'),
    path('favoriteshipment', views.favoriteshipment, name='favoriteshipment'),
    path('icons_icomoon', views.icons_icomoon, name='icons_icomoon'),
    path('mydownloads',views.mydownloads, name='mydownloads'),
    path('mynotifications',views.mynotifications,name='mynotifications'),
    path('myworkspace',views.myworkspace, name='myworkspace'),
    path('search',views.search,name='search'),
    path('advancesearch',views.advancesearch,name='advance_search'),
    path('subscriptions',views.subscriptions, name='subscriptions'),
    path('tickets',views.tickets, name= 'tickets'),
    path('export-data',views.exportdata, name='export-data'),
    path('register-complete/<uidb64>/<token>', views.registercomplete.as_view(), name='register-complete' ),

]