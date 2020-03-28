
clc
clear

printf("-----------------Construa a matriz-------------- \n")

n=input("Digite a ordem do tabuleiro : ");


M(n,n)=0

j=input("Digite o x da primeira dama: ");
i=input("Digite o y da primeira dama: ");
t=1;
jo=j;
io=i;
l1=0;
l2=0;
l3=0;
l4=0;
t1=0;
p=0;
while p<n
i=io;
j=jo;
p=0;
while p<n
l1=0;
l2=0;
l3=0;
l4=0;



  M(i,:)=1;
  M(:,j)=1;
 # printf("eai men\n");
  if (i-t>=1 && j-t>=1)
      M(i-t,j-t)=1;
      
    else
      l1=1;
  end

    if (i-t>=1 && j+t<=n)
    M(i-t,j+t)=1;
  else
    l2=1;
  end
  
    if (i+t<=n && j-t>=1)
    M(i+t,j-t)=1;
  else
    l3=1;
  end
  
    if (i+t<=n && j+t<=n)
    M(i+t,j+t)=1;
  else
    l4=1;
  end
  t=t+1;
  
 if(l1==1 &&l2==1 && l3==1 &l4==1)
#printf("oloko bixo\n");
 M(i,j)=2;
 p=p+1
 t1=0;
 t=1;

    while t1==0 && all(all(M))==0
    #  printf("asdasadsasd\n");
     i=1+floor(n*rand(1,1));
     j=1+floor(n*rand(1,1));
     if(M(i,j)==0)
      t1=1;
      end
    end
 if all(all(M))==1 && p!=n
 # printf("Tente mais uma vez ");
  break;
  
end
  
end


end
nza=M;

#printf("Tentaremos denovo")
M(:,:)=0;

end
printf("A matriz resultante ? :\n")
nza