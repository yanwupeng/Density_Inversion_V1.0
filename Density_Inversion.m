% !                                                program by peng yanwu,chen wenjin,tan xiaolong and hong guoqing/ 彭衍武、陈文进、谭小龙和洪国庆
% !                               江西理工大学 Jiangxi University of Science and Technology
% !                                             完成日期：2023年2月19日 Finish data:2023/2/19
% !                 此程序能够反演得到合理的地质体密度分布/This program is capable of inverting and obtaining a reasonable distribution of geological body density
% !                                     Email:ywpeng@mail.jxust.edu.cn/wjchen0710@163.com/xiaolongtan@mail.jxust.edu.cn/gqhong@mail.jxust.edu.cn


function varargout = Density_Inversion(varargin)
% DENSITY_INVERSION MATLAB code for Density_Inversion.fig
%      DENSITY_INVERSION, by itself, creates a new DENSITY_INVERSION or raises the existing
%      singleton*.
%
%      H = DENSITY_INVERSION returns the handle to a new DENSITY_INVERSION or the handle to
%      the existing singleton*.
%
%      DENSITY_INVERSION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DENSITY_INVERSION.M with the given input arguments.
%
%      DENSITY_INVERSION('Property','Value',...) creates a new DENSITY_INVERSION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Density_Inversion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Density_Inversion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Density_Inversion

% Last Modified by GUIDE v2.5 15-Feb-2023 22:01:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Density_Inversion_OpeningFcn, ...
                   'gui_OutputFcn',  @Density_Inversion_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Density_Inversion is made visible.
function Density_Inversion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Density_Inversion (see VARARGIN)

% Choose default command line output for Density_Inversion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Density_Inversion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Density_Inversion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_as_Callback(hObject, eventdata, handles)
% hObject    handle to edit_as (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_as as text
%        str2double(get(hObject,'String')) returns contents of edit_as as a double


% --- Executes during object creation, after setting all properties.
function edit_as_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_as (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_ax_Callback(hObject, eventdata, handles)
% hObject    handle to edit_ax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_ax as text
%        str2double(get(hObject,'String')) returns contents of edit_ax as a double


% --- Executes during object creation, after setting all properties.
function edit_ax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_ax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_ay_Callback(hObject, eventdata, handles)
% hObject    handle to edit_ay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_ay as text
%        str2double(get(hObject,'String')) returns contents of edit_ay as a double


% --- Executes during object creation, after setting all properties.
function edit_ay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_ay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_az_Callback(hObject, eventdata, handles)
% hObject    handle to edit_az (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_az as text
%        str2double(get(hObject,'String')) returns contents of edit_az as a double


% --- Executes during object creation, after setting all properties.
function edit_az_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_az (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2



function edit_b_Callback(hObject, eventdata, handles)
% hObject    handle to edit_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_b as text
%        str2double(get(hObject,'String')) returns contents of edit_b as a double


% --- Executes during object creation, after setting all properties.
function edit_b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_z0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_z0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_z0 as text
%        str2double(get(hObject,'String')) returns contents of edit_z0 as a double


% --- Executes during object creation, after setting all properties.
function edit_z0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_z0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname,c]=uigetfile('*.txt');
if c==1
 file=[pathname,filename];
 try
 xyz=textread(file);
 catch
  xyz=csvread(file);
 end
 ab=get(handles.uitable1,'data');
 ab(:,7)=xyz;
 set(handles.uitable1,'data',ab);
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable1,'data','');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xstart=str2double(get(handles.edit_xmin,'string'));
xend=str2double(get(handles.edit_xmax,'string'));
nx=str2double(get(handles.edit_nx,'string'));
ystart=str2double(get(handles.edit_ymin,'string'));
yend=str2double(get(handles.edit_ymax,'string'));
ny=str2double(get(handles.edit_ny,'string'));
zstart=str2double(get(handles.edit_zmin,'string'));
zend=str2double(get(handles.edit_zmax,'string'));
nz=str2double(get(handles.edit_nz,'string'));
z0=str2double(get(handles.edit_z0,'string'));
b=str2double(get(handles.edit_b,'string'));
[ FzWeight, Wzv ] = depthWeight(xend,xstart,yend,ystart, zend, zstart, nx , ny, nz, z0, b, 2 );
[ paramGrid, dx, dy, dz ] = grid3D( xstart, xend, ystart, yend, zstart, zend, ny, ny, nz );
 paramGrid(:,7)=0;
 set(handles.uitable1,'data',paramGrid);
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit_xmin,'string','');
set(handles.edit_xmax,'string','');
set(handles.edit_nx,'string','');
set(handles.edit_ymin,'string','');
set(handles.edit_ymax,'string','');
set(handles.edit_ny,'string','');
set(handles.edit_zmin,'string','');
set(handles.edit_zmax,'string','');
set(handles.edit_nz,'string','');


function edit_xmin_Callback(hObject, eventdata, handles)
% hObject    handle to edit_xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_xmin as text
%        str2double(get(hObject,'String')) returns contents of edit_xmin as a double


% --- Executes during object creation, after setting all properties.
function edit_xmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_zmax_Callback(hObject, eventdata, handles)
% hObject    handle to edit_zmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_zmax as text
%        str2double(get(hObject,'String')) returns contents of edit_zmax as a double


% --- Executes during object creation, after setting all properties.
function edit_zmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_zmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_ymax_Callback(hObject, eventdata, handles)
% hObject    handle to edit_ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_ymax as text
%        str2double(get(hObject,'String')) returns contents of edit_ymax as a double


% --- Executes during object creation, after setting all properties.
function edit_ymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_xmax_Callback(hObject, eventdata, handles)
% hObject    handle to edit_xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_xmax as text
%        str2double(get(hObject,'String')) returns contents of edit_xmax as a double


% --- Executes during object creation, after setting all properties.
function edit_xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_ymin_Callback(hObject, eventdata, handles)
% hObject    handle to edit_ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_ymin as text
%        str2double(get(hObject,'String')) returns contents of edit_ymin as a double


% --- Executes during object creation, after setting all properties.
function edit_ymin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_zmin_Callback(hObject, eventdata, handles)
% hObject    handle to edit_zmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_zmin as text
%        str2double(get(hObject,'String')) returns contents of edit_zmin as a double


% --- Executes during object creation, after setting all properties.
function edit_zmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_zmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_nx_Callback(hObject, eventdata, handles)
% hObject    handle to edit_nx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_nx as text
%        str2double(get(hObject,'String')) returns contents of edit_nx as a double


% --- Executes during object creation, after setting all properties.
function edit_nx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_nx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_ny_Callback(hObject, eventdata, handles)
% hObject    handle to edit_ny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_ny as text
%        str2double(get(hObject,'String')) returns contents of edit_ny as a double


% --- Executes during object creation, after setting all properties.
function edit_ny_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_ny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_nz_Callback(hObject, eventdata, handles)
% hObject    handle to edit_nz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_nz as text
%        str2double(get(hObject,'String')) returns contents of edit_nz as a double


% --- Executes during object creation, after setting all properties.
function edit_nz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_nz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(uitable2,'data','');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global xyz;
[filename,pathname,c]=uigetfile('*.txt');
if c==1
 file=[pathname,filename];
 try
 xyz=textread(file);
 catch
  xyz=csvread(file);
 end
 set(handles.uitable2,'data',xyz);
end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global xyz;
rbgx=get(handles.radiobutton_gx,'value');
rbgy=get(handles.radiobutton_gy,'value');
rbgz=get(handles.radiobutton_gz,'value');
if rbgx==1||rbgy==1||rbgz==1
dObs = xyz(:,4)*10^5;
else
  dObs = xyz(:,4)*10^9;  
end
Obsgrid2D1D=xyz;
minx = min(Obsgrid2D1D(:,1));
maxx = max(Obsgrid2D1D(:,1));
miny = min(Obsgrid2D1D(:,2));
maxy = max(Obsgrid2D1D(:,2));
nx =( max(Obsgrid2D1D(:,1))-min(Obsgrid2D1D(:,1)))/(max(Obsgrid2D1D(2,1))-min(Obsgrid2D1D(1,1)))+1;
ny = length(Obsgrid2D1D(:,1))/nx;
dObscontour_dobs = onedtotwod( dObs,nx,ny );
% plot figures
imagesc(minx:3:maxx,miny:3:maxy,(dObscontour_dobs));
xlabel('X Distance');
ylabel('Y distance');
colormap(jet)
cb=colorbar;
if rbgx==1||rbgy==1||rbgz==1
set(get(cb,'title'),'string','mGal');
else
  set(get(cb,'title'),'string','E'); 
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global xyz;
global paramGrid;
global xyzd;
global nx;
global ny;
global nz;

h=waitbar(0,'正在计算。。。');
%模型数据

xStart =str2double(get(handles.edit_xmin,'string'));
xEnd = str2double(get(handles.edit_xmax,'string'));
nx =str2double(get(handles.edit_nx,'string'));
yStart =str2double(get(handles.edit_ymin,'string'));
yEnd = str2double(get(handles.edit_ymax,'string'));
ny =str2double(get(handles.edit_ny,'string'));
zStart =str2double(get(handles.edit_zmin,'string'));
zEnd = str2double(get(handles.edit_zmax,'string'));
nz = str2double(get(handles.edit_nz,'string'));
m=get(handles.uitable1,'data');
m0=m(:,7);%initial model
[ paramGrid, dx, dy, dz ] = grid3D( xStart, xEnd, yStart, yEnd, zStart, zEnd, ny, ny, nz ); 

%观测格网
Obsgrid2D1D(:,1)=xyz(:,1);
Obsgrid2D1D(:,2)=xyz(:,2);
Obsgrid2D1D(:,3)=xyz(:,3);%观测高度
rbgxx=get(handles.radiobutton_gxx,'value');
rbgxy=get(handles.radiobutton_gxy,'value');
rbgxz=get(handles.radiobutton_gxz,'value');
rbgyy=get(handles.radiobutton_gyy,'value');
rbgyz=get(handles.radiobutton_gyz,'value');
rbgzz=get(handles.radiobutton_gzz,'value');
rbgx=get(handles.radiobutton_gx,'value');
rbgy=get(handles.radiobutton_gy,'value');
rbgz=get(handles.radiobutton_gz,'value');
if rbgxx==1
[ ForwardMatrix] = ForwardMatrix_gxx(Obsgrid2D1D, paramGrid);
 
elseif rbgxy==1
   [ ForwardMatrix] = ForwardMatrix_gxy(Obsgrid2D1D, paramGrid); 
   
elseif rbgxz==1
    [ ForwardMatrix] = ForwardMatrix_gxz(Obsgrid2D1D, paramGrid);
 
elseif rbgyy==1
    [ ForwardMatrix] = ForwardMatrix_gyy(Obsgrid2D1D, paramGrid);
   
elseif rbgyz==1
    [ ForwardMatrix] = ForwardMatrix_gyz(Obsgrid2D1D, paramGrid);
   
elseif rbgzz==1
    [ ForwardMatrix] = ForwardMatrix_gzz(Obsgrid2D1D, paramGrid);
    
elseif rbgx==1
    [ ForwardMatrix] = ForwardMatrix_gx(Obsgrid2D1D, paramGrid);
   
elseif rbgy==1
    [ ForwardMatrix] = ForwardMatrix_gy(Obsgrid2D1D, paramGrid);
     
elseif rbgz==1
    [ ForwardMatrix] = ForwardMatrix_gz(Obsgrid2D1D, paramGrid);
     
end
lengthDensity = length(ForwardMatrix(1,:));
 dObs = xyz(:,4);
if rbgx==1||rbgy==1||rbgz==1
    
    Wd=sparse(diag(1./(xyz(:,5)*1e-5)));
    
else
    
    Wd=sparse(diag(1./(xyz(:,5)*1e-9)));
    
end

%深度加权参数
ck1=get(handles.checkbox1,'value');
ck2=get(handles.checkbox2,'value');
ck3=get(handles.checkbox3,'value');
ck4=get(handles.checkbox4,'value');
z0 = str2double(get(handles.edit_z0,'string'));
b = str2double(get(handles.edit_b,'string'));
%Generate Depth Weighing Matrix
if ck1==1
Z  = sparse(genWz( z0, paramGrid, b ));
else
    Z=1;
end
% %Make Alphas, holding all derivitives to be the same.
%Generating Derivitive Matrixies.
Dx = sparse(genDx( nx,ny,nz ));
Dy = sparse(genDy( nx,ny,nz ));
Dz = sparse(genDz( nx,ny,nz ));
alpha = str2double(get(handles.edit_as,'string'));
ax=str2double(get(handles.edit_ax,'string'));
ay=str2double(get(handles.edit_ay,'string'));
az=str2double(get(handles.edit_az,'string'));
Ws = alpha*sparse(sqrt(dx*dy*dz)*eye(lengthDensity)*Z);
if ck2==1
Wx = ax*sparse(sqrt(dy*dz/(2*dx))*Dx*Z);
else
    Wx=0;
end
if ck3==1
Wy = ay*sparse(sqrt(dy*dx/(2*dy))*Dy*Z);
else
    Wy=0;
end
if ck4==1
Wz = az*sparse(sqrt(dy*dx/(2*dz))*Dz*Z);
else
    Wz=0;
end
%Generate Weighting function.
WtW = sparse(Ws'*Ws+Wx'*Wx+Wy'*Wy+Wz'*Wz); 

%求正则化参数

targetChiSq = nx*ny;
a=get(handles.radiobutton2,'value');
if a==1
n1=str2double(get(handles.edit17,'string'));
n2=str2double(get(handles.edit18,'string'));
n3=str2double(get(handles.edit19,'string'));
muTable = logspace(n1,n2,n3);
lengthmu = length(muTable);
chiSq = zeros(lengthmu,1);
rho=zeros(lengthmu,1);
eta=zeros(lengthmu,1);
% stedv=std(1,5);
%Pick optimal mu
for i = 1 : lengthmu
    % Make subplot and pick the alpha value.
    mu = muTable(i);   
    % Invert with for alpha value     
    p =m0+ inv((ForwardMatrix'*(Wd')*Wd*ForwardMatrix + mu*WtW))*ForwardMatrix'*(Wd')*Wd*(dObs-ForwardMatrix*m0);    
    % Get predicted Data
    dpred = ForwardMatrix*p;
    % Get error
    error =Wd *(dpred-dObs);
    chiSq(i,1) = (error'*error);
%     error  
%     error=dObs-dpred;
%     chiSq(i,1) = (error'*error)/(stedv^2);
    rho(i)=norm((dpred-dObs));
    eta(i)=norm(p);
end
% chiSq

[alpha_tikh,ireg_corner] = l_curve_corner(rho,eta,muTable);
% 求出最优正则化参数u
% [~,optDampedInt] = min(abs(chiSq - targetChiSq));
% optDamped = muTable(optDampedInt);
optDamped=alpha_tikh;

else
 optDamped=str2double(get(handles.edit7,'string'));
end
    p =m0+ inv((ForwardMatrix'*(Wd')*Wd*ForwardMatrix + optDamped*WtW))*ForwardMatrix'*(Wd')*Wd*(dObs-ForwardMatrix*m0);
xyzd=paramGrid;
xyzd(:,7)=p;
waitbar(1,h,'计算完成');
close(h);
h=Result;
set(h,'visible','on');
figure('Name','L曲线','NumberTitle','off')
plot(rho,eta)
% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.radiobutton1,'value');
if a==1
    set(handles.edit7,'enable','on');
    set(handles.edit17,'enable','off');
    set(handles.edit18,'enable','off');
    set(handles.edit19,'enable','off');
else
    set(handles.edit7,'enable','off');
    set(handles.edit17,'enable','on');
    set(handles.edit18,'enable','on');
    set(handles.edit19,'enable','on');
end


% --- Executes when selected object is changed in uibuttongroup4.
function uibuttongroup4_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup4 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uibuttongroup3.
function uibuttongroup3_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup3 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6
a=get(handles.checkbox6,'value');
if a==1
    set(handles.pushbutton1,'enable','on');
    set(handles.pushbutton2,'enable','on');
end
if a==0
    set(handles.pushbutton1,'enable','off');
    set(handles.pushbutton2,'enable','off');
end


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7
global xyz;
m=size(xyz);
n=m(1,1);
ck=get(handles.checkbox7,'value');
a=get(handles.uitable2,'data');
for i=1:n
    b(i,1)=1;
end
if ck==1
    a(:,5)=xyz(:,5);
else
    a(:,5)=b;
end
set(handles.uitable2,'data',a);
