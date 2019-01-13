git submodule add https://github.com/CGAL/cgal.git cgal 
git submodule add https://github.com/Kitware/VTK.git VTK
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
