from django.shortcuts import render
from django.shortcuts import render_to_response
from app.models import Category, Application, Developer, App
#from app.models import Article
from django.http import HttpResponse


# Create your views here.
def app_view(request):
    '''
    p1 = Publication(title='The Python Journal')
    p1.save()
    p2 = Publication(title='Science News')
    p2.save()
    p3 = Publication(title='Science Weekly')
    p3.save()

    a1 = Article(headline='Django lets you build Web apps easily')
    a1.save()
    a1.publications.add(p1)

    a2 = Article(headline='NASA uses Python')
    a2.save()
    a2.publications.add(p1, p2)
    a2.publications.add(p3)

    new_publication = a2.publications.create(title='Highlights for Children')'''

    '''c1 = Category(title='Category1')
    c1.save()
    c2 = Category(title='Category2')
    c2.save()
    c3 = Category(title='Category3')
    c3.save()

    d1 = Developer(name='Splico')
    d1.save()

    a1 = Application(title='Dota3', developer_id='1')
    a1.save()
    a1.categories.add(c1, c2)

    a1 = Application(title='HalfDead3', developer_id='1')
    a1.save()
    a1.categories.add(c1)'''

    category_list = ['Cat1', 'Cat2']
    #post = App(app_id=1, app_store_id='store_id', title="Test", category=category_list)

    #post.save()

    #data = Application.objects.filter(categories__id=4)


    posts = App.objects

    return render_to_response('app.html', {'articles': posts})


    #return render_to_response('app.html', {'articles': data})


