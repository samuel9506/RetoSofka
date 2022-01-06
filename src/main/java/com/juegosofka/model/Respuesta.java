package com.juegosofka.model;

import javax.persistence.*;

@Entity
@Table(name = "respuestas")
public class Respuesta {

    @Id
    @Column(name="idRespuestas")
    private int idRespuesta;

    @Column(name="Descripcion")
    private String descripcion ;

    @Column(name="ValorRespuesta")
    private Boolean valorRespuesta ;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idPreguntas",insertable = false,updatable = false)
    private Pregunta pregunta;

    public Respuesta() {
    }

    public Respuesta(String descripcion, Boolean valorRespuesta, Pregunta pregunta,int idRespuesta) {
        this.idRespuesta = idRespuesta;
        this.descripcion = descripcion;
        this.valorRespuesta = valorRespuesta;
        this.pregunta = pregunta;
    }

    public int getIdRespuesta() {
        return idRespuesta;
    }

    public void setIdRespuesta(int idRespuesta) {
        this.idRespuesta = idRespuesta;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Boolean getValorRespuesta() {
        return valorRespuesta;
    }

    public void setValorRespuesta(Boolean valorRespuesta) {
        this.valorRespuesta = valorRespuesta;
    }

    public Pregunta getPregunta() {
        return pregunta;
    }

    public void setPregunta(Pregunta pregunta) {
        this.pregunta = pregunta;
    }
}
