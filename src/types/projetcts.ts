export interface ProjectEntry {
  'id': number
  'Nombre': String
  'Departamento': String
  'Ciudad': String
}

export type NewProject = Omit<ProjectEntry, 'id'>

// Nombre: (texto), Departamento: (listado), Ciudad: (listado según departamento).
