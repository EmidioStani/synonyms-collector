<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://knowledgeweb.semanticweb.org/heterogeneity/alignment#" xmlns:align="http://knowledgeweb.semanticweb.org/heterogeneity/alignment#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:xsd="http://www.w3.org/2001/XMLSchema#" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
	<xsl:template match="/">
		<rdf:RDF>
		<Alignment>
		<xsl:apply-templates select="/rdf:RDF/rdf:Description[rdf:type/@rdf:resource='http://knowledgeweb.semanticweb.org/heterogeneity/alignment#Alignment']"/>
		<xsl:apply-templates select="/rdf:RDF/rdf:Description[rdf:type/@rdf:resource='http://knowledgeweb.semanticweb.org/heterogeneity/alignment#Cell']"/>
		</Alignment>
		</rdf:RDF>
	</xsl:template>
	<xsl:template match="/rdf:RDF/rdf:Description[rdf:type/@rdf:resource='http://knowledgeweb.semanticweb.org/heterogeneity/alignment#Alignment']">
		<xml>yes</xml>
		<level>0</level>
		<type>11</type>
		<onto1><xsl:variable name="onto1" select="./align:onto1/@rdf:resource"/><xsl:value-of select="$onto1"/></onto1>
		<onto2><xsl:variable name="onto2" select="./align:onto2/@rdf:resource"/><xsl:value-of select="$onto2"/></onto2>
	</xsl:template>
	<xsl:template match="/rdf:RDF/rdf:Description[rdf:type/@rdf:resource='http://knowledgeweb.semanticweb.org/heterogeneity/alignment#Cell']">
		<map>
			<Cell>
				<xsl:variable name="rdf_about" select="./@rdf:about"/><xsl:attribute name="rdf:about"><xsl:value-of select="$rdf_about"/></xsl:attribute>
				<xsl:attribute name="rdf:about"><xsl:value-of select="$rdf_about"/></xsl:attribute>
				<entity1>
					<xsl:variable name="rdf_resource" select="./align:entity1/@rdf:resource"/>
					<xsl:attribute name="rdf:resource"><xsl:value-of select="$rdf_resource"/></xsl:attribute>
				</entity1>
				<entity2>
					<xsl:variable name="rdf_resource" select="./align:entity2/@rdf:resource"/>
					<xsl:attribute name="rdf:resource"><xsl:value-of select="$rdf_resource"/></xsl:attribute>
				</entity2>
				<relation>
					<xsl:variable name="relation_value" select="./align:relation"/><xsl:value-of select="$relation_value"  />
				</relation>
				<measure>
					<xsl:variable name="rdf_datatype" select="./align:measure/@rdf:datatype"/>
					<xsl:attribute name="rdf:datatype"><xsl:value-of select="$rdf_datatype"/></xsl:attribute>
					<xsl:variable name="measure_value" select="./align:measure"/><xsl:value-of select="$measure_value"/>
				</measure>
			</Cell>
		</map>
	</xsl:template>
</xsl:stylesheet>