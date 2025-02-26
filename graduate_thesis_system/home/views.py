from django.http import Http404
from django.shortcuts import render, get_object_or_404, redirect
from django.core.exceptions import ObjectDoesNotExist
from django.db.models import Q
from .models import (
    Author, Cosupervisor, Institute, Keyword, Language,
    Subjecttopic, Supervisor, Thesis, Thesiskeyword,
    Thesissubject, Type, University
)

def get_model(model_name):
    models = {
        'author': Author,
        'cosupervisor': Cosupervisor,
        'institute': Institute,
        'keyword': Keyword,
        'language': Language,
        'subjecttopic': Subjecttopic,
        'supervisor': Supervisor,
        'thesis': Thesis,
        'thesiskeyword': Thesiskeyword,
        'thesissubject': Thesissubject,
        'type': Type,
        'university': University,
    }
    model = models.get(model_name.lower())
    if not model:
        raise Http404(f"Model not found: {model_name}")
    return model

def get_next_available_id(model):
    pk_field = model._meta.pk.name
    existing_ids = set(model.objects.values_list(pk_field, flat=True))
    next_id = 1
    while next_id in existing_ids:
        next_id += 1
    return next_id

def index(request):
    return render(request, 'index.html')

def home(request):
    context = {
        'authors': Author.objects.all(),
        'cosupervisors': Cosupervisor.objects.all(),
        'institutes': Institute.objects.all(),
        'keywords': Keyword.objects.all(),
        'languages': Language.objects.all(),
        'subjecttopics': Subjecttopic.objects.all(),
        'supervisors': Supervisor.objects.all(),
        'theses': Thesis.objects.all(),
        'thesiskeywords': Thesiskeyword.objects.all(),
        'thesissubjects': Thesissubject.objects.all(),
        'types': Type.objects.all(),
        'universities': University.objects.all(),
    }
    return render(request, 'admin.html', context)

from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponseNotFound
from .models import (
    Thesis, Keyword, Thesiskeyword, Thesissubject, Type,
    University, Author, Cosupervisor, Institute, Language,
    Subjecttopic, Supervisor
)

def add(request, model_name):
    valid_models = ['author', 'cosupervisor', 'institute', 'keyword', 'language', 
                   'subjecttopic', 'supervisor', 'thesis', 'thesiskeyword', 
                   'thesissubject', 'type', 'university']
    
    if model_name not in valid_models:
        return HttpResponseNotFound("Invalid model name")

    if request.method == "POST":
        try:
            # Author
            if model_name == "author":
                author_name = request.POST.get("author_name")
                if not author_name:
                    raise ValueError("Author name is required.")
                Author.objects.create(author_name=author_name)

            # Cosupervisor
            elif model_name == "cosupervisor":
                cosup_name = request.POST.get("cosup_name")
                if not cosup_name:
                    raise ValueError("Cosupervisor name is required.")
                Cosupervisor.objects.create(cosup_name=cosup_name)

            # Institute
            elif model_name == "institute":
                institute_name = request.POST.get("institute_name")
                university_id = request.POST.get("university")
                if not institute_name or not university_id:
                    raise ValueError("Institute name and university are required.")
                university = get_object_or_404(University, pk=university_id)
                Institute.objects.create(institute_name=institute_name, university=university)

            # Keyword
            elif model_name == "keyword":
                keyword_name = request.POST.get("keyword_name")
                if not keyword_name:
                    raise ValueError("Keyword name is required.")
                Keyword.objects.create(keyword_name=keyword_name)

            # Language
            elif model_name == "language":
                language_name = request.POST.get("language_name")
                if not language_name:
                    raise ValueError("Language name is required.")
                Language.objects.create(language_name=language_name)

            # Subjecttopic
            elif model_name == "subjecttopic":
                topic_name = request.POST.get("topic_name")
                if not topic_name:
                    raise ValueError("Subject topic name is required.")
                Subjecttopic.objects.create(topic_name=topic_name)

            # Supervisor
            elif model_name == "supervisor":
                supervisor_name = request.POST.get("supervisor_name")
                if not supervisor_name:
                    raise ValueError("Supervisor name is required.")
                Supervisor.objects.create(supervisor_name=supervisor_name)

            # Thesis
            elif model_name == "thesis":
                # Handle author
                author_id = request.POST.get("author_id")
                new_author = request.POST.get("new_author_name")
                if new_author:
                    author = Author.objects.create(author_name=new_author)
                elif author_id:
                    author = get_object_or_404(Author, pk=author_id)
                else:
                    raise ValueError("Please provide either a new or existing author")

                # Handle supervisor
                supervisor_id = request.POST.get("supervisor_id")
                new_supervisor = request.POST.get("new_supervisor_name")
                if new_supervisor:
                    supervisor = Supervisor.objects.create(supervisor_name=new_supervisor)
                elif supervisor_id:
                    supervisor = get_object_or_404(Supervisor, pk=supervisor_id)
                else:
                    raise ValueError("Please provide either a new or existing supervisor")

                # Handle cosupervisor (optional)
                cosupervisor = None
                cosup_id = request.POST.get("cosup_id")
                new_cosupervisor = request.POST.get("new_cosupervisor_name")
                if new_cosupervisor:
                    cosupervisor = Cosupervisor.objects.create(cosup_name=new_cosupervisor)
                elif cosup_id:
                    cosupervisor = get_object_or_404(Cosupervisor, pk=cosup_id)

                # Create thesis
                thesis = Thesis.objects.create(
                    title=request.POST.get("title"),
                    abstract=request.POST.get("abstract"),
                    author=author,
                    year=request.POST.get("year"),
                    type=get_object_or_404(Type, pk=request.POST.get("type_id")),
                    university=get_object_or_404(University, pk=request.POST.get("university_id")),
                    institute=get_object_or_404(Institute, pk=request.POST.get("institute_id")),
                    number_of_pages=request.POST.get("number_of_pages"),
                    language=get_object_or_404(Language, pk=request.POST.get("language_id")),
                    submission_date=request.POST.get("submission_date"),
                    supervisor=supervisor,
                    cosupervisor=cosupervisor
                )

            # Thesiskeyword
            elif model_name == "thesiskeyword":
                thesis_no = request.POST.get("thesis_no")
                keyword_id = request.POST.get("keyword")
                if not thesis_no or not keyword_id:
                    raise ValueError("Thesis and keyword are required.")
                Thesiskeyword.objects.create(
                    thesis_no_id=thesis_no,
                    keyword_id=keyword_id
                )

            # Thesissubject
            elif model_name == "thesissubject":
                thesis_no = request.POST.get("thesis_no")
                topic_id = request.POST.get("topic")
                if not thesis_no or not topic_id:
                    raise ValueError("Thesis and topic are required.")
                Thesissubject.objects.create(
                    thesis_no_id=thesis_no,
                    topic_id=topic_id
                )

            # Type
            elif model_name == "type":
                type_name = request.POST.get("type_name")
                if not type_name:
                    raise ValueError("Type name is required.")
                Type.objects.create(type_name=type_name)

            # University
            elif model_name == "university":
                university_name = request.POST.get("university_name")
                if not university_name:
                    raise ValueError("University name is required.")
                University.objects.create(university_name=university_name)

            return redirect("home")

        except ValueError as e:
            context = {"model_name": model_name, "error": str(e)}
        except Exception as e:
            context = {"model_name": model_name, "error": f"Error: {str(e)}"}

    else:  # GET request
        context = {"model_name": model_name}

    # Add required context data based on model_name
    if model_name == "institute":
        context["universities"] = University.objects.all()
    elif model_name == "thesis":
        context.update({
            "authors": Author.objects.all(),
            "types": Type.objects.all(),
            "universities": University.objects.all(),
            "institutes": Institute.objects.all(),
            "languages": Language.objects.all(),
            "supervisors": Supervisor.objects.all(),
            "cosupervisors": Cosupervisor.objects.all(),
        })
    elif model_name == "thesiskeyword":
        context.update({
            "keywords": Keyword.objects.all(),
            "theses": Thesis.objects.all()
        })
    elif model_name == "thesissubject":
        context.update({
            "subjecttopics": Subjecttopic.objects.all(),
            "theses": Thesis.objects.all()
        })

    return render(request, "add.html", context)


def delete(request, model_name, record_id):
    model = get_model(model_name)
    instance = get_object_or_404(model, pk=record_id)
    instance.delete()
    return redirect('home')

def update(request, model_name, record_id):
    model = get_model(model_name)
    object_to_update = get_object_or_404(model, pk=record_id)

    related_data = {
        'thesis': {
            'authors': Author.objects.all(),
            'types': Type.objects.all(),
            'universities': University.objects.all(),
            'institutes': Institute.objects.all(),
            'languages': Language.objects.all(),
            'supervisors': Supervisor.objects.all(),
            'cosupervisors': Cosupervisor.objects.all(),
        },
        'institute': {
            'universities': University.objects.all(),
        },
        'thesiskeyword': {
            'theses': Thesis.objects.all(),
            'keywords': Keyword.objects.all(),
        },
        'thesissubject': {
            'theses': Thesis.objects.all(),
            'topics': Subjecttopic.objects.all(),
        }
    }

    extra_data = related_data.get(model_name.lower(), {})

    if request.method == 'POST':
        for field in model._meta.fields:
            if field.name == model._meta.pk.name:
                continue

            new_value = request.POST.get(field.name)
            if new_value:
                if field.is_relation and not field.many_to_many:
                    related_model = field.related_model
                    try:
                        related_instance = related_model.objects.get(pk=new_value)
                        setattr(object_to_update, field.name, related_instance)
                    except related_model.DoesNotExist:
                        return render(request, 'update.html', {
                            'model_name': model_name,
                            'object': object_to_update,
                            'error': f"Invalid reference for {field.name}.",
                            **extra_data
                        })
                else:
                    setattr(object_to_update, field.name, new_value)

        object_to_update.save()
        return redirect('home')

    return render(request, 'update.html', {
        'model_name': model_name,
        'object': object_to_update,
        **extra_data
    })

def search_thesis(request):
    query_params = request.GET
    theses = Thesis.objects.all()

    if 'q' in query_params and query_params['q']:
        query = query_params['q']
        theses = theses.filter(
            Q(title__icontains=query) |
            Q(abstract__icontains=query) |
            Q(author__author_name__icontains=query) |
            Q(thesiskeyword__keyword__keyword_name__icontains=query)
        ).distinct()

    for field, value in query_params.items():
        if value and field in ['title', 'author_name', 'year', 'university', 'keyword', 'type']:
            if field == 'author_name':
                theses = theses.filter(author__author_name__icontains=value)
            elif field == 'university':
                theses = theses.filter(university__university_name__icontains=value)
            elif field == 'keyword':
                theses = theses.filter(thesiskeyword__keyword__keyword_name__icontains=value)
            elif field == 'type':
                theses = theses.filter(type__type_name__icontains=value)
            else:
                theses = theses.filter(**{f"{field}__icontains": value})

    return render(request, 'search_thesis.html', {
        'theses': theses,
        'query_params': query_params,
    })


def submit_thesis(request):
    if request.method == 'POST':
        try:
            # Get author
            existing_author = request.POST.get('existing_author')
            new_author_name = request.POST.get('new_author_name')

            if existing_author:
                author_id = existing_author
            elif new_author_name:
                new_author = Author.objects.create(
                    author_id=get_next_available_id(Author),
                    author_name=new_author_name
                )
                author_id = new_author.author_id
            else:
                raise ValueError("Author is required")

            # Supervisor kontrolü
            supervisor_id = request.POST.get('supervisor')
            custom_supervisor = request.POST.get('custom_supervisor')

            if custom_supervisor:
                # Yeni supervisor oluştur
                new_supervisor = Supervisor.objects.create(
                    supervisor_id=get_next_available_id(Supervisor),
                    supervisor_name=custom_supervisor
                )
                supervisor_id = new_supervisor.supervisor_id

            # Co-supervisor kontrolü
            cosupervisor_id = request.POST.get('cosupervisor')
            custom_cosupervisor = request.POST.get('custom_cosupervisor')

            if custom_cosupervisor:
                # Yeni co-supervisor oluştur
                new_cosupervisor = Cosupervisor.objects.create(
                    cosup_id=get_next_available_id(Cosupervisor),
                    cosup_name=custom_cosupervisor
                )
                cosupervisor_id = new_cosupervisor.cosup_id

            thesis = Thesis.objects.create(
                thesis_no=get_next_available_id(Thesis),
                title=request.POST['title'],
                abstract=request.POST.get('abstract'),
                author_id=author_id,
                year=request.POST['year'],
                type_id=request.POST['type'],
                university_id=request.POST['university'],
                institute_id=request.POST['institute'],
                number_of_pages=request.POST['number_of_pages'],
                language_id=request.POST['language'],
                submission_date=request.POST['submission_date'],
                supervisor_id=supervisor_id,
                cosupervisor_id=cosupervisor_id
            )
            return redirect('home')

        except Exception as e:
            return render(request, 'submit.html', {
                'error': str(e),
                'authors': Author.objects.all(),
                'types': Type.objects.all(),
                'universities': University.objects.all(),
                'institutes': Institute.objects.all(),
                'languages': Language.objects.all(),
                'supervisors': Supervisor.objects.all(),
                'cosupervisors': Cosupervisor.objects.all(),
            })

    return render(request, 'submit.html', {
        'authors': Author.objects.all(),
        'types': Type.objects.all(),
        'universities': University.objects.all(),
        'institutes': Institute.objects.all(),
        'languages': Language.objects.all(),
        'supervisors': Supervisor.objects.all(),
        'cosupervisors': Cosupervisor.objects.all(),
    })
