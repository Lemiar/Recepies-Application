package com.example.recettes;

public class Recette {
    private String titre ;
    private String etapes;
    private String rating;
    private String durree;
    private String categorie;
    private String image;

    public Recette() {
    }

    public Recette(String titre, String etapes, String rating, String durree, String categorie, String image) {
        this.titre = titre;
        this.etapes = etapes;
        this.rating = rating;
        this.durree = durree;
        this.categorie = categorie;
        this.image = image;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getEtapes() {
        return etapes;
    }

    public void setEtapes(String etapes) {
        this.etapes = etapes;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getDurree() {
        return durree;
    }

    public void setDurree(String durree) {
        this.durree = durree;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
