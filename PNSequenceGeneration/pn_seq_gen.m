clear
clc
G=63;  

sd1 =[0 0 0 0 1];            
PN1=[];                      
for j=1:G        
    PN1=[PN1 sd1(5)];
    if sd1(1)==sd1(4)
        temp1=0;
    else temp1=1;
    end
    sd1(1)=sd1(2);
    sd1(2)=sd1(3);
    sd1(3)=sd1(4);
    sd1(4)=sd1(5);
    sd1(5)=temp1;
end
subplot(3,1,1)
stem(PN1)
title('M-sequence generated by generator polynomial [45]')

sd2 =[0 0 0 0 1];             
PN2=[];                       
for j=1:G        
    PN2=[PN2 sd2(5)];
    if sd2(1)==sd2(2)
        temp1=0;
    else temp1=1;
    end
    if sd2(4)==temp1
        temp2=0;
    else temp2=1;
    end
    if sd2(5)==temp2
        temp3=0;
    else temp3=1;
    end
    sd2(1)=sd2(2);
    sd2(2)=sd2(3);
    sd2(3)=sd2(4);
    sd2(4)=sd2(5);
    sd2(5)=temp3;
end
subplot(3,1,2)
stem(PN2)
title('M-sequence generated by generator polynomial [67]')

sd3 =[0 0 0 0 1];           
PN3=[];                     
for j=1:G        
    PN3=[PN3 sd3(5)];
    if sd3(1)==sd3(2)
        temp1=0;
    else temp1=1;
    end
    if sd3(3)==temp1
        temp2=0;
    else temp2=1;
    end
    if sd3(4)==temp2
        temp3=0;
    else temp3=1;
    end
    sd3(1)=sd3(2);
    sd3(2)=sd3(3);
    sd3(3)=sd3(4);
    sd3(4)=sd3(5);
    sd3(5)=temp3;
end
subplot(3,1,3)
stem(PN3)
title('M-sequence generated by generator polynomial [75]')