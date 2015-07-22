${pojo.getPackageDeclaration()}
// Generated ${date} by Hibernate Tools ${version}

<#assign classbody>
<#assign declarationName = pojo.importType(pojo.getDeclarationName())>
<#include "PojoTypeDeclaration.ftl"/> {

<#if !pojo.isInterface()>

<#include "PojoFields.ftl"/>

<#include "PojoConstructors.ftl"/>
   
<#include "PojoPropertyAccessors.ftl"/>

<#include "PojoToString.ftl"/>

<#include "PojoEqualsHashcode.ftl"/>

<#else>
<#include "PojoInterfacePropertyAccessors.ftl"/>

</#if>
<#if !pojo.isComponent()>
<#include "PojoExtraClassCode.ftl"/>
</#if>

}
</#assign>

${pojo.generateImports()}
${classbody}

