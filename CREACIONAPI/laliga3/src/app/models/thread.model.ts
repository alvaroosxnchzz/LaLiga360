
export interface Thread {
    id: number;
    title: string;
    description: string;
    comments: any[]; // Aquí debes especificar el tipo de los comentarios
  }