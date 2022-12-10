package com.example.recettes;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

import com.google.android.material.navigation.NavigationView;

public class MainActivity3 extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener{
    NavigationView navigationView;
    ActionBarDrawerToggle toogle;
    DrawerLayout drawerLayout;
    Toolbar toolbar;
    Intent intent;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main3);

        //conteneurs
        drawerLayout = findViewById(R.id.drawer_layout);
        navigationView=findViewById(R.id.nav_view);
        toolbar=findViewById(R.id.toolbar);

        //toolbar
       // setSupportActionBar(toolbar);

        //navigation Drawer menu
        //hide or show items
        Menu menu= navigationView.getMenu();

        navigationView.bringToFront();
        toogle = new ActionBarDrawerToggle(this,drawerLayout,toolbar,R.string.open,R.string.close);
        drawerLayout.addDrawerListener(toogle);
        toogle.syncState();

        navigationView.setNavigationItemSelectedListener(this);

        navigationView.setCheckedItem((R.id.nav_home));


    }

    @Override
    public void onBackPressed() {
        //fermer le menu si je clique sur le bouton return
        if(drawerLayout.isDrawerOpen(GravityCompat.START))
        {
            drawerLayout.closeDrawer(GravityCompat.START);
        }
        else
        {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem item) {
        switch (item.getItemId()){
            case R.id.nav_home:
                break;
            case R.id.plat:
                Intent intent1 = new Intent(this,MainActivity2.class);
                startActivity(intent1);
                break;
            case R.id.smoothies:
                Intent intent2 = new Intent(this,MainActivity4.class);
                startActivity(intent2);
                break;
            case R.id.mojitos:
                Intent intent3 = new Intent(this,MainActivity5.class);
                startActivity(intent3);
                break;
            case R.id.chaudes:
                Intent intent4 = new Intent(this,MainActivity6.class);
                startActivity(intent4);
                break;
            case R.id.crepes:
                Intent intent5 = new Intent(this,MainActivity7.class);
                startActivity(intent5);
                break;
            case R.id.cakes:
                Intent intent6 = new Intent(this,MainActivity8.class);
                startActivity(intent6);
                break;

            case R.id.nav_logout:
                Intent intent10 = new Intent(this,MainActivity.class);
                startActivity(intent10);
                break;
        }
        //fermer le menu
        drawerLayout.closeDrawer(GravityCompat.START);
        return true;
    }
}