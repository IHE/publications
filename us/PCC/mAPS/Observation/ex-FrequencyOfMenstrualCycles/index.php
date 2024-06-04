<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Observation-ex-FrequencyOfMenstrualCycles.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Observation-ex-FrequencyOfMenstrualCycles.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Observation-ex-FrequencyOfMenstrualCycles.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Observation-ex-FrequencyOfMenstrualCycles.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Observation-ex-FrequencyOfMenstrualCycles.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Observation-ex-FrequencyOfMenstrualCycles.html');
else 
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Observation-ex-FrequencyOfMenstrualCycles.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
