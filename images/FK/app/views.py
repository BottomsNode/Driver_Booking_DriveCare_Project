from django.shortcuts import render,redirect
from .models import Candidate
from .forms import CandidateForm

# Create your views here.

#read
def data_read(request):
    context = {'data_read': Candidate.objects.all()}
    return render(request, "data_read.html", context)


#create
def data_form(request):
    if request.method == "POST":
        form = CandidateForm(request.POST)
        if form.is_valid():
            form.save()
        return redirect('/data')
    else:
        form = CandidateForm()
        return render(request,"data_form.html",{'form':form})
