# reticulate https://rstudio.github.io/reticulate/articles/calling_python.html
pacman::p_load(reticulate, magic, magrittr)
version
Sys.which('python3')
py_config()
Sys.which()

sys <- import( "sys")
sys$version
os <- import("os")

os$getcwd()
getwd()

os$listdir(".")
list.files(all.files : TRUE)

py_help(filecmp$cmp)
filecmp <- import("filecmp")


virtualenv_root() # List existing virtual
virtualenv_list()
# virtualenv_create("PyandR")
# use_virtualenv("PyandR") # using new created environment
# use_virtualenv("myenv") # using R environment
virtualenv_python() # using python environment

reticulate:::virtualenv_config()  # ::: to access hidden functions
reticulate:::virtualenv_remove(envname = 'PyandR')
py_config()

use_virtualenv("myenv")

virtualenv_list()	# List all available virtualenvs
virtualenv_create()	# Create a new virtualenv
virtualenv_install()	# Install a package within a virtualenv
virtualenv_remove()	# Remove individual packages or an entire virtualenv

############  Import Python libraries #################
# virtualenv_install("myenv", c("numpy", "pandas", "matplotlib", "pycountry==17.5.14"))
plt <- import("matplotlib.pyplot")
np <- import("numpy")
pd <- import("pandas")
os <- import('os')
math <- import('math')
warnings <- import('warnings') # warnings.filterwarnings('ignore')
scrapy <- import('scrapy')  
sns <- import('seaborn') 
rand <- np$random  # randn()
#rand$random_sample(1:10)
np$array(c(1:4))
np$asmatrix(c(1:4))

repl_python() 
list(range(1,1000))


##### in Python ####################################

py_run_string("x=10")
py$x
py_run_string("print x")

library(reticulate)
# py_install("pandas")
conda_list()	# List all available conda environments
conda_create()	# Create a new conda environment
conda_install()	# Install a package within a conda environment
conda_remove()	# Remove individual packages or an entire conda environment

# install SciPy
conda_install("r-reticulate", "scipy")

# import SciPy (it will be automatically discovered in "r-reticulate")
scipy <- import("scipy")



reticulate::repl_python()
import pandas as pd
r.iris
r.iris.head()
reticulate::repl_python()
list(range(1,10,2))
np_array(c(1:8), dtype = "float16")
b <- np_array(c(1:8), order = "C")
a <- c(1:10))
r_to_py(c(1:10))
r_to_py(a)
py_to_r(b)

exit
conda_list()

#### Python for R markdown #######################
reticulate::use_python('C:\\ProgramData\\Anaconda3\\python.exe')

```{python}
# then use the python chunk in markdown
```
py_to_r(list(range(1,1000)))

c(1:1000000)

tapply(x= a,file = paste0().txt , write.table,sep = ",")
a <- c(l1, l2,l3)
write.table(a,file = "sankey.txt")


reticulate::repl_python()
a = list(range(1,100))

library(reticulate)
use_python()
use_virtualenv("myenv")
repl_python()

reticulate:::py_module_available()
py_list_attributes()

virtualenv_python()
