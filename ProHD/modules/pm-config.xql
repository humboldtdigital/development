
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";
import module namespace pm-prohd-web="http://www.tei-c.org/pm/models/prohd/web/module" at "../transform/prohd-web-module.xql";
import module namespace pm-prohd-print="http://www.tei-c.org/pm/models/prohd/fo/module" at "../transform/prohd-print-module.xql";
import module namespace pm-prohd-latex="http://www.tei-c.org/pm/models/prohd/latex/module" at "../transform/prohd-latex-module.xql";
import module namespace pm-prohd-epub="http://www.tei-c.org/pm/models/prohd/epub/module" at "../transform/prohd-epub-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prohd.odd" return pm-prohd-web:transform($xml, $parameters)
    default return pm-prohd-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prohd.odd" return pm-prohd-print:transform($xml, $parameters)
    default return pm-prohd-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prohd.odd" return pm-prohd-latex:transform($xml, $parameters)
    default return pm-prohd-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prohd.odd" return pm-prohd-epub:transform($xml, $parameters)
    default return pm-prohd-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    