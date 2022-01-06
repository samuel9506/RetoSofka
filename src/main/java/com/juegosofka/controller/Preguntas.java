package com.juegosofka.controller;

import com.juegosofka.model.Categoria;
import com.juegosofka.model.Pregunta;
import com.juegosofka.model.Respuesta;
import com.juegosofka.model.Usuario;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;
import java.util.Scanner;

public class Preguntas {

    EntityManagerFactory db = Persistence.createEntityManagerFactory("persistencia");
    EntityManager em = db.createEntityManager();
    Scanner sc = new Scanner(System.in);

    public void nivelCategoria(){
        List<Categoria> listaCategoria = em.createQuery("FROM Categoria WHERE Nivel == 1").getResultList();


    }

    public void mostrarPreguntas(){

        try{
            List<Categoria> listaCategoria = em.createQuery("FROM Categoria").getResultList();

            int total = 0;


            for (Categoria categoria : listaCategoria) {

                Pregunta pregunta = categoria.getPreguntas().get((int) (Math.random() * 4));
                List<Respuesta> listaRes = pregunta.getRespuestas();

                System.out.println(pregunta.getDescripcion());

                mostrarRespuestas(listaRes);

                System.out.println("Por Favor Seleccione un respuesta de 1 a 5 ");

                int res = sc.nextInt();
                Respuesta respuesta = listaRes.get(res - 1);

                if (respuesta.getValorRespuesta() == true) {
                    int puntos = categoria.getValorPremio();

                    total += puntos;

                    System.out.println("Has ganado " + "" + total +" "+ "puntos");

                    System.out.println("¿Desea Continuar el Juego?\n1. Aceptar\n2. Salir");

                    int continuar = sc.nextInt();

                    if(continuar == 2){
                        System.out.println("GAME OVER!\nGracias por participar vuelve pronto");

                        System.out.println(".....................................................................");
                        break;
                    }

                } else {
                    System.out.println("Has perdido el juego");
                    break;
                }
            }
            if(total != 0) {
                int puntosTotal = total;
                guardarUsuario(total);
            }


        }catch (Exception e){
            System.out.println("Algo salió mal vuelve a intentar");

        }

    }

    public void mostrarRespuestas(List<Respuesta>listaRes){
        int numerorta = 0 ;
        for(Respuesta rta : listaRes ){
            numerorta ++;
            System.out.println(numerorta+")"+ rta.getDescripcion());
        }

    }

    public void guardarUsuario(int puntosTotal){

        Usuario usuario = new Usuario();

        usuario.setPremioTotal(puntosTotal);

        System.out.println("Escriba su nombre por favor");

        String nombreUsuario = sc.next();

        usuario.setNombre(nombreUsuario);



        em.getTransaction().begin();
        em.persist(usuario);
        em.getTransaction().commit();
        em.close();

    }


}
