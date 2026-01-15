import express, { type Request, type Response } from 'express';
import cors from 'cors';

const app = express();
const PORT = 5000;

app.use(cors());
app.use(express.json());

app.get('/api/welcome', (req: Request, res: Response) => {
  res.json({ message: "Hello from the Express Backend!" });
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
