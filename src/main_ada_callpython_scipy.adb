
-- IMPORT STANDARD ADA PACKAGES
with Ada.Text_IO;   -- use  Ada.Text_IO;
with Ada.Real_Time; -- use  Ada.Real_Time;
-- with Interfaces;

-- IMPORT USER-DEFINED ADA PACKAGES 
-- (LOOKS FOR CORRESPONDING NAMED .ads FILE)
with pkg_ada_datetime_stamp;
with pkg_ada_realtime_delays;
with pkg_ada_callpython_module;

-- ========================================================
procedure main_ada_callpython_scipy 
-- ========================================================
is   
   -- IMPORT STANDARD ADA PACKAGES
-- RENAME STANDARD ADA PACKAGES FOR CONVENIENCE
   package ATIO   renames Ada.Text_IO;
   package ART    renames Ada.Real_Time;
      
   -- RENAME USER-DEFINED ADA PACKAGES FOR CONVENIENCE
   package PADTS  renames pkg_ada_datetime_stamp;
   package PARD   renames pkg_ada_realtime_delays;
   package PACPM  renames pkg_ada_callpython_module;
   
   -- VARIABLE DECLARATIONS
   startClock, finishClock   : ART.Time;  
      
   -- ModuleDir  : String := "src/mod-python/"; 
   -- ModuleName_01 : String := "python_module_01";  -- No need .py suffix
   -- ModuleName_02 : String := "python_module_02";  -- No need .py suffix
     
   -- Module_01 : PACPM.Module;
   -- Module_02 : PACPM.Module;
   
   -- A : Integer := 10;
   -- B : Integer := 2;
   -- Result : Integer;
   
-- ========================================================   
begin  -- FOR procedure MAIN
   startClock := ART.Clock; PADTS.dtstamp;
   ATIO.Put_Line ("STARTED: main Bismillah 3 times WRY");
   ATIO.New_Line;
   
   -- CODE BEGINS HERE
  
  
  
   PACPM.Initialize;

   ATIO.Put_Line ("Executing... PACPM.Execute_String (""import scipy as scp"") ");
   PACPM.Execute_String ("import scipy as scp");
   
   PACPM.Finalize;
   
  
  
    
   -- CODE ENDS HERE
   -- =====================================================
   ATIO.New_Line; PADTS.dtstamp;
   ATIO.Put ("ENDED: main Alhamdulillah 3 times WRY. ");
   finishClock := ART.Clock;
   PARD.exec_display_execution_time(startClock, finishClock); 
   
-- ========================================================   
end main_ada_callpython_scipy;
-- ========================================================

