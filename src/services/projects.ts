import { ProjectEntry, NewProject } from '../types/projetcts'
import projectsData from './projects.json'

const projects: ProjectEntry[] = projectsData as ProjectEntry[]

export const getProjects = (): ProjectEntry[] => projects

export const findById = (id: number): ProjectEntry | undefined => {
  const project = projects.find(p => p.id === id)
  return project
}

export const addProject = (newProjectAdd: NewProject): ProjectEntry => {
  const newProject = {
    id: Math.max(...projects.map(d => d.id)) + 1,
    ...newProjectAdd
  }

  projects.push(newProject)
  return newProject
}
