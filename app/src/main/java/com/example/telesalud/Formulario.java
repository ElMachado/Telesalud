package com.example.telesalud;

import androidx.appcompat.app.AppCompatActivity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import java.util.ArrayList;

    public class Formulario extends AppCompatActivity {
    private final static String[] opciones_identificacion = {"Seleccione", "Cédula de ciudadanía", "Cédula de extranjería", "Tarjeta de identidad", "Aquí otro" };
    private final static String[] opciones_eps = { "Seleccione", "Sura", "Cafe salud", "Sumimedical", "Aquí otro" };
    private final static String[] opciones_ocupacion = { "Seleccione", "Estudiante", "Ama de casa", "Aquí otro"};
    private final static String[] opciones_afiliacion = { "Seleccione", "Cotizante", "Beneficiario", "Adicional"};
    private final static String[] opciones_usuario = { "Seleccione", "Contributivo", "Subsidiado", "Vinculado", "Particular", "Otro"};
    private final static String[] opciones_vivienda = { "Seleccione", "Casa", "Apartamento", "Otro"};
    private final static String[] opciones_zona = { "Seleccione", "Rural", "Urbana"};
    private final static String[] opciones_departamento = { "Seleccione", "Antioquia", "Meta", "Aquí otra"};
    private final static String[] opciones_antioquia = { "Seleccione", "Medellín", "Puerto Berrío", "Aquí otra"};
    private final static String[] opciones_meta = { "Seleccione", "Villavicencio", "Puerto López", "Aquí otra"};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_formulario);
        final LinearLayout espacio = findViewById(R.id.formulario);
        ArrayAdapter adapter_identificacion = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_identificacion);
        Spinner tipos_identificacion = findViewById(R.id.tipo1);
        tipos_identificacion.setAdapter(adapter_identificacion);
        ArrayAdapter adapter_eps = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_eps);
        Spinner tipos_eps = findViewById(R.id.eps1);
        tipos_eps.setAdapter(adapter_eps);
        ArrayAdapter adapter_ocupacion = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_ocupacion);
        Spinner tipos_ocupacion = findViewById(R.id.ocupacion1);
        tipos_ocupacion.setAdapter(adapter_ocupacion);
        ArrayAdapter adapter_afiliacion = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_afiliacion);
        final Spinner tipos_afiliacion = findViewById(R.id.afiliacion1);
        tipos_afiliacion.setAdapter(adapter_afiliacion);
        ArrayAdapter adapter_usuario = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_usuario);
        Spinner tipos_usuario = findViewById(R.id.usuario1);
        tipos_usuario.setAdapter(adapter_usuario);
        ArrayAdapter adapter_vivienda = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_vivienda);
        Spinner tipos_vivienda = findViewById(R.id.vivienda1);
        tipos_vivienda.setAdapter(adapter_vivienda);
        ArrayAdapter adapter_zona = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_zona);
        Spinner tipos_zona = findViewById(R.id.zona1);
        tipos_zona.setAdapter(adapter_zona);
        ArrayAdapter adapter_departamento = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_departamento);
        final ArrayAdapter adapter_antioquia = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_antioquia);
        final ArrayAdapter adapter_meta = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, opciones_meta);
        Spinner tipos_departamento = findViewById(R.id.departamento1);
        tipos_departamento.setAdapter(adapter_departamento);
        tipos_departamento.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {

                String departamento = (String) adapterView.getItemAtPosition(i);
                TextView texto = new TextView(Formulario.this);
                texto.setText("Ciudad");
                LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
                params.setMargins(transform_dp(10),transform_dp(10),0,0);
                texto.setLayoutParams(params);
                texto.setTypeface(Typeface.MONOSPACE);
                texto.setTextSize(20);
                texto.setTag("texto_ciudad");
                Spinner tipos_ciudad = new Spinner(Formulario.this);
                params.height = transform_dp(50);
                params.weight = transform_dp(301);
                tipos_ciudad.setTag("ciudad");
                tipos_ciudad.setLayoutParams(params);
                ArrayAdapter adapter_ciudad;

                if (departamento.equals("Antioquia")){
                    adapter_ciudad = adapter_antioquia;
                    espacio.removeView(espacio.findViewWithTag(tipos_ciudad.getTag()));
                    tipos_ciudad.setAdapter(adapter_ciudad);
                    espacio.addView(tipos_ciudad);
                }
                else if(departamento.equals("Meta")) {
                    adapter_ciudad = adapter_meta;
                    espacio.removeView(espacio.findViewWithTag(tipos_ciudad.getTag()));
                    tipos_ciudad.setAdapter(adapter_ciudad);
                    espacio.addView(tipos_ciudad);
                }
                if(espacio.findViewWithTag("texto_ciudad") == null){
                    espacio.addView(texto);
                }
                if(espacio.findViewWithTag("ciudad") == null){
                    espacio.addView(tipos_ciudad);
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });
    }
    private int transform_dp(int pixeles){
        int tamaño = (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, pixeles, getResources().getDisplayMetrics());
        return tamaño;
    }
}
