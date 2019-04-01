import { Router } from 'express'

import UserController from './controllers/UserController'
import User from './schemas/User'

const routes = Router()

routes.get('/users', UserController.index)
routes.post('/users', UserController.store)

export default routes