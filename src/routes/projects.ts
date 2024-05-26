import express from 'express'
import * as projectsServices from '../services/projects'

const router = express.Router()

router.get('/', (_req, res) => {
  res.send(projectsServices.getProjects)
})

router.get('/:id', (req, res) => {
  const project = projectsServices.findById(+req.params.id)
  return (project != null)
    ? res.send(project)
    : res.sendStatus(404)
})

router.post('/', (req, res) => {
  const { Nombre, Departamento, Ciudad } = req.body
  const newProjectAdd = projectsServices.addProject({
    Nombre,
    Departamento,
    Ciudad
  })
  res.json(newProjectAdd)
})

router.delete('/', (_req, res) => {
  res.send('DELETE')
})
export default router
