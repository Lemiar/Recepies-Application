package com.example.recettes;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class MainActivity6 extends AppCompatActivity {
    private final String JSON_URL = "http://192.168.43.137/Recettes/getRecette4.php";
    private JsonArrayRequest request ;
    private RequestQueue requestQueue ;
    private List<Recette> lstRecettes ;
    private RecyclerView recyclerView ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main6);

        lstRecettes = new ArrayList<>() ;
        recyclerView = findViewById(R.id.recyclerviewid);
        jsonrequest();
    }

    private void jsonrequest() {
        request = new JsonArrayRequest(JSON_URL, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {

                JSONObject jsonObject  = null ;

                for (int i = 0 ; i < response.length(); i++ ) {


                    try {
                        jsonObject = response.getJSONObject(i) ;
                        Recette recette = new Recette() ;
                        recette.setTitre(jsonObject.getString("titre"));
                        recette.setEtapes(jsonObject.getString("etapes"));
                        recette.setRating(jsonObject.getString("rating"));
                        recette.setDurree(jsonObject.getString("durree"));
                        recette.setCategorie(jsonObject.getString("categorie"));
                        recette.setImage(jsonObject.getString("images"));
                        lstRecettes.add(recette);

                    } catch (JSONException e) {
                        e.printStackTrace();
                    }


                }

                setuprecyclerview(lstRecettes);

            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });


        requestQueue = Volley.newRequestQueue(MainActivity6.this);
        requestQueue.add(request) ;


    }
    private void setuprecyclerview(List<Recette> lstRecettes) {


        RecyclerViewAdapter myadapter = new RecyclerViewAdapter(this,lstRecettes) ;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(myadapter);

    }
}