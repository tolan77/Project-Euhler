%%Problem 11
clear all
%%What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?
data = importdata('11data.txt'); %imports the 20x20 grid from the text file.

%%Horizontal product test
%%first need to grab all possible horizontal data
numprod = 4;
hori_data = zeros(1,20);
larg_hori_product =cell(1,2);
larg_hori_product{1} = 0;
larg_hori_product{2} = [];

j = 1;
while j <= 20
    
    for i = 1:1:20
        hori_data(i) = data(j,i);
    end

    temp_hori_product = greatest_Product(hori_data,numprod);
    if temp_hori_product{1} > larg_hori_product{1}
        larg_hori_product = temp_hori_product;
    end
    j = j+1;
end
    
%%Vertical Product Test
numprod = 4;
vert_data = zeros(1,20);
larg_vert_product =cell(1,2);
larg_vert_product{1} = 0;
larg_vert_product{2} = [];

j = 1;
while j <= 20
    
    for i = 1:1:20
        vert_data(i) = data(i,j);
    end

    temp_vert_product = greatest_Product(vert_data,numprod);
    if temp_vert_product{1} > larg_vert_product{1}
        larg_vert_product = temp_vert_product;
    end
    j = j+1;
end



%Diagonal Product Test
numprod = 4;
larg_diag_product =cell(1,2);
larg_diag_product{1} = 0;
larg_diag_product{2} = [];

%%Downward/Rightward Diagonal first%%
%uncomment for testing
%downdiag_row = cell(1,100);
%downdiag_col = cell(1,100);
%%ldiag = 1;

for j = 1:1:20
    h = 0;
    while j+h <=20
        downdiag_rowtemp(h+1) = data(1+h,j+h);
        downdiag_coltemp(h+1) = data(j+h,1+h);
        h = h+1;
    end
   %Uncomment to monitor the actual diagonals it's getting
   % downdiag_row{1,ldiag} = downdiag_rowtemp;
   % downdiag_col{1,ldiag} = downdiag_coltemp;
   % ldiag = ldiag+1; 
       temp_diag_prod1 = greatest_Product(downdiag_rowtemp,numprod);
       temp_diag_prod2 = greatest_Product(downdiag_coltemp,numprod);
    if temp_diag_prod1{1} > larg_diag_product{1}
        larg_diag_product = temp_diag_prod1;
    elseif temp_diag_prod2{1} > larg_diag_product{1}
        larg_diag_product = temp_diag_prod2;
    end
        
    downdiag_rowtemp = [];
    downdiag_coltemp = [];
    
end
  
%%Upward/forward Diagonal%%
backdiag_row = cell(1,100);
backdiag_col = cell(1,100);
ldiag = 1;

for j = 20:-1:1
    h = 0;
    while j-h >= 1
        backdiag_rowtemp(h+1) = data(1+h,j-h);
        backdiag_coltemp(h+1) = data(j-h,1+h);
        h = h+1;
    end
% Uncomment to monitor the actual diagonals it's getting
%    backdiag_row{1,ldiag} = downdiag_rowtemp;
%    backdiag_col{1,ldiag} = downdiag_coltemp;
%    ldiag = ldiag+1; 
   
      temp_diag_prod1 = greatest_Product(backdiag_rowtemp,numprod);
      temp_diag_prod2 = greatest_Product(backdiag_coltemp,numprod);
   if temp_diag_prod1{1} > larg_diag_product{1}
       larg_diag_product = temp_diag_prod1;
   elseif temp_diag_prod2{1} > larg_diag_product{1}
       larg_diag_product = temp_diag_prod2;
   end
        
    backdiag_rowtemp = [];
    backdiag_coltemp = [];
    
end    
    
        



%%Final largest product test.
highprod = zeros([1,3]);
highprod(1) = larg_hori_product{1};
highprod(2) = larg_vert_product{1};
highprod(3) = larg_diag_product{1};
highprod = max(highprod);
disp(highprod);
