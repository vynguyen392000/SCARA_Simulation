function varargout = BTVN(varargin)
% BTVN MATLAB code for BTVN.fig
%      BTVN, by itself, creates a new BTVN or raises the existing
%      singleton*.
%
%      H = BTVN returns the handle to a new BTVN or the handle to
%      the existing singleton*.
%
%      BTVN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BTVN.M with the given input arguments.
%
%      BTVN('Property','Value',...) creates a new BTVN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BTVN_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BTVN_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BTVN

% Last Modified by GUIDE v2.5 14-Dec-2021 13:53:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BTVN_OpeningFcn, ...
                   'gui_OutputFcn',  @BTVN_OutputFcn, ...
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


% --- Executes just before BTVN is made visible.
function BTVN_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BTVN (see VARARGIN)
xlabel('X axis');
ylabel('Y axis');
zlabel('Z axis');
grid on


x=[0];
y=[0];
z=[0];
handles.x = x;
handles.y = y;
handles.z = z;

base = [0;0;0];
plot3(handles.z,handles.y,handles.z);
% Choose default command line output for BTVN
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BTVN wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BTVN_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;






% --- Executes during object creation, after setting all properties.
function edtTheta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtTheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtTheta2_Callback(hObject, eventdata, handles)
% hObject    handle to edtTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtTheta2 as text
%        str2double(get(hObject,'String')) returns contents of edtTheta2 as a double


% --- Executes during object creation, after setting all properties.
function edtTheta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtTheta4_Callback(hObject, eventdata, handles)
% hObject    handle to edtTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtTheta4 as text
%        str2double(get(hObject,'String')) returns contents of edtTheta4 as a double


% --- Executes during object creation, after setting all properties.
function edtTheta4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtd3_Callback(hObject, eventdata, handles)
% hObject    handle to edtd3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtd3 as text
%        str2double(get(hObject,'String')) returns contents of edtd3 as a double


% --- Executes during object creation, after setting all properties.
function edtd3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtd3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbtPlot.
function pbtPlot_Callback(hObject, eventdata, handles)
% hObject    handle to pbtPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
xlabel('X axis');
ylabel('Y axis');
zlabel('Z axis');
grid on

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
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



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edtTheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtTheta1 as text
%        str2double(get(hObject,'String')) returns contents of edtTheta1 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtTheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edtTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtTheta2 as text
%        str2double(get(hObject,'String')) returns contents of edtTheta2 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edtTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtTheta4 as text
%        str2double(get(hObject,'String')) returns contents of edtTheta4 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edtd3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtd3 as text
%        str2double(get(hObject,'String')) returns contents of edtd3 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtd3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbPlot.
function pbPlot_Callback(hObject, eventdata, handles)
% hObject    handle to pbPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%------BANG DH-----
cla;
global theta1 theta1_qk;
global theta2 theta2_qk;
global d3 d3_qk;
global theta4 theta4_qk;
theta1_qk = 0;
theta2_qk = 0;
theta4_qk = 0;
d3_qk = 0;
theta1 = str2double(get(handles.edtTheta1,'String'))*pi/180;
theta2 = str2double(get(handles.edtTheta2,'String'))*pi/180;
theta4 = str2double(get(handles.edtTheta4,'String'))*pi/180;
d3 = str2double(get(handles.edtd3,'String'));

theta1_temp = linspace(theta1_qk,theta1,50);
theta2_temp = linspace(theta2_qk,theta2,50);
d3_temp = linspace(d3_qk,d3,50);
theta4_temp = linspace(theta4_qk,theta4,50);
for i=1:50
    cla;
    [xE,yE,zE,RE, PE, YE] = PlotRobot1(handles.axes1,theta1_temp(i),theta2_temp(i),d3_temp(i),theta4_temp(i));
    set(handles.edtX,'string',num2str(xE));
    set(handles.edtY,'string',num2str(yE));
    set(handles.edtZ,'string',num2str(zE));
    set(handles.edtR,'string',num2str(RE));
    set(handles.edtP,'string',num2str(PE));
    set(handles.edtYaw,'string',num2str(YE));
    pause(0.001);
end
theta1_qk = theta1;
theta2_qk = theta2;
d3_qk = d3;
theta4_qk= theta4;


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edtZ_Callback(hObject, eventdata, handles)
% hObject    handle to edtZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtZ as text
%        str2double(get(hObject,'String')) returns contents of edtZ as a double


% --- Executes during object creation, after setting all properties.
function edtZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtX_Callback(hObject, eventdata, handles)
% hObject    handle to edtX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtX as text
%        str2double(get(hObject,'String')) returns contents of edtX as a double


% --- Executes during object creation, after setting all properties.
function edtX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtY_Callback(hObject, eventdata, handles)
% hObject    handle to edtY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtY as text
%        str2double(get(hObject,'String')) returns contents of edtY as a double


% --- Executes during object creation, after setting all properties.
function edtY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtZI_Callback(hObject, eventdata, handles)
% hObject    handle to edtZI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtZI as text
%        str2double(get(hObject,'String')) returns contents of edtZI as a double


% --- Executes during object creation, after setting all properties.
function edtZI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtZI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function edtXI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtXI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtYI_Callback(hObject, eventdata, handles)
% hObject    handle to edtYI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtYI as text
%        str2double(get(hObject,'String')) returns contents of edtYI as a double


% --- Executes during object creation, after setting all properties.
function edtYI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtYI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbtInvCal.
function pbtInvCal_Callback(hObject, eventdata, handles)
% hObject    handle to pbtInvCal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xEI = str2double(get(handles.edtXI,'String'));
yEI = str2double(get(handles.edtYI,'String'));
zEI = str2double(get(handles.edtZI,'String'));
YawI = str2double(get(handles.edtYawI,'String'));
[theta1, theta2, d3, theta4, check] = Inverse(xEI,yEI,zEI,YawI);
if(check == 1)
    set(handles.edtTheta1,'string',num2str(theta1*180/pi));
    set(handles.edtTheta2,'string',num2str(theta2*180/pi));
    set(handles.edtd3,'string',num2str(d3));
    set(handles.edtTheta4,'string',num2str(theta4*180/pi));
else
    msgbox('Out Of Workspace');
end




function edtR_Callback(hObject, eventdata, handles)
% hObject    handle to edtR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtR as text
%        str2double(get(hObject,'String')) returns contents of edtR as a double


% --- Executes during object creation, after setting all properties.
function edtR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtP_Callback(hObject, eventdata, handles)
% hObject    handle to edtP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtP as text
%        str2double(get(hObject,'String')) returns contents of edtP as a double


% --- Executes during object creation, after setting all properties.
function edtP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtYaw_Callback(hObject, eventdata, handles)
% hObject    handle to edtYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtYaw as text
%        str2double(get(hObject,'String')) returns contents of edtYaw as a double


% --- Executes during object creation, after setting all properties.
function edtYaw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtYaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtRI_Callback(hObject, eventdata, handles)
% hObject    handle to edtRI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtRI as text
%        str2double(get(hObject,'String')) returns contents of edtRI as a double


% --- Executes during object creation, after setting all properties.
function edtRI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtRI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtPI_Callback(hObject, eventdata, handles)
% hObject    handle to edtPI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtPI as text
%        str2double(get(hObject,'String')) returns contents of edtPI as a double


% --- Executes during object creation, after setting all properties.
function edtPI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtPI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtYawI_Callback(hObject, eventdata, handles)
% hObject    handle to edtYawI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtYawI as text
%        str2double(get(hObject,'String')) returns contents of edtYawI as a double


% --- Executes during object creation, after setting all properties.
function edtYawI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtYawI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sld_theta1_Callback(hObject, eventdata, handles)
% hObject    handle to sld_theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val_1 = get(handles.sld_theta1,'Value');
val_str1 = num2str(val_1);
set(handles.edtTheta1,'String',val_str1);

% --- Executes during object creation, after setting all properties.
function sld_theta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sld_theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sld_theta2_Callback(hObject, eventdata, handles)
% hObject    handle to sld_theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val_2 = get(handles.sld_theta2,'Value');
val_str2 = num2str(val_2);
set(handles.edtTheta2,'String',val_str2);

% --- Executes during object creation, after setting all properties.
function sld_theta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sld_theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sld_theta4_Callback(hObject, eventdata, handles)
% hObject    handle to sld_theta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val_4 = get(handles.sld_theta4,'Value');
val_str4 = num2str(val_4);
set(handles.edtTheta4,'String',val_str4);

% --- Executes during object creation, after setting all properties.
function sld_theta4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sld_theta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sld_d3_Callback(hObject, eventdata, handles)
% hObject    handle to sld_d3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val_3 = get(handles.sld_d3,'Value');
val_str3 = num2str(val_3);
set(handles.edtd3,'String',val_str3);

% --- Executes during object creation, after setting all properties.
function sld_d3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sld_d3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edtxe_Callback(hObject, eventdata, handles)
% hObject    handle to edtxe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtxe as text
%        str2double(get(hObject,'String')) returns contents of edtxe as a double


% --- Executes during object creation, after setting all properties.
function edtxe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtxe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtye_Callback(hObject, eventdata, handles)
% hObject    handle to edtye (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtye as text
%        str2double(get(hObject,'String')) returns contents of edtye as a double


% --- Executes during object creation, after setting all properties.
function edtye_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtye (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtze_Callback(hObject, eventdata, handles)
% hObject    handle to edtze (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtze as text
%        str2double(get(hObject,'String')) returns contents of edtze as a double


% --- Executes during object creation, after setting all properties.
function edtze_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtze (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtrolle_Callback(hObject, eventdata, handles)
% hObject    handle to edtrolle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtrolle as text
%        str2double(get(hObject,'String')) returns contents of edtrolle as a double


% --- Executes during object creation, after setting all properties.
function edtrolle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtrolle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpitche_Callback(hObject, eventdata, handles)
% hObject    handle to edtpitche (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpitche as text
%        str2double(get(hObject,'String')) returns contents of edtpitche as a double


% --- Executes during object creation, after setting all properties.
function edtpitche_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpitche (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtyawe_Callback(hObject, eventdata, handles)
% hObject    handle to edtyawe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtyawe as text
%        str2double(get(hObject,'String')) returns contents of edtyawe as a double


% --- Executes during object creation, after setting all properties.
function edtyawe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtyawe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9



function edtvmax_Callback(hObject, eventdata, handles)
% hObject    handle to edtvmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtvmax as text
%        str2double(get(hObject,'String')) returns contents of edtvmax as a double


% --- Executes during object creation, after setting all properties.
function edtvmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtvmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtamax_Callback(hObject, eventdata, handles)
% hObject    handle to edtamax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtamax as text
%        str2double(get(hObject,'String')) returns contents of edtamax as a double


% --- Executes during object creation, after setting all properties.
function edtamax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtamax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in Type_Inter.
function Type_Inter_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in Type_Inter 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on button press in pbtsimulate.
function pbtsimulate_Callback(hObject, eventdata, handles)
% hObject    handle to pbtsimulate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xa = str2double(get(handles.edtX,'String'));
ya = str2double(get(handles.edtY,'String'));
za = str2double(get(handles.edtZ,'String'));
yawa = str2double(get(handles.edtYaw,'String'));

xb = str2double(get(handles.edtxe,'String'));
yb = str2double(get(handles.edtye,'String'));
zb = str2double(get(handles.edtze,'String'));
yawb = str2double(get(handles.edtyawe,'String'));

vmax = str2double(get(handles.edtvmax,'String'));
amax = str2double(get(handles.edtamax,'String'));

type_inter = get(handles.Type_Inter,'SelectedObject');      % lay thuoc tinh cua button group types of intepolation
string_inter = get(type_inter,'String');                    %xac dinh chuoi dang duoc chon tu button group
mode_inter = strlength(string_inter);
if(mode_inter  == 20)
    [x,y,z,yaw,theta1,theta2,theta4,d3,theta1dot,theta2dot,d3dot,theta4dot,p,v,a,t] = linear_pathplanning(xa,ya,za,yawa,xb,yb,zb,yawb,vmax,amax);
elseif(mode_inter == 21)
    mode = 0;
    [x,y,z,yaw,theta1,theta2,theta4,d3,theta1dot,theta2dot,d3dot,theta4dot,p,v,a,t] = circular_pathplanning(xa,ya,za,yawa,xb,yb,zb,yawb,vmax,amax,mode);
elseif(mode_inter == 16)
    mode = 1;
    [x,y,z,yaw,theta1,theta2,theta4,d3,theta1dot,theta2dot,d3dot,theta4dot,p,v,a,t] = circular_pathplanning(xa,ya,za,yawa,xb,yb,zb,yawb,vmax,amax,mode);
end
for i=1:length(t)
    cla;
    [xE,yE,zE,RE, PE, YE] = PlotRobot1(handles.axes1,theta1(i),theta2(i),d3(i),theta4(i));
    plot3(handles.axes1,x(1:i),y(1:i),z(1:i),'r');
    set(handles.edtX,'string',num2str(xE));
    set(handles.edtY,'string',num2str(yE));
    set(handles.edtZ,'string',num2str(zE));
    set(handles.edtR,'string',num2str(RE));
    set(handles.edtP,'string',num2str(PE));
    set(handles.edtYaw,'string',num2str(YE*180/pi));
    
    %plot p,v,t graph
    plot(handles.axesp,t(1:i),p(1:i),'r');
    title(handles.axesp,'p(t)');
    grid on
    plot(handles.axesv,t(1:i),v(1:i),'r');
    title(handles.axesv,'v(t)');
    grid on
    plot(handles.axesa,t(1:i),a(1:i),'r');
    title(handles.axesa,'a(t)');
    grid on
    
    %Plot x,y,z graphs
    plot(handles.axesx,t(1:i),x(1:i),'r');
    title(handles.axesx,'x(t)');
    grid on
    plot(handles.axesy,t(1:i),y(1:i),'r');
    title(handles.axesy,'y(t)');
    grid on
    plot(handles.axesz,t(1:i),z(1:i),'r');
    title(handles.axesz,'z(t)');
    grid on
    plot(handles.axesyaw,t(1:i),yaw(1:i),'r');
    title(handles.axesyaw,'yaw(t)');
    grid on
    
    %Plot theta1, theta2, d3, theta4
    plot(handles.axestheta1,t(1:i),theta1(1:i)*180/pi,'r');
    title(handles.axestheta1,'theta1(t)');
    plot(handles.axestheta2,t(1:i),theta2(1:i)*180/pi,'r');
    title(handles.axestheta2,'theta2(t)');
    plot(handles.axesd3,t(1:i),d3(1:i),'r');
    title(handles.axesd3,'d3(t)');
    plot(handles.axestheta4,t(1:i),theta4(1:i)*180/pi,'r');
    title(handles.axestheta4,'theta4(t)');
    
    %Plot theta1dot, theta2dot, d3dot, theta4dot
    plot(handles.axestheta1dot,t(1:i),theta1dot(1:i),'r');
    title(handles.axestheta1dot,'theta1dot(t)');
    plot(handles.axestheta2dot,t(1:i),theta2dot(1:i),'r');
    title(handles.axestheta2dot,'theta2dot(t)');
    plot(handles.axesd3dot,t(1:i),d3dot(1:i),'r');
    title(handles.axesd3dot,'d3dot(t)');
    plot(handles.axestheta4dot,t(1:i),theta4dot(1:i),'r');
    title(handles.axestheta4dot,'theta4dot(t)');
    pause(0.001);
end


% --- Executes on button press in tab1.
function tab1_Callback(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,'visible','on');
set(handles.panel2,'visible','off');
set(handles.panel3,'visible','off');
set(handles.uipanel24,'visible','off');



% --- Executes on button press in Tab2.
function Tab2_Callback(hObject, eventdata, handles)
% hObject    handle to Tab2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel2,'visible','on');
set(handles.panel1,'visible','off');
set(handles.panel3,'visible','off');
set(handles.uipanel24,'visible','off');



% --- Executes on button press in Tab3.
function Tab3_Callback(hObject, eventdata, handles)
% hObject    handle to Tab3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel3,'visible','on');
set(handles.panel1,'visible','off');
set(handles.panel2,'visible','off');
set(handles.uipanel24,'visible','off');

% --- Executes on button press in Tab4.
function Tab4_Callback(hObject, eventdata, handles)
% hObject    handle to Tab4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in wp_mode.
set(handles.uipanel24,'visible','on');
set(handles.panel1,'visible','off');
set(handles.panel2,'visible','off');
set(handles.panel3,'visible','off');

function pbtwp_Callback(hObject, eventdata, handles)
% hObject    handle to wp_mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
theta1_draw = linspace(-62*pi/180, 242*pi/180, 20);
theta2_draw = linspace(-147.5*pi/180, 147.5*pi/180, 20);
d3_draw = linspace(-305, 0, 400);
dem = 0;
x = zeros(1,400);
y = zeros(1,400);
    for i=1:20
        for j=1:20  
                dem = dem + 1;
                x(1,dem) = 250*cos(theta1_draw(i) + theta2_draw(j)) + 400*cos(theta1_draw(i));
                y(1,dem) = 250*sin(theta1_draw(i) + theta2_draw(j)) + 400*sin(theta1_draw(i));              
        end
    end
z = d3_draw+350;
[X,Y] = meshgrid(x,y);
[Y,Z] = meshgrid(y,z);
s = surf(handles.axes1,X,Y,Z,'FaceAlpha',0.5);
%s.EdgeColor = 'none';


% --- Executes when selected object is changed in WP_mode.
function WP_mode_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in WP_mode 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
mode = get(handles.WP_mode,'SelectedObject');      % lay thuoc tinh cua button group Workspace mode
string_mode = get(mode,'String');                    %xac dinh chuoi dang duoc chon tu button group
length_mode = strlength(string_mode);
if(length_mode == 7)
    s = wp(handles.axes1);
    s.FaceAlpha = 0.1;
elseif(length_mode == 4)
    s.FaceAlpha = 0;
    s.EdgeColor = 'none';
else
    s.FaceAlpha = 0;
    s.EdgeColor = 'blue';
end
    
