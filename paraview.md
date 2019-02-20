# Paraview 安装和使用笔记


# 依赖的第三方软件 

## TBB 

Thread Building Blocks,线程构建模块，是Intel公司开发的并行编程开发的工具。


## 具体安装过程

```
$ sudo apt install qt5-default libqt5x11extras5-dev qttools5-dev
$ sudo apt install libqt5xmlpatterns5-dev python3-pyqt5.qtxmlpatterns qtxmlpatterns5-dev-tools
$ sudo apt install libphonon4qt5-dev
 
$ sudo apt install python3-pyqt5 python3-pyqt5.qtx11extras
$ sudo apt install mesa-common-dev
 
$ sudo apt install ffmpeg
$ sudo apt install libavutil-dev libavcodec-dev libavformat-dev libavdevice-dev libavfilter-dev libavresample-dev libswscale-dev libswresample-dev libpostproc-dev
 
$ sudo apt install libtbb-dev
```

```
git clone https://gitlab.kitware.com/paraview/paraview.git
cd paraview
git submodule update --init --recursive
cd VTK
git submodule update --init --recursive
```

在 `paraview` 在上一级目录

```
$ mkdir build
$ cd build
$ cmake-gui ../paraview
```

勾选 
1. adance options
1. ninja 
1. python catalyst
1. PARAVIEW_ENABLE_PYTHON
1. PARAVIEW_ENABLE_FFMPEG
1. tbb
1. openmp
1. VTK_MOUDEL_  YES


/paraview/CoProcessing/PythonCatalyst/CMakeLists.txt

change the `FortranPythonAdaptorAPI.cxx` to `FortranPythonAdaptorAPI`

```
CMake Error at VTK/CMake/vtkModule.cmake:2862 (add_library):
  Cannot find source file:

    FortranPythonAdaptorAPI.cxx.cxx

  Tried extensions .c .C .c++ .cc .cpp .cxx .m .M .mm .h .hh .h++ .hm .hpp
  .hxx .in .txx
Call Stack (most recent call first):
  CoProcessing/PythonCatalyst/CMakeLists.txt:52 (vtk_module_add_module)


CMake Error: CMake can not determine linker language for target: PythonCatalyst
CMake Error in CoProcessing/PythonCatalyst/CMakeLists.txt:
  Exporting the target "PythonCatalyst" is not allowed since its linker
  language cannot be determined
```

## 解决问题的思考
1. 提问原则：把实际问题抽象了一个简单的模型问题，给出示例代码，然后在
   StackOverFlow， mailist 中问问题。
1. 从错误信息出发原则：分析错误的每个细节，以这些细节为出发点，查找涉及的相关文
   件，要由近及远，且适可而止
1. 

