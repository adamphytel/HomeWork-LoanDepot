Function get-first-duplicate{

param ([string]$testString)
$testString.ToCharArray()
$RepeatCharacterArray=@()

for ($i = 0; $i -le $testString.Length; $i++)
{

       for ($j =$i+1; $j -lt $testString.Length; $j++)
       {
            if ($testString[$i] -match $testString[$j])
            {
               $RepeatCharacterArray =$j
                                
            }
            
             
           $firstRepeatPosition = ($RepeatCharacterArray  | Measure -Minimum).Minimum 
           
        }

}
write-host "The first recuring character is " $testString[$firstRepeatPosition]
}


get-first-duplicate('abcdedcba')