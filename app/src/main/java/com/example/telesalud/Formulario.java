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
    private final static String[] opciones_identificacion = { "Cédula de ciudadanía", "Cédula de extranjería", "Tarjeta de identidad", "Aquí otro" };
    private final static String[] opciones_eps = { "Sura", "Cafe salud", "Sumimedical", "Aquí otro" };
    private final static String[] opciones_ocupacion = { "Estudiante", "Ama de casa", "Aquí otro"};
    private final static String[] opciones_afiliacion = { "Cotizante", "Beneficiario", "Adicional"};
    private final static String[] opciones_usuario = { "Contributivo", "Subsidiado", "Vinculado", "Particular", "Otro"};
    private final static String[] opciones_vivienda = { "Casa", "Apartamento", "Otro"};
    private final static String[] opciones_zona = { "Rural", "Urbana"};
    private final static String[] opciones_departamento = { "Antioquia", "Meta", "Aquí otra"};
    private final static String[] opciones_antioquia = { "Medellín", "Puerto Berrío", "Aquí otra"};
    private final static String[] opciones_meta = { "Villavicencio", "Puerto López", "Aquí otra"};

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
                    tipos_ciudad.setAdapter(adapter_ciudad);
                    adapter_ciudad.notifyDataSetChanged();
                }
                else if(departamento.equals("Meta")) {
                    adapter_ciudad = adapter_meta;
                    tipos_ciudad.setAdapter(adapter_ciudad);
                    adapter_ciudad.notifyDataSetChanged();
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
        String [] si_no = {"Si","No"};
        ArrayAdapter adapter_si_no = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, si_no);
        String [] si_no_nosabe = {"Si", "No", "No sabe"};
        ArrayAdapter adapter_si_no_nosabe = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, si_no_nosabe);
        String [] grupo_sanguineo = {"0", "A", "B", "AB", "No sabe"};
        ArrayAdapter adapter_grupo_sanguineo = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, grupo_sanguineo);
        String [] negativo_positivo_nosabe = {"Negativo", "Positivo", "No sabe"};
        ArrayAdapter adapter_negativo_positivo_nosabe = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, negativo_positivo_nosabe);
        final String matriz [][] = {{"¿Embarazo planeado?","1", "si_no"},
                            {"¿Fallo de anticonceptivo?","1", "si_no"},
                            {"Grupo sanguineo","1", "grupo_sanguineo"},
                            {"RH","1", "negativo_positivo_nosabe"},
                            {"¿Recuerda peso antes del embarazo?","1", "si_no"},
                            {"Peso","0", ""},
                            {"Edad que llegó su primera regla","0", ""},
                            {"¿Cirugías genitourinarias?","1", "si_no_nosabe"},
                            {"¿Cuál cirugía?","0", ""},
                            {"¿Infertilidad?","1", "si_no_nosabe"},
                            {"¿Enfermedad pelvico inflamatoria?","1", "si_no_nosabe"},
                            {"¿Cuál enfermerdad PelInf?","0", ""}};
        LinearLayout.LayoutParams paramstitulo = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        LinearLayout.LayoutParams paramsspinner = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        paramsspinner.height = transform_dp(50);
        paramsspinner.weight = transform_dp(301);
        paramstitulo.setMargins(transform_dp(10),transform_dp(10),0,0);
        for(int j = 0; j < 12; j++){
            TextView titulo = new TextView(Formulario.this);
            Spinner respuesta_sppiner = new Spinner(Formulario.this);
            EditText respuesta_texto = new EditText(Formulario.this);
            final int count = j;
            titulo.setLayoutParams(paramstitulo);
            titulo.setTypeface(Typeface.MONOSPACE);
            titulo.setTextSize(20);
            titulo.setText(matriz[j][0]);
            titulo.setTag(matriz[j][0]);
            respuesta_texto.setEms(10);
            respuesta_texto.setLayoutParams(paramstitulo);
            respuesta_texto.setTypeface(Typeface.MONOSPACE);
            respuesta_texto.setTextSize(20);
            respuesta_texto.setTag(matriz[j][0] + 2);
            espacio.addView(titulo);
            if(matriz[j][1].equals("1")){
                respuesta_sppiner.setTag(matriz[j][0] + 1);
                respuesta_sppiner.setLayoutParams(paramsspinner);
                if(matriz[j][2].equals("si_no")){
                    respuesta_sppiner.setAdapter(adapter_si_no);

                }
                else if(matriz[j][2].equals("si_no_nosabe")){
                    respuesta_sppiner.setAdapter(adapter_si_no_nosabe);
                }
                else if(matriz[j][2].equals("negativo_positivo_nosabe")){
                    respuesta_sppiner.setAdapter(adapter_negativo_positivo_nosabe);
                }
                else if(matriz[j][2].equals("grupo_sanguineo")){
                    respuesta_sppiner.setAdapter(adapter_grupo_sanguineo);
                }
                espacio.addView(respuesta_sppiner);
            }
            else if(matriz[j][1].equals("0")){
                espacio.addView(respuesta_texto);
            }
            if(j == 0){
                respuesta_sppiner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                    @Override
                    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                        String si_no = (String) parent.getItemAtPosition(position);
                        TextView aux_text = espacio.findViewWithTag(matriz[count+1][0]);
                        Spinner aux = espacio.findViewWithTag(matriz[count+1][0] + 1);
                        EditText aux_edit = espacio.findViewWithTag(matriz[count+1][0] + 2);
                        if(si_no.equals("Si")){

                            if(!(aux == null)){
                                aux.setVisibility(View.GONE);
                            }
                            if(!(aux_edit == null)){
                                aux_edit.setVisibility(View.GONE);
                            }
                            if(!(aux_text == null)){
                                aux_text.setVisibility(View.GONE);
                            }
                        }
                        else if(si_no.equals("No")){
                            if(!(aux == null)){
                                aux.setVisibility(View.VISIBLE);
                            }
                            if(!(aux_edit == null)){
                                aux_edit.setVisibility(View.VISIBLE);
                            }
                            if(!(aux_text == null)){
                                aux_text.setVisibility(View.VISIBLE);
                            }
                        }
                    }

                    @Override
                    public void onNothingSelected(AdapterView<?> parent) {

                    }

                });
            } else if (j == 4 || j == 7 || j == 10) {
                respuesta_sppiner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                    @Override
                    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                        String si_no = (String) parent.getItemAtPosition(position);
                        if(si_no.equals("No")){
                            TextView aux_text = espacio.findViewWithTag(matriz[count+1][0]);
                            Spinner aux = espacio.findViewWithTag(matriz[count+1][0] + 1);
                            EditText aux_edit = espacio.findViewWithTag(matriz[count+1][0] + 2);
                            if(!(aux == null)){
                                aux.setVisibility(View.GONE);
                            }
                            if(!(aux_edit == null)){
                                aux_edit.setVisibility(View.GONE);
                            }
                            if(!(aux_text == null)){
                                aux_text.setVisibility(View.GONE);
                            }
                        }
                        else if(si_no.equals("Si")){
                            TextView aux_text = espacio.findViewWithTag(matriz[count+1][0]);
                            Spinner aux = espacio.findViewWithTag(matriz[count+1][0] + 1);
                            EditText aux_edit = espacio.findViewWithTag(matriz[count+1][0] + 2);
                            if(!(aux == null)){
                                aux.setVisibility(View.VISIBLE);
                            }
                            if(!(aux_edit == null)){
                                aux_edit.setVisibility(View.VISIBLE);
                            }
                            if(!(aux_text == null)){
                                aux_text.setVisibility(View.VISIBLE);
                            }
                        }
                    }

                    @Override
                    public void onNothingSelected(AdapterView<?> parent) {

                    }

                });
            }
        }
    }
    private int transform_dp(int pixeles){
        int tamaño = (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, pixeles, getResources().getDisplayMetrics());
        return tamaño;
    }
}
