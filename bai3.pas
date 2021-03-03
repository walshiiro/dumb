var fi,fo: text;
    n,i,d:longint;
    a:array[0..5] of longint;
begin
        assign(fi,'bai3.inp'); reset(fi);
        assign(fo,'bai3.out'); rewrite(fo);
        readln(fi,n);
        for i:=1 to n do
        begin
                read(fi,d);
                inc(a[d]);
        end;
        if a[3]<a[1] then
           dec(a[1],a[3])
        else
           a[1]:=0;
        inc(a[1],a[2]*2);
        Write(fo,a[4]+a[3]+((a[1]+3) div 4));
        close(fi); close(fo);
end.
