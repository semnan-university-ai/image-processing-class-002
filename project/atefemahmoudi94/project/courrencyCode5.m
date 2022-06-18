clc;clear;close all

%path folder set and check
pathDir = 'datasource';
if ~isfolder(pathDir)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', pathDir);
  uiwait(warndlg(errorMessage));
  return;
end

%variable defining
f1 = figure;
f2 = figure;

x=200;
y=400;

alpha=16;

filePattern = fullfile(pathDir, '*.jpg');
imgfiles = dir(filePattern);
N=length(imgfiles);

s = struct;
datastract=repmat(s,1,length(imgfiles));

file = cell(1,N);
img_src = cell(1,N);
hsv_src = cell(1,N);
hue_src = cell(1,N);
sat_src = cell(1,N);
val_src = cell(1,N);
his_src = cell(1,N);
rsh_src = cell(1,N);
maen_src = cell(1,N);
varr_src = cell(1,N);
var_src = cell(1,N);
mean_E = cell(1,N);
varr_E = cell(1,N);
var_E = cell(1,N);
asim_Cm = cell(1,N);
asim_Cv = cell(1,N);
asim_Cc = cell(1,N);
ssimval_E = cell(1,N);

%img_test = imread("datatest\image (78).jpg");
 [fileName,filePath] = uigetfile('*', 'Select data file currency', '.');
if filePath==0
    error('None selected!'); 
end
img_test = imread(fullfile(filePath,fileName));

img_test = imresize(img_test, [x, y]);
hsv_test = rgb2hsv(img_test);
[hue_test,sat_test,val_test] = imsplit(hsv_test);
% hue_test=histeq(hue_test);
% sat_test=histeq(sat_test);
% val_test=histeq(val_test);

[his_test,~] = imhist(hue_test);
rsh_test = reshape(his_test,[],alpha);
maen_test = mean(rsh_test);
var_test = var(his_test);
varr_test = var(rsh_test);
figure(f1);
subplot(3,3,1),imshow(img_test,[]),title("orginal");
subplot(3,3,2),imshow(hsv_test,[]),title("hsv");
subplot(3,3,4),imshow(hue_test,[]),title("hue");
subplot(3,3,7),imhist(hue_test),title("hue");
subplot(3,3,5),imshow(sat_test,[]),title("sat");
subplot(3,3,8),imhist(sat_test),title("sat");
subplot(3,3,6),imshow(val_test,[]),title("val");
subplot(3,3,9),imhist(val_test),title("val");
figure(f2);
subplot(ceil(N/7),7,1),imshow(rsh_test,[]),title("orginal");

for n = 1 : N
    mean_Et=0;
    var_Et=0;
    varr_Et=0;
    asim_Cmt=0;
    asim_Cvt=0;
    asim_Cct=0;
    datastract(n).index=n;
    filename = imgfiles(n).name;
    datastract(n).filename = string(imgfiles(n).name);
    txtcurrency = split(imgfiles(n).name,["(",")"]);
    datastract(n).txt = string(txtcurrency(2));
    fullFileName = fullfile(pathDir, filename);
    
    filee = imread(fullFileName);
    img_src{n} = imresize(filee, [x, y]);
    hsv_src{n} = rgb2hsv(img_src{n});
    [hue_src{n},sat_src{n},val_src{n}] = imsplit(hsv_src{n});
%     hue_src{n}=histeq(hue_src{n});
%     sat_src{n}=histeq(sat_src{n});
%     val_src{n}=histeq(val_src{n});
    [his_src{n},~] = imhist(hue_src{n});
    rsh_src{n} = reshape(his_src{n},[],alpha);
    maen_src{n} = mean(rsh_src{n});
    var_src{n} = var(his_src{n});
    varr_src{n}= var(rsh_src{n});
    
    %[ssimval,~] = ssim(img_test,img_src{n});
    [ssimval,~] = ssim(sat_test,sat_src{n});
    
    %hist = [hist, imhist(hsv_src{n})]; %#ok
    for i=1:alpha
        mm=maen_src{n}(i);
        mt=maen_test(i);
        mc=(mm*mt)/(mm^2+mt^2);
        
        vv=varr_src{n}(i);
        vt=varr_test(i);
        vc=(vv*vt)/(vv^2+vt^2);
        
        mean_Et = mean_Et + (maen_src{n}(i)-maen_test(i))^2;
        varr_Et = varr_Et + (varr_src{n}(i)-varr_test(i))^2;
        asim_Cmt = asim_Cmt + mc;
        asim_Cvt = asim_Cvt + vc;
        
        %rsh_src{n}(:,i)
        %rsh_test(:,i)
        covmat=cov(rsh_src{n}(:,i),rsh_test(:,i));
        co=covmat(1,2);c1=covmat(1,1);c2=covmat(2,2);
        cc=(co/((c1*c2)+0.000000000000001));
        asim_Cct = asim_Cct + cc;
    end
   
    mean_E{n}=mean_Et;
    varr_E{n}=varr_Et;
    asim_Cm{n}=asim_Cmt;
    asim_Cv{n}=asim_Cvt;
    asim_Cc{n}=asim_Cct;
    ssimval_E{n}=ssimval;
    datastract(n).deltamean = mean_Et;
    datastract(n).deltavar = varr_Et;
    datastract(n).asimmean = asim_Cmt;
    datastract(n).asimvar = asim_Cvt;
    datastract(n).asimcov = asim_Cct;
    datastract(n).ssimval = ssimval;

   
    subplot(ceil((N+1)/7),7,n+1),imshow(rsh_src{n},[]),title({filename,num2str(ssimval)});
end


%imshow(hsv_src{2})
%imshow(hue_src{1}, []);
%imshow(rsh_src{1},[]);
%maen_src{1}(2)

mean_E;
MinVal=min(cell2mat(mean_E));
[~,yy]=find([mean_E{:}]==MinVal);
disp("mean = "+datastract(yy).txt)

varr_E;
MinVal=min(cell2mat(varr_E));
[~,yy]=find([varr_E{:}]==MinVal);
disp("variance = "+datastract(yy).txt)

asim_Cm;
MinVal=max(cell2mat(asim_Cm));
[~,yy]=find([asim_Cm{:}]==MinVal);
disp("mean normal= "+string(datastract(yy).txt))

asim_Cv;
MinVal=max(cell2mat(asim_Cv));
[~,yy]=find([asim_Cv{:}]==MinVal);
disp("variance normal = "+string(datastract(yy).txt))

asim_Cc;
MinVal=max(cell2mat(asim_Cc));
[~,yy]=find([asim_Cc{:}]==MinVal);
disp("covariance = "+string(datastract(yy).txt))

ssimval_E;
MinVal=max(cell2mat(ssimval_E));
[~,yy]=find([ssimval_E{:}]==MinVal);
disp("SSIM = "+string(datastract(yy).txt));