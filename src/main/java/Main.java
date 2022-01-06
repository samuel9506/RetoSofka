import com.juegosofka.controller.Preguntas;
import com.juegosofka.model.Categoria;
import com.juegosofka.model.Pregunta;
import com.juegosofka.model.Respuesta;
import com.juegosofka.model.Usuario;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Preguntas preguntas = new Preguntas();


        System.out.println("Bienvenido");
        System.out.println("Tienes que responder las 5 preguntas bien para que ganes de 1 a 5");
        preguntas.mostrarPreguntas();

        System.out.println("Gracias por jugar");








    }
}
