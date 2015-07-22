<#-- // Property accessors -->
<#foreach property in pojo.getAllPropertiesIterator()>
<#if pojo.getMetaAttribAsBool(property, "gen-property", true)>
 <#if pojo.hasFieldJavaDoc(property)>    
    /**       
     * ${pojo.getFieldJavaDoc(property, 4)}
     */
</#if>
    <#include "GetPropertyAnnotation.ftl"/>
    ${pojo.getPropertyGetModifiers(property)} final ${pojo.getJavaTypeName(property, jdk5)} ${pojo.getGetterSignature(property)}() {
        return this.${property.name};
    }
    
    ${pojo.getPropertySetModifiers(property)} final void set${pojo.getPropertyName(property)}(${pojo.getJavaTypeName(property, jdk5)} ${property.name}) {
		<#if pojo.hasMetaAttribute(property, "pre-cond")> 
			${c2j.getMetaAsString(property, "pre-cond","\n")} 
		</#if>  
        this.${property.name} = ${property.name};
		<#if pojo.hasMetaAttribute(property, "post-cond")> 
			${c2j.getMetaAsString(property, "post-cond","\n")} 
		</#if>  
    }
</#if>
</#foreach>
