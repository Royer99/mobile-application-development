package com.example.hello_world;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;


public class MainActivity extends AppCompatActivity {

    private Button buttonManager;
    private TextView txtViewManager;
    private ImageView imgViewManager;
    Intent myIntent;
    Context myContext;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        buttonManager=findViewById(R.id.button);
        txtViewManager=findViewById(R.id.textView);
        imgViewManager=findViewById(R.id.space);
        myContext.getApplicationContext();
        buttonManager.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                txtViewManager.setText("Royer Donnet Arenas Camacho");
                if(imgViewManager.getVisibility()==View.VISIBLE){
                    imgViewManager.setVisibility(View.INVISIBLE);
                }else{
                    imgViewManager.setVisibility(View.VISIBLE);
                }
                myIntent=new Intent(myContext,Child_Activity.class);
                myIntent.putExtra("myExtra",txtViewManager.getText().toString());
                startActivity(myIntent);
            }
        });
    }
}