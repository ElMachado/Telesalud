package com.example.telesalud;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;

import com.example.telesalud.Interfaces.IComunicaFragments;
import com.example.telesalud.Interfaces.InicioFragment;
import com.example.telesalud.Interfaces.InicioFragment.OnFragmentInteractionListener;
import com.example.telesalud.fragments.contactosFragment;

public class MainActivity extends AppCompatActivity implements IComunicaFragments, OnFragmentInteractionListener,contactosFragment.OnFragmentInteractionListener {

    Fragment fragmenContatos;
    Fragment fragmenInicio;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        fragmenInicio = new InicioFragment();
        fragmenContatos = new contactosFragment();
        getSupportFragmentManager().beginTransaction().replace(R.id.contenedorFragments, fragmenInicio).commit();
    }

    @Override
    protected void onStart() {
        super.onStart();
    }

    @Override
    protected void onStop() {
        super.onStop();
    }

    @Override
    protected void onResumeFragments() {
        super.onResumeFragments();
    }

    @Override
    protected void onPause() {
        super.onPause();
    }

    @Override
    public void onAttachFragment(@NonNull Fragment fragment) {
        super.onAttachFragment(fragment);
    }


    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onFragmentInteraction(Uri uri) {

    }

    @Override
    public void contactos() {

        contactosFragment newFragment = new contactosFragment();
        FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        transaction.replace(R.id.contenedorFragments, newFragment);
        transaction.addToBackStack(null);
        transaction.commit();

    }

    @Override
    public void registrarDatos() {


    }
}
