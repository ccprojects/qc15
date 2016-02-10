
<g:form action= "muestra">


<g:findAll in="${restaurante}" expr="true">
    <p>${it.restaurante}, ${it.capacidad}</p>
</g:findAll>

<g:actionSubmit value="Enviar"/>

</g:form>