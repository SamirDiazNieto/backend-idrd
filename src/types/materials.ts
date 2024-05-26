export enum ejemplo {
  Metro2 = 'm2',
  Unidad = 'und',
  Kilogramos = 'kg'

}

export interface MaterialsEntry {
  'id': number
  'Código': number
  'Descripción': String
  'Unidad': String
  'Precio': number
}
// Código: (texto, único), Descripción: (texto), Unidad: (m2, und, kg), Precio: (pesos).
