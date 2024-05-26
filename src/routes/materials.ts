import express from 'express'

const router = express.Router()

router.get('/', (_req, res) => {
  res.send('GET')
})

router.post('/', (_req, res) => {
  res.send('POST')
})

router.delete('/', (_req, res) => {
  res.send('DELETE')
})

export default router
