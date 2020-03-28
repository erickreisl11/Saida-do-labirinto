
clc
clear

printf("-----------------Construa a matriz-------------- \n")

n=input("Digite a ordem da linha : ");
m=input("Digite a ordem da coluna: ");
nz=input("Digite a porcentagem de obstaculos (Recomendavel de 20% a 30%): ");
M(n,m)=0;

t=1;
j=1;
i=1;
while i<=n
  j=1;
while j<=m
 
   x=100*rand(1,1);
   if(x<(100-nz))
   M(i,j)=0;
  else
   M(i,j)=-1;
  end
  j=j+1;
  
end
i=i+1;

end
M;
m1=M
printf("-----------Digite os pontos de localizacoo do rato e do queijo--------\n") 
t=0;

while t!=1 
i=input("x do rato: ")
j=input("y do rato: ")
if(M(j,i)==-1)
printf("Local obstruido. Digite novamente")
continue

end
t=1;
end
M(j,i)=1;
m1(j,i)=1
io=i;
jo=j;
t=0;
 #Definindo a posi?ão do objeto
while t!=1 
iq=input("x do queijo: ")
jq=input("y do queijo: ")
if(M(jq,iq)==-1)
printf("Local obstruido. Digite novamente\n")
continue
end
t=1;
end


printf("------------------------Aqui que inicia -------------------------\n\n")

m1(jq,iq)=77
m1(jq,iq)=0;
l=input("Digite a ordem de precisao(Recomendavel de 10 a 30): ")
k=1;
QY=i;
QX=j;
j=QY;
i=QX;
caminho=1
t=0;
p=0;
min=inf;
total=100000;
while p<=l
 M

i=jo;
j=io;
caminho=1;
p=p+1;
M=m1;
total=0;
while (1)

 
  if(i==jq && j==iq)
 
    break
  else
    total=total+1;
 
   end

if(i!=1 && j!=1 && i!=n && j!=m)
  #Analise de quatro posi?ões 0
 
  if (M(i,j+1)==0 && M(i+1,j)==0 && M(i-1,j)==0 && M(i,j-1)==0)
      printf("Quatro variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
       x1=floor(4*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          i=i-1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
           
        end
        
        if(x1==2)
          caminho=caminho+1;
          i=i+1;
         M(i,j)=caminho;  
           
        end 
        
        if(x1==3)
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
                 
        end
        continue
  end
  
  #Analise de tres posi?ões 0
  printf("Tres variaveis\n")
    if (M(i,j+1)==0 && M(i+1,j)==0 && M(i-1,j)==0 )
     t=t+1;
     ip(t)=i;
      jp(t)=j;
       x1=floor(3*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          i=i-1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
           
        end
        
        if(x1==2)
          caminho=caminho+1;
         i=i+1;
         M(i,j)=caminho;
         
        end 
      continue
    end
  
  
  
  
    if (M(i,j+1)==0 && M(i+1,j)==0 &&  M(i,j-1)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;
  
         x1=floor(3*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
           
        end
        
        if(x1==2)
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
          
        end
        continue
    end   
    
    if (M(i,j+1)==0  && M(i-1,j)==0 && M(i,j-1)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;
        x1=floor(3*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
         i=i-1;
         M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
           
        end
        
        if(x1==2)
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
           
        end
        continue
      end  


    if (M(i+1,j)==0 && M(i-1,j)==0 && M(i,j-1)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;  
      x1=floor(3*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
         i=i-1;
         M(i,j)=caminho;
           
        end
        
        if(x1==2)
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
           
        end
        continue
    end  
  
  #Analise de duas posi?ões 0 
      printf("Duas variaveis\n")
    if (M(i,j+1)==0 && M(i+1,j)==0 )
      t=t+1;
      ip(t)=i;
      jp(t)=j;
        x1=floor(2*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
         i=i+1;
         M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1; 
          j=j+1;
          M(i,j)=caminho;
           
        end
        continue
    end  

    if (M(i,j+1)==0 && M(i-1,j)==0 )
      t=t+1;
      ip(t)=i;
      jp(t)=j;
        x1=floor(2*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          i=i-1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
            caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
           
        end
        continue
    end  
    if ( M(i+1,j)==0 && M(i-1,j)==0 )
      t=t+1;
      ip(t)=i;
      jp(t)=j;
        x1=floor(2*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;   
          i=i-1;
          M(i,j)=caminho;
         
        end
        continue
    end  
  
    if (M(i,j+1)==0 &&  M(i,j-1)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;
        x1=floor(2*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
           
        end
        continue        
    end  
 
    if (M(i+1,j)==0 && M(i,j-1)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;
        x1=floor(2*rand(1,1))
        if(x1==0)
          caminho=caminho+1; 
          j=j-1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
        end
        continue
    end  
  
    if (M(i-1,j)==0 && M(i,j-1)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;
        x1=floor(2*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          i=i-1;
          M(i,j)=caminho;
           
           
        end
        continue
    end  
   #Analise de posi?ão para 1 posi?ão
  
   printf("1 variavel\n")
    if (M(i,j-1)==0)
          caminho=caminho+1;
         j=j-1;
         M(i,j)=caminho;         
          
          continue
    end 
  
    if ( M(i-1,j)==0 )
          caminho=caminho+1;
          i=i-1;
          M(i,j)=caminho;
           
         continue
    end 
  
    if (M(i+1,j)==0)
          caminho=caminho+1;
           i=i+1;
           M(i,j)=caminho;
           
           continue
    end 
  
    if (M(i,j+1)==0 )
          caminho=caminho+1;
           j=j+1;
           M(i,j)=caminho;
           
           continue
    end 
  u=t;
#------------------Analise de posi?ão para 0 posi?ões------------
    if (M(i,j+1)!=0 && M(i+1,j)!=0 && M(i-1,j)!=0 && M(i,j-1)!=0)
       #Verifica a bifurca?ão do meio
       printf("olololololol\n")
       if(ip(u)!=1 && jp(u)!=1 && ip(u)!=n && jp(u)!=m)
       
       printf("----------eaimen\n")
         if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
            ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
         continue
         end

       end
          #Verifica a bifurca?ão de cima
         if(ip(u)==1 && jp(u)!=1&& jp(u)!=m)
          if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0  && M(ip(u),jp(u)-1)!=0)  
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
         continue 
          end
 
         end
   #Verifica a bifurca?ão de baixo
    if(ip(u)==n && jp(u)!=1 && jp(u)!=m)
       if(M(ip(u),jp(u)+1)!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;

        continue
      end
    end
   
    #Verifica a bifurca?ão lateral direita
    if(jp(u)==m && ip(u)!=1 && ip(u)!=n) 
      if(M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)

           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
        
        continue
      end
   
      
    end
    
    #Verifica a bifurca?ão lateral esquerda 
     if(jp(u)==1 && ip(u)!=1 && ip(u)!=n)
      if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 )
        
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
     
        continue
       end
     end
               printf("Voltamos atras")
        j=jp(u);
        i=ip(u);
  end
end
#------------Analise na primeira linha---------------

if(i==1 && j!=1&& j!=m)
  #Analise de tres variaveis
  printf("Analise na linha de cima\n")
    if (M(i,j+1)==0 && M(i+1,j)==0 &&  M(i,j-1)==0)
      printf("Analise de tres variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
  
         x1=floor(3*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
           
        end
        
        if(x1==2)
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
          
        end
        continue
    end


  #Analise de duas variaveis
    if (M(i,j+1)==0 && M(i,j-1)==0)
          printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            j=j-1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            j=j+1;
            M(i,j)=caminho;
             
          end
          continue
    end
  
    if (M(i,j+1)==0 && M(i+1,j)==0)
      printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
        x1=floor(2*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
           
        end
        continue
    end
  
    if (M(i,j-1)==0 && M(i+1,j)==0)
      printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
        x1=floor(2*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
           
        end
        continue
    end
    
    #Analise de uma variavel

        if (M(i,j+1)==0 )
              printf("Analise de uma variavel\n")
 
        
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
          
          continue
        end
        
        if (M(i+1,j)==0 )
              printf("Analise de uma variavel\n")

       
        
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
          continue
        end
       
        if (M(i,j-1)==0 )
              printf("Analise de uma variavel\n")

        
        
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
          
          continue
        end
   u=t;
#------------------Analise de posi?ão para 0 posi?ões------------
    if (M(i,j+1)!=0 && M(i,j-1)!=0 && M(i+1,j)!=0)
       #Verifica a bifurca?ão do meio
       printf("olololololol\n")
       if(ip(u)!=1 && jp(u)!=1 && ip(u)!=n && jp(u)!=m)
       
       printf("----------eaimen\n")
         if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
            ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
       continue
         end
   
       end
          #Verifica a bifurca?ão de cima
         if(ip(u)==1 && jp(u)!=1&& jp(u)!=m)
          if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0  && M(ip(u),jp(u)-1)!=0)  
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
            continue 
          end
      
         end
   #Verifica a bifurca?ão de baixo
    if(ip(u)==n && jp(u)!=1 && jp(u)!=m)
       if(M(ip(u),jp(u)+1)!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;

        continue
      end
    end
   
    #Verifica a bifurca?ão lateral direita
    if(jp(u)==m && ip(u)!=1 && ip(u)!=n) 
      if(M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)

           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
        
        continue
      end
    end
    
    #Verifica a bifurca?ão lateral esquerda 
     if(jp(u)==1 && ip(u)!=1 && ip(u)!=n)
      if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 )
        
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
   
        continue
       end
     end
                         printf("Voltamos atras\n");  
        j=jp(u);
        i=ip(u); 
  end
    
end

#------Ultima linha-------------------------------------
  
  if(i==n && j!=1 && j!=m)
    #Analise de tres variaveis
    printf("Analise na linha de baixo\n")
    
    if(M(i-1,j)==0 && M(i,j+1)==0 && M(i,j-1)==0)
      printf("Analise de tres variaveis \n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
      x1=floor(3*rand(1,1))
      if(x1==0)
            caminho=caminho+1;
            j=j-1;
            M(i,j)=caminho;
            
      end
          
          if(x1==1)
            caminho=caminho+1;
            j=j+1;
            M(i,j)=caminho;
             
          end
          
         if(x1==1)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
             
          end
          continue

      end
  
    #Analise de duas variaveis
    if(M(i,j+1)==0 && M(i,j-1)==0)
        printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            j=j-1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            j=j+1;
            M(i,j)=caminho;
             
          end
          continue
    end
    
    if(M(i-1,j)==0 && M(i,j-1)==0)
        printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            j=j-1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
             
          end
          continue
    end
    
    if(M(i-1,j)==0 && M(i,j+1)==0)
        printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            j=j+1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
            
          end
          continue
    end
    #Analise de uma variavel
    
    if(M(i,j+1)==0)
      caminho=caminho+1;
      j=j+1;
      M(i,j)=caminho;
      
      continue
    end
  
      if(M(i,j-1)==0)
      caminho=caminho+1;
      j=j-1;
      M(i,j)=caminho;
      
      continue
    end
  
      if(M(i-1,j)==0)
      caminho=caminho+1;
      i=i-1;
      M(i,j)=caminho;
      
      continue
    end
    
  u=t;
#------------------Analise de posi?ão para 0 posi?ões------------
    if (M(i,j+1)!=0 && M(i-1,j)!=0 && M(i,j-1)!=0)
       #Verifica a bifurca?ão do meio
       printf("olololololol\n")
       if(ip(u)!=1 && jp(u)!=1 && ip(u)!=n && jp(u)!=m)
       
       printf("----------eaimen\n")
         if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
            ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
            continue
         end
         
       end
          #Verifica a bifurca?ão de cima
         if(ip(u)==1 && jp(u)!=1&& jp(u)!=m)
          if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0  && M(ip(u),jp(u)-1)!=0)  
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
            continue
          end
          
         end
   #Verifica a bifurca?ão de baixo
    if(ip(u)==n && jp(u)!=1 && jp(u)!=m)
       if(M(ip(u),jp(u)+1)!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
 
            continue
      end
    end
   
    #Verifica a bifurca?ão lateral direita
    if(jp(u)==m && ip(u)!=1 && ip(u)!=n) 
      if(M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)

           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;

            continue
      end
    end
    
    #Verifica a bifurca?ão lateral esquerda 
     if(jp(u)==1 && ip(u)!=1 && ip(u)!=n)
      if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 )
        
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;

             continue
       end
     end
     
             printf("Voltamos atras\n");  
        j=jp(u);
        i=ip(u); 
  end
        
  end
  
  
  
     
#-------------Analise na linha direita--------------
 if(j==m && i!=1 && i!=n)    
       
       printf("Analise na lateral direita\n")
     if(M(i,j-1)==0 && M(i-1,j)==0 && M(i+1,j)==0)
        #Analise e tres variaveis 
      
      printf("Analise de tres variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
  
         x1=floor(3*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
           
        end
        
        if(x1==2)
          caminho=caminho+1;
          i=i-1;
          M(i,j)=caminho;
          
        end
        continue
    end
     
     #Analise de duas variaveis
     
     if(M(i-1,j)==0 && M(i+1,j)==0)
     
     printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i+1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
            
          end
          continue
     end
     
    if(M(i-1,j)==0 && M(i,j-1)==0)
     
     printf("Analise de duas variaveis\n")
       t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            j=j-1;
            M(i,j)=caminho;
            
          end
          continue
     end
     
          if(M(i-1,j)==0 && M(i,j-1)==0)
     
     printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            j=j-1;
            M(i,j)=caminho;
            
          end
          continue
     end
     
     #Analise de uma variavel
     
      if (M(i,j-1)==0 )
              printf("Analise de uma variavel\n")

          x1=round(rand(1,1))
        
          caminho=caminho+1;
          j=j-1;
          M(i,j)=caminho;
          
          continue
        end
     
      if (M(i-1,j)==0 )
              printf("Analise de uma variavel\n")

          x1=round(rand(1,1))
        
          caminho=caminho+1;
          i=i-1;
          M(i,j)=caminho;
          
          continue
        end
     
          if (M(i+1,j)==0 )
              printf("Analise de uma variavel\n")

          x1=round(rand(1,1))
        
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
          continue
        end
   u=t;
#------------------Analise de posi?ão para 0 posi?ões------------
    if ( M(i+1,j)!=0 && M(i-1,j)!=0 && M(i,j-1)!=0)
       #Verifica a bifurca?ão do meio
       printf("olololololol\n")
       if(ip(u)!=1 && jp(u)!=1 && ip(u)!=n && jp(u)!=m)
       
       printf("----------eaimen\n")
         if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
            ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
             continue
         end
        
       end
          #Verifica a bifurca?ão de cima
         if(ip(u)==1 && jp(u)!=1&& jp(u)!=m)
          if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0  && M(ip(u),jp(u)-1)!=0)  
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
            continue
          end
           
         end
   #Verifica a bifurca?ão de baixo
    if(ip(u)==n && jp(u)!=1 && jp(u)!=m)
       if(M(ip(u),jp(u)+1)!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
  
            continue
      end
    end
   
    #Verifica a bifurca?ão lateral direita
    if(jp(u)==m && ip(u)!=1 && ip(u)!=n) 
      if(M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)

           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;

        continue
      end
    end
    
    #Verifica a bifurca?ão lateral esquerda 
     if(jp(u)==1 && ip(u)!=1 && ip(u)!=n)
      if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 )
        
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
   
        continue
       end
     end
             printf("Voltamos atras\n");  
        j=jp(u);
        i=ip(u); 
  end
  
end  
    
#---------------Analise da linha esquerda -----------------------
    
 if(j==1 && i!=1 && i!=n)
 
 
 printf("Analise na lateral esquerda\n")
    if(M(i,j+1)==0 && M(i-1,j)==0 && M(i+1,j)==0)
        #Analise e tres variaveis 
      
      printf("Analise de tres variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
  
         x1=floor(3*rand(1,1))
        if(x1==0)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
        end
        
        if(x1==1)
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
           
        end
        
        if(x1==2)
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
        end
        continue
    end
 
  #Analise de duas variaveis

  if(M(i-1,j)==0 && M(i+1,j)==0)
     
     printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i+1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
            
          end
          continue
     end
     
     if(M(i,j+1)==0 && M(i+1,j)==0)
     
     printf("Analise de duas variaveis\n")
       t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i+1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            j=j+1;
            M(i,j)=caminho;
            
          end
          continue
     end
     
     if(M(i-1,j)==0 && M(i,j+1)==0)
     
     printf("Analise de duas variaveis\n")
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            j=j+1;
            M(i,j)=caminho;
            
          end
          continue
     end
     
  #Analise de uma variavel
 
 
          if (M(i-1,j)==0 )
          printf("Analise de uma variavel\n")
        
          caminho=caminho+1;
          i=i-1;      
          M(i,j)=caminho;
          
          continue
        
      end
      
        if (M(i+1,j)==0 )
          printf("Analise de uma variavel\n")
        
          caminho=caminho+1;
          i=i+1;
          M(i,j)=caminho;
          
          continue
        
      end
      
        if (M(i,j+1)==0 )
          printf("Analise de uma variavel\n") 
          caminho=caminho+1;
          j=j+1;
          M(i,j)=caminho;
          
          continue
        end
        
   u=t;
#------------------Analise de posi?ão para 0 posi?ões------------
    if (M(i,j+1)!=0 && M(i+1,j)!=0 && M(i-1,j)!=0)
       #Verifica a bifurca?ão do meio
       printf("olololololol\n")
       if(ip(u)!=1 && jp(u)!=1 && ip(u)!=n && jp(u)!=m)
       
       printf("----------eaimen\n")
         if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
            ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
             continue
         end
        
       end
          #Verifica a bifurca?ão de cima
         if(ip(u)==1 && jp(u)!=1&& jp(u)!=m)
          if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0  && M(ip(u),jp(u)-1)!=0)  
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
            continue 
          end
         
         end
   #Verifica a bifurca?ão de baixo
    if(ip(u)==n && jp(u)!=1 && jp(u)!=m)
       if(M(ip(u),jp(u)+1)!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
        
    
            continue
      end
    end
   
    #Verifica a bifurca?ão lateral direita
    if(jp(u)==m && ip(u)!=1 && ip(u)!=n) 
      if(M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)

           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
 
        continue
      end
    end
    
    #Verifica a bifurca?ão lateral esquerda 
     if(jp(u)==1 && ip(u)!=1 && ip(u)!=n)
      if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 )
        
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
  
        continue
       end
     end
             printf("Voltamos atras\n");  
        j=jp(u);
        i=ip(u); 
  end

end

#----------Analise dos quatro cantos****************************
 #canto superior esquerdo---------------------------
 if(i==1 && j==1)   
    #analise de duas variaveis
    printf("Analise em duas variaveis\n")
    if(M(i,j+1)==0 && M(i+1,j)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i+1;
            M(i,j)=caminho;
            
          end
          
          if(x1==1)
            caminho=caminho+1;
            j=j+1;
            M(i,j)=caminho;
            
          end
          continue
    end
    
    #Analise de uma variavel
   
    if(M(i,j+1)==0)
       printf("Analise em uma variavel M(1,1)\n")
       caminho=caminho+1;
       j=j+1;
       M(i,j)=caminho;
       
       continue
    end
    
        
    
    if(M(i+1,j)==0)
        printf("Analise em uma variavel M(1,1)\n")
        caminho=caminho+1;
        i=i+1;
        M(i,j)=caminho;
        
        continue
    end
   u=t;
#------------------Analise de posi?ão para 0 posi?ões------------
    if (M(i,j+1)!=0 && M(i+1,j)!=0 )
       #Verifica a bifurca?ão do meio
       printf("olololololol\n")
       if(ip(u)!=1 && jp(u)!=1 && ip(u)!=n && jp(u)!=m)
       
       printf("----------eaimen\n")
         if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
            ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
             continue
         end
       end
       
          #Verifica a bifurca?ão de cima
         if(ip(u)==1 && jp(u)!=1 && jp(u)!=m)
          if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0  && M(ip(u),jp(u)-1)!=0)  
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
            continue 
          end
          
         end
         
   #Verifica a bifurca?ão de baixo
    if(ip(u)==n && jp(u)!=1 && jp(u)!=m)
       if(M(ip(u),jp(u)+1)!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1; 
        continue
      end
    end
   
    #Verifica a bifurca?ão lateral direita
    if(jp(u)==m && ip(u)!=1 && ip(u)!=n) 
      if(M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)

           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
   
        continue
      end
    end
    
    #Verifica a bifurca?ão lateral esquerda 
     if(jp(u)==1 && ip(u)!=1 && ip(u)!=n)
      if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 )
        
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;

        continue
       end
     end
     
        printf("Voltamos atras\n");  
        j=jp(u);
        i=ip(u);
  end
    
    
 end
 
  #canto superior direito------------------------------------
 if(i==1 && j==m)   
    #analise de duas variaveis
    printf("Analise em duas variaveis\n")
    if(M(i,j-1)==0 && M(i+1,j)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i+1;
            M(i,j)=caminho;
            
          end
         
          if(x1==1)
            caminho=caminho+1;
            j=j-1;
            M(i,j)=caminho;
            
          end
          continue
    end
    
          #Analise de uma variavel
    if(M(i,j-1)==0)
       printf("Analise em uma variavel M(1,1)\n")
       caminho=caminho+1;
       j=j-1;
       M(i,j)=caminho;
       
       continue
    end
    
    if(M(i+1,j)==0)
        printf("Analise em uma variavel M(1,1)\n")
        caminho=caminho+1;
        i=i+1;
        M(i,j)=caminho;
        
        continue
    end
   u=t;
#------------------Analise de posi?ão para 0 posi?ões------------
    if (M(i+1,j)!=0 && M(i,j-1)!=0)
       #Verifica a bifurca?ão do meio
       printf("olololololol\n")
       if(ip(u)!=1 && jp(u)!=1 && ip(u)!=n && jp(u)!=m)
       
       printf("----------eaimen\n")
         if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
            ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
            continue
         end
         
       end
          #Verifica a bifurca?ão de cima
         if(ip(u)==1 && jp(u)!=1&& jp(u)!=m)
          if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0  && M(ip(u),jp(u)-1)!=0)  
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
             continue 
          end

         end
   #Verifica a bifurca?ão de baixo
    if(ip(u)==n && jp(u)!=1 && jp(u)!=m)
       if(M(ip(u),jp(u)+1)!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
 
        continue
      end
    end
   
    #Verifica a bifurca?ão lateral direita
    if(jp(u)==m && ip(u)!=1 && ip(u)!=n) 
      if(M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)

           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;

        continue
      end
    end
    
    #Verifica a bifurca?ão lateral esquerda 
     if(jp(u)==1 && ip(u)!=1 && ip(u)!=n)
      if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 )
        
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
  
        continue
       end
     end
           printf("Voltamos atras\n");  
        j=jp(u);
        i=ip(u);
  end
    
 end
 
  #----------canto inferior direito-------------------------------
 if(i==n && j==m)   
    #analise de duas variaveis
    printf("Analise em duas variaveis\n")
    if(M(i,j-1)==0 && M(i-1,j)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
            
          end
         
          if(x1==1)
            caminho=caminho+1;
            j=j-1;
            M(i,j)=caminho;
            
          end
          continue
    end
    
          #Analise de uma variavel
    if(M(i,j-1)==0)
       printf("Analise em uma variavel M(1,1)\n")
       caminho=caminho+1;
       j=j-1;
       M(i,j)=caminho;
       
       continue
    end
    
    if(M(i-1,j)==0)
        printf("Analise em uma variavel M(1,1)\n")
        caminho=caminho+1;
        i=i-1;
        M(i,j)=caminho;
        
        continue
    end
  u=t;
#------------------Analise de posi?ão para 0 posi?ões------------
    if ( M(i-1,j)!=0 && M(i,j-1)!=0)
       #Verifica a bifurca?ão do meio
       printf("olololololol\n")
       if(ip(u)!=1 && jp(u)!=1 && ip(u)!=n && jp(u)!=m)
       
       printf("----------eaimen\n")
         if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
            ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
           continue
         end
    
       end
          #Verifica a bifurca?ão de cima
         if(ip(u)==1 && jp(u)!=1&& jp(u)!=m)
          if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0  && M(ip(u),jp(u)-1)!=0)  
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
          continue
          end
 
         end
   #Verifica a bifurca?ão de baixo
    if(ip(u)==n && jp(u)!=1 && jp(u)!=m)
       if(M(ip(u),jp(u)+1)!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;

        continue
      end
    end
   
    #Verifica a bifurca?ão lateral direita
    if(jp(u)==m && ip(u)!=1 && ip(u)!=n) 
      if(M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)

           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
   
        continue
      end
    end
    
    #Verifica a bifurca?ão lateral esquerda 
     if(jp(u)==1 && ip(u)!=1 && ip(u)!=n)
      if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 )
        
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
  
        continue
       end
     end
                         printf("Voltamos atras\n");  
        j=jp(u);
        i=ip(u);
  end
  
 end
 
  
  #canto inferior esquerdo----------------------------------------
 if(i==n && j==1)   
    #analise de duas variaveis
    printf("Analise em duas variaveis\n")
    if(M(i,j+1)==0 && M(i-1,j)==0)
      t=t+1;
      ip(t)=i;
      jp(t)=j;
          x1=floor(2*rand(1,1))
          if(x1==0)
            caminho=caminho+1;
            i=i-1;
            M(i,j)=caminho;
            
          end
         
          if(x1==1)
            caminho=caminho+1;
            j=j+1;
            M(i,j)=caminho;
            
          end
          continue
    end
    
          #Analise de uma variavel
    if(M(i,j+1)==0)
       printf("Analise em uma variavel M(1,1)\n")
       caminho=caminho+1;
       j=j+1;
       M(i,j)=caminho;
       
       continue
    end
    
    if(M(i-1,j)==0)
        printf("Analise em uma variavel M(1,1)\n")
        caminho=caminho+1;
        i=i-1;
        M(i,j)=caminho;
        
        continue
    end
    
   u=t;
#------------------Analise de posi?ão para 0 posi?ões------------
    if (M(i,j+1)!=0  && M(i-1,j)!=0 )
       #Verifica a bifurca?ão do meio
       printf("olololololol\n")
       if(ip(u)!=1 && jp(u)!=1 && ip(u)!=n && jp(u)!=m)
       
       printf("----------eaimen\n")
         if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
            ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
         continue
         end

       end
          #Verifica a bifurca?ão de cima
         if(ip(u)==1 && jp(u)!=1&& jp(u)!=m)
          if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0  && M(ip(u),jp(u)-1)!=0)  
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
         continue
          end

         end
   #Verifica a bifurca?ão de baixo
    if(ip(u)==n && jp(u)!=1 && jp(u)!=m)
       if(M(ip(u),jp(u)+1)!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
  
        continue
      end
    end
   
    #Verifica a bifurca?ão lateral direita
    if(jp(u)==m && ip(u)!=1 && ip(u)!=n) 
      if(M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 && M(ip(u),jp(u)-1)!=0)

           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
 
        continue
      end
    end
    
    #Verifica a bifurca?ão lateral esquerda 
     if(jp(u)==1 && ip(u)!=1 && ip(u)!=n)
      if(M(ip(u),jp(u)+1)!=0 && M(ip(u)+1,jp(u))!=0 && M(ip(u)-1,jp(u))!=0 )
        
           ip(u)=[];
            jp(u)=[];
            t=t-1;
            u=u-1;
 
        continue
       end
     end
        printf("Voltamos atras\n");  
        j=jp(u);
        i=ip(u); 
     
  end
    
 end
end
    if(total<min)
  printf("Oloko bixo\n")
   min=total;
    matmin=M;
    matmin
  end
end
matmin




