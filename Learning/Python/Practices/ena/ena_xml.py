import xml.dom.minidom


tree = xml.dom.minidom.parse('ena.xml')
samples = tree.getElementsByTagName('SAMPLE')

with open('output.csv', 'w') as f:
    f.write('%s,%s,%s\n' % ('EXTERNAL_ID', 'TITLE', 'CENTER_NAME'))

    for sample in samples:
        sample_id = sample.getElementsByTagName('EXTERNAL_ID')[0].firstChild.nodeValue
        center_name = sample.getAttribute('center_name')
        
        try:
            title = sample.getElementsByTagName('TITLE')[0].firstChild.nodeValue            
        except IndexError:
            title = 'Salmonella enterica subsp. enterica serovar Typhimurium'

        f.write('%s,%s,%s\n' % (sample_id, title, center_name.replace(', ', '_')))

        

