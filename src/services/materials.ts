import { MaterialsEntry } from '../types/materials'
import materialsData from './materials.json'

const materials: MaterialsEntry[] = materialsData as MaterialsEntry[]
export const getMaterials = (): MaterialsEntry[] => materials

export const addMaterial = (): undefined => undefined
