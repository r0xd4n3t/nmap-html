import sys
import os
import glob
from lxml import etree

def convert_nmap_xml_to_html(xml_file, xsl_file, output_file):
    # Parse the XML and XSL files
    xml_tree = etree.parse(xml_file)
    xsl_tree = etree.parse(xsl_file)

    # Create the XSLT transformer
    transformer = etree.XSLT(xsl_tree)

    # Perform the transformation
    html_tree = transformer(xml_tree)

    # Write the output to the HTML file
    with open(output_file, 'wb') as f:
        f.write(etree.tostring(html_tree, pretty_print=True))

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python nmap_xml_to_html.py <xsl_file>")
        sys.exit(1)

    xsl_file = sys.argv[1]

    # Iterate through all XML files in the current directory
    for xml_file in glob.glob("*.xml"):
        # Set the output file name based on the input file name
        output_file = os.path.splitext(xml_file)[0] + ".html"

        convert_nmap_xml_to_html(xml_file, xsl_file, output_file)
        print(f"Converted {xml_file} to {output_file} using {xsl_file}")
