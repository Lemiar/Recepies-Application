package com.example.recettes;


import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;

import java.util.List;



public class RecyclerViewAdapter extends RecyclerView.Adapter<RecyclerViewAdapter.MyViewHolder> {

    private Context mContext ;
    private List<Recette> mData ;
    RequestOptions option;


    public RecyclerViewAdapter(Context mContext, List<Recette> mData) {
        this.mContext = mContext;
        this.mData = mData;

        //Request option for Glide
        option = new RequestOptions().centerCrop().placeholder(R.drawable.loading_shape).error(R.drawable.loading_shape);

    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {

        View view ;
        LayoutInflater inflater = LayoutInflater.from(mContext);
        view = inflater.inflate(R.layout.histoire_row_item,parent,false) ;
        final MyViewHolder viewHolder = new MyViewHolder(view) ;
        viewHolder.view_container.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent i = new Intent(mContext, RecetteActivity.class);
                i.putExtra("recette_titre",mData.get(viewHolder.getAdapterPosition()).getTitre());
                i.putExtra("recette_etapes",mData.get(viewHolder.getAdapterPosition()).getEtapes());
                i.putExtra("rectte_rating",mData.get(viewHolder.getAdapterPosition()).getRating());
                i.putExtra("recette_categorie",mData.get(viewHolder.getAdapterPosition()).getCategorie());
                i.putExtra("recette_durree",mData.get(viewHolder.getAdapterPosition()).getDurree());
                i.putExtra("recette_images",mData.get(viewHolder.getAdapterPosition()).getImage());

                mContext.startActivity(i);

            }


        });



        return viewHolder;
    }

    @Override
    public void onBindViewHolder(MyViewHolder holder, int position) {

        holder.tv_titre.setText(mData.get(position).getTitre());
        holder.tv_rating.setText(mData.get(position).getRating());
        holder.tv_durree.setText(mData.get(position).getDurree());
        holder.tv_categorie.setText(mData.get(position).getCategorie());

        // Load Image from the internet and set it into Imageview using Glide

        Glide.with(mContext).load(mData.get(position).getImage()).apply(option).into(holder.img_thumbnail);




    }

    @Override
    public int getItemCount() {
        return mData.size();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder {

        TextView tv_titre ;
        TextView tv_rating ;
        TextView tv_durree ;
        TextView tv_categorie;
        ImageView img_thumbnail;
        LinearLayout view_container;





        public MyViewHolder(View itemView) {
            super(itemView);

            view_container = itemView.findViewById(R.id.container);
            tv_titre = itemView.findViewById(R.id.recette_titre);
            tv_categorie = itemView.findViewById(R.id.categorie);
            tv_rating = itemView.findViewById(R.id.rating);
            tv_durree = itemView.findViewById(R.id.durree);
            img_thumbnail = itemView.findViewById(R.id.thumbnail);

        }
    }

}
