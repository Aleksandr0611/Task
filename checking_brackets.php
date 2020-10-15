<?php
$search = "'([0-9-+*=/])+'";

$replace = "";
$document = "5*(4-2)";

$text = preg_replace($search, $replace, $document);


   $s = $text;
   $c = strlen($s);
  function checking_brackets($s, $c)
   {
   	 $counter = 0;
     for ($i = 0; $i<$c; $i++)
        {
   	       if ($s[$i] == '(')
   	        {
              $counter++;
   	        }
           else
   	        {
              $counter--;
            }
           if ($counter < 0)
            {
    	      echo "false";           //Закрывающих скобок больше нормы
              return false;
            }

        }
     if($counter == 0)
        {
    	  echo "True";                //Открывающих и закрывающих скобок одинаково и они правильно расположены
        }
     else
        {
    	  echo "False";               //Открывающих скобок больше нормы
        }
   }

   echo checking_brackets($s, $c);

?>
