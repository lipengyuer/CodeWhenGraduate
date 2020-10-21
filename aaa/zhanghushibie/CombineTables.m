s1='C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\data2014\asd.txt';
s2='C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\data2014\asd1.txt';
% CombineTables(s1,s2)%合并两个表，例如第一列都为uid的两个表，将相同用户的数据合起来
Num_hang = 1976;%表的行数

fid1 = fopen(s1);
for n = 1:Num_hang
    a=fgetl(fid1);
    b=regexp(a,' ','split');
    uid1(n,1) = str2num(b{1});
end
fclose(fid1);
 
fid2 = fopen(s2);
for n = 1:Num_hang
    a=fgetl(fid2);
    b=regexp(a,' ','split');
    uid2(n,1) = str2num(b{1});
end
fclose(fid2);

for n = 1:Num_hang
    for m = 1:Num_hang
        if(uid2(m) == uid1(n))
            Order(n,1) = m;
        end
    end
end