package com.example.recettes;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;
import com.google.android.material.appbar.CollapsingToolbarLayout;

public class RecetteActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_recette);
        getSupportActionBar().hide();

        // Recieve data

        String titre  = getIntent().getExtras().getString("recette_titre");
        String etapes = getIntent().getExtras().getString("recette_etapes");
        String rating = getIntent().getExtras().getString("recette_reating") ;
        String durree = getIntent().getExtras().getString("recette_durree");
        String categorie = getIntent().getExtras().getString("recette_categorie") ;
        String image_url = getIntent().getExtras().getString("recette_images") ;

        // ini views

        CollapsingToolbarLayout collapsingToolbarLayout = findViewById(R.id.collapsingtoolbar_id);
        collapsingToolbarLayout.setTitleEnabled(true);

        TextView tv_titre = findViewById(R.id.aa_recette_titre);
        TextView tv_etapes = findViewById(R.id.aa_etapes);
        TextView tv_rating = findViewById(R.id.aa_rating) ;
        TextView tv_durree = findViewById(R.id.aa_durree);
        TextView tv_categorie  = findViewById(R.id.aa_categorie) ;
        ImageView img = findViewById(R.id.aa_images);

        // setting values to each view

        tv_titre.setText(titre);
        tv_etapes.setText(etapes);
        tv_rating.setText(rating);
        tv_durree.setText(durree);
        tv_categorie.setText(categorie);

        collapsingToolbarLayout.setTitle(titre);


        RequestOptions requestOptions = new RequestOptions().centerCrop().placeholder(R.drawable.loading_shape).error(R.drawable.loading_shape);


        // set image using Glide
        Glide.with(this).load(image_url).apply(requestOptions).into(img);





    }


}