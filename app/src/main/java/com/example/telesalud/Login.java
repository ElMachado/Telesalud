package com.example.telesalud;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.net.Uri;

public class Login extends AppCompatActivity {
String number = "573215092212";
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_login);
        }

        public void Registro(View view){
            Intent Registro = new Intent(this,Registro.class);
            super.startActivity(Registro);
        }

        public void MainActivity(View view){
            Intent MainActivity = new Intent(this,MainActivity.class);
            super.startActivity(MainActivity);
        }
        public void contactar(View view){
            String url = "https://api.whatsapp.com/send?phone="+number;
            Intent i = new Intent(Intent.ACTION_VIEW);
            i.setData(Uri.parse(url));
            startActivity(i);
    }
}
