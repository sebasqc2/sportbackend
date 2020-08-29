'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */

const findAlumno = async(pObjeto) => {
    const { nombre } = pObjeto.params;
    const resultado1 = await strapi.query('categorias').find({ 'alumnos.ID_ALUMNO': nombre });
    let ids = []
    resultado1.forEach(element => {
            ids.push(element.ID_CATEGORIA)
        })
        //console.log(ids);
    const resultado2 = await strapi.query('actividades').find({ 'categoria.ID_CATEGORIA_in': ids });
    //console.log("-------------------------------------------------------------------------------------");
    //console.log(resultado2);
    return resultado2;
}
module.exports = { findAlumno };
