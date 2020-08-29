'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */

const findbynombre = async(pObjeto) => {
    const { nombre, apelldo } = pObjeto.params;
    const resultado = await strapi.query('categorias').find({ 'entrenadore.NOMBRE': nombre, 'entrenadore.APELLIDO': apelldo });
    return resultado;
}

module.exports = { findbynombre };