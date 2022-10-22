<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/AuditEvent-ex-auditFindDocumentReferences-consumer.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/AuditEvent-ex-auditFindDocumentReferences-consumer.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/AuditEvent-ex-auditFindDocumentReferences-consumer.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/AuditEvent-ex-auditFindDocumentReferences-consumer.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/AuditEvent-ex-auditFindDocumentReferences-consumer.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/AuditEvent-ex-auditFindDocumentReferences-consumer.html');
else 
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/AuditEvent-ex-auditFindDocumentReferences-consumer.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
