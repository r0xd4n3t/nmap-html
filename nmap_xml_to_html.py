import sys
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
    if len(sys.argv) != 4:
        print("Usage: python nmap_xml_to_html.py <input_xml_file> <xsl_file> <output_html_file>")
        sys.exit(1)

    xml_file = sys.argv[1]
    xsl_file = sys.argv[2]
    output_file = sys.argv[3]

    convert_nmap_xml_to_html(xml_file, xsl_file, output_file)
    print(f"Converted {xml_file} to {output_file} using {xsl_file}")
