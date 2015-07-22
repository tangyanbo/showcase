
<#if clazz.table.comment?exists>
/**
 * Entity: ${clazz.table.comment}
 */
</#if>
<#include "Ejb3TypeDeclaration.ftl"/>
${pojo.getClassModifiers()} ${pojo.getDeclarationType()} ${pojo.getDeclarationName()} ${pojo.getExtendsDeclaration()} ${pojo.getImplementsDeclaration()}