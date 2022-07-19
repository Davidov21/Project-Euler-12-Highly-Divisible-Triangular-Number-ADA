with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   I : Integer :=1;
   J : Integer :=1;
   Test : Integer := 1;
   Update : Integer;
   Count: Integer :=0;

begin
   loop
      J:=1;
      Count:=0;
      While (J*J)<=Test loop

         if (Test mod J)=0 then

            Count:= Count+1;
            if Count=250 then
               Put_Line(Integer'Image(Test));
               return;
            end if;

         end if;
         J:=J+1;
      end loop;


      Test := 0;
      for Update in 1..I loop
         Test := Test + Update;

      end loop;
      I := I + 1;
   end loop;

end Main;
