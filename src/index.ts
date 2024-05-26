import express from 'express'
import materialsRouter from './routes/materials'
import projecsRouter from './routes/projects'
const app = express()
app.use(express.json())

const PORT = 3000

app.get('/api/ping',(_req, res)  => {
console.log('some pingged here!')
res.send('pong')
})

app.use('/api/projects', projecsRouter)

app.use('/api/materials', materialsRouter)

app.listen(PORT, ()=>{
    console.log(`Server running on port ${PORT}`)
})