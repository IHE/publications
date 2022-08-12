<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/AuditEvent-ex-AuditSvcmCodeSystemLookup.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/AuditEvent-ex-AuditSvcmCodeSystemLookup.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/AuditEvent-ex-AuditSvcmCodeSystemLookup.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/AuditEvent-ex-AuditSvcmCodeSystemLookup.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/AuditEvent-ex-AuditSvcmCodeSystemLookup.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/AuditEvent-ex-AuditSvcmCodeSystemLookup.html');
else 
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/AuditEvent-ex-AuditSvcmCodeSystemLookup.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
