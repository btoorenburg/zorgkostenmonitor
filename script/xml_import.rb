require 'rexml/document'
include REXML
file = File.new("/Users/btoorenburg/programmering/ruby/zorgkostenmonitor/script/zorgproductgroepen.xml")
# doc = REXML::Document.new file
doc = Document.new file

# puts doc
# Toont het gehele XML-document.


# doc.elements.each( "Import/Row" ) { |element| puts element.Zorgproductgroep_x0020_omschrijving }
# XPath.each( doc, "//Zorgproductgroep_x0020_omschrijving") { |element| puts element.text }
XPath.each( doc, "//Zorgproductgroep_x0020_code") { |element| puts (element.text)}

# -> health (returns the first encountered matching element)
# puts root.elements[1].attributes["Zorgproductgroep_x0020_code"]