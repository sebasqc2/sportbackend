'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */
const findbydocente = async(pObjeto) => {
    const { nombre, apelldo } = pObjeto.params;
    //const resultado = await strapi.query('alumnos').model.query(condiciones => {
    //    condiciones.where('categoria', strapi.query('categoria').find({ 'entrenadore.NOMBRE': nombre, 'entrenadore.APELLIDO': apelldo }));
    //}).fetch();
    const resultado = await strapi.query('alumnos').find({ 'categoria.entrenadore.NOMBRE': nombre, 'categoria.entrenadore.APELLIDO': apelldo });

    return resultado;
}

const findbynombre = async(pObjeto) => {
    const { nombre } = pObjeto.params;
    const resultado = await strapi.query('alumnos').find({ 'NOMBRE': nombre });
    return resultado;
}

const findbyapellido = async(pObjeto) => {
    const { apellido } = pObjeto.params;
    const resultado = await strapi.query('alumnos').find({ 'APELLIDO': apellido });
    return resultado;
}

const findbydocumento = async(pObjeto) => {
    const { id } = pObjeto.params;
    const resultado = await strapi.query('alumnos').find({ 'ID_ALUMNO': id });
    return resultado;
}



module.exports = { findbydocente, findbynombre, findbyapellido, findbydocumento };