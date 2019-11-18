package com.example.telesalud;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.net.Uri;
public class Login extends AppCompatActivity {

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
        Intent MainActivity=new Intent(this,Formulario_doctor.class);
        super.startActivity(MainActivity);
        }
}