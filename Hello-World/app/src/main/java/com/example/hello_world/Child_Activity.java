package com.example.hello_world;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class Child_Activity extends AppCompatActivity {
    String anyString;
    TextView mytxtview;
    Intent intentReceiver;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_child_);
        mytxtview=findViewById(R.id.textView2);
        intentReceiver=getIntent();
        mytxtview.setText(intentReceiver.getStringExtra("myExtra"));
    }
}