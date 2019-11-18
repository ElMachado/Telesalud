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
import android.widget.Spinner;
import android.widget.TextView;

public class Formulario_doctor extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_formulario_doctor);
        final LinearLayout espacio = findViewById(R.id.formulario_doctor);
        String [] si_no = {"Seleccione","Si","No"};
        ArrayAdapter adapter_si_no = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, si_no);
        String [] si_no_nosabe = {"Seleccione", "Si", "No", "No sabe"};
        ArrayAdapter adapter_si_no_nosabe = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, si_no_nosabe);
        String [] grupo_sanguineo = {"Seleccione", "0", "A", "B", "AB", "No sabe"};
        ArrayAdapter adapter_grupo_sanguineo = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, grupo_sanguineo);
        String [] negativo_positivo_nosabe = {"Seleccione", "Negativo", "Positivo", "No sabe"};
        ArrayAdapter adapter_negativo_positivo_nosabe = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, negativo_positivo_nosabe);
        String [] previa_durante_no_nosabe = {"Seleccione", "Previa", "Durante", "No", "No sabe"};
        ArrayAdapter adapter_previa_durante_no_nosabe = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, previa_durante_no_nosabe);
        String [] etnia = {"Seleccione", "Blanca", "Indígena", "Mestiza", "Negra", " ROM (gitano)", "Raizal", "Palenquero de San Basilio"};
        ArrayAdapter adapter_etnia = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, etnia);
        String [] estado_civil = {"Seleccione", "Casada", "Soltera", "Unión libre", "Viuda"};
        ArrayAdapter adapter_estado_civil = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, estado_civil);
        String [] normal_anormal_nosehizo = {"Seleccione", "Normal", "Anormal", "No se hizo"};
        ArrayAdapter adapter_normal_anormal_nosehizo = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, normal_anormal_nosehizo);
        String [] positivo_negativo_indetermminado = {"Seleccione", "Positivo", "Negativo", "Indeterminado"};
        ArrayAdapter adapter_positivo_negativo_indeterminado = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, positivo_negativo_indetermminado);
        final String matriz [][] = {
                {"¿Embarazo planeado?","1", "si_no"}, //0
                {"¿Fracaso del método anticonceptivo?","1", "si_no"}, //1
                {"Grupo sanguineo","1", "grupo_sanguineo"}, //2
                {"RH","1", "negativo_positivo_nosabe"}, //3
                {"Edad que llegó su primera regla","0", ""}, //4
                {"¿Cirugía genitourinaria?","1", "si_no_nosabe"}, //5
                {"¿Cuál cirugía?","0", ""}, //6
                {"¿Infertilidad?","1", "si_no_nosabe"}, //7
                {"¿Enfermedad pelvico inflamatoria?","1", "si_no_nosabe"}, //8
                {"¿Cuál enfermedad pélvica inflamatoria?","0", ""},//9
                {"¿Cuantos Embarazos previos?","0", ""}, //10
                {"¿Hipertensión?","1", "si_no"}, //11
                {"¿Cardiopatías?","1", "si_no"}, //12
                {"¿Enfermedades autoinmunes?","1", "si_no"}, //13
                {"¿Tuberculosis?","1", "si_no"}, //14
                {"¿Enfermedad de tranmisión sexual?","1", "si_no_nosabe"}, //15
                {"¿Cuál ETS?","0", ""}, //16
                {"¿Alergias?","1", "si_no"}, //17
                {"¿Cuál alergia?","0", ""}, //18
                {"Medicamentos actuales","0", ""}, //19
                {"¿Antecedentes de hipertensión?","1", "si_no"}, //20
                {"¿Antecente de cardiopatía?","1", "si_no"}, //21
                {"¿Antecedente de epilepsia?","1", "si_no"}, //22
                {"¿Antecente de tuberculosis?","1", "si_no"}, //23
                {"¿Antecedentes de gestaciones múltiples?","1", "si_no"}, //24
                {"¿Antecedentes de enfermedades congénitas?","1", "si_no"}, //25
                {"¿Cuál enfermedad congénita?","0", ""}, //26
                {"¿Vacuna antirubeola?","1", "previa_durante_no_nosabe"}, //27
                {"¿Vacuna antitetánica?","1", "si_no_nosabe"}, //28
                {"¿Aplicada en los últimos 5 años?","1", "si_no"}, //29
                {"Etnia","1", "etnia"}, //30
                {"¿Vive sola?","1", "si_no"}, //31
                {"Estado civil","1", "si_no"}, //32
                {"¿Violencia intrafamiliar?","1", "si_no"}, //33
                {"¿Cefalea?","1", "si_no"}, //34
                {"¿Transtornos visuales?","1", "si_no"}, //35
                {"¿Transtornos auditivos?","1", "si_no"}, //36
                {"¿Sangrado vaginal?","1", "si_no"}, //37
                {"¿Síntomas urinarios?","1", "si_no"}, //38
                {"¿Movimientos fetales?","1", "si_no"}, //39
                {"¿Fumadora activa?","1", "si_no"}, //40
                {"¿Fumadora pasiva?","1", "si_no"}, //41
                {"¿Consume drogas?","1", "si_no"}, //42
                {"¿Cuál droga?","0", ""}, //43
                {"¿Consume alcohol?","1", "si_no"}, //44
                {"Frecuencia respiratoria","0", ""}, //45
                {"Presión arterial sistólica","0", ""}, //46
                {"Presión arterial diastólica","0", ""}, //47
                {"Examen de mamas","1", "normal_anormal_nosehizo"}, //48
                {"Inspección visual cérvix","1", "normal_anormal_nosehizo"}, //49
                {"Tacto Vaginal","0", ""}, //50
                {"Observaciones examen físico","0", ""}, //51
                {"Prueba Hepatitis B","1", "si_no"}, //52
                {"Resultados Hepatitis B","1", "positivo_negativo_indeterminado"}, //53
                {"Prueba VIH","1", "si_no"}, //54
                {"Resultados VIH","1", "positivo_negativo_indeterminado"}, //55
                {"Examen citología reciente","1", "si_no"}, //56
                {"Observación citología","0", ""}}; //57

        LinearLayout.LayoutParams paramstitulo = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        LinearLayout.LayoutParams paramsspinner = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        paramsspinner.height = transform_dp(50);
        paramsspinner.weight = transform_dp(301);
        paramstitulo.setMargins(transform_dp(10),transform_dp(10),0,0);
        for(int j = 0; j <58; j++){
            TextView titulo = new TextView(Formulario_doctor.this);
            Spinner respuesta_sppiner = new Spinner(Formulario_doctor.this);
            EditText respuesta_texto = new EditText(Formulario_doctor.this);
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
                else if(matriz[j][2].equals("previa_durante_no_nosabe")){
                    respuesta_sppiner.setAdapter(adapter_previa_durante_no_nosabe);
                }
                else if(matriz[j][2].equals("etnia")){
                    respuesta_sppiner.setAdapter(adapter_etnia);
                }
                else if(matriz[j][2].equals("estado_civil")){
                    respuesta_sppiner.setAdapter(adapter_estado_civil);
                }
                else if(matriz[j][2].equals("normal_anormal_nosehizo")){
                    respuesta_sppiner.setAdapter(adapter_normal_anormal_nosehizo);
                }
                else if(matriz[j][2].equals("positivo_negativo_indeterminado")){
                    respuesta_sppiner.setAdapter(adapter_positivo_negativo_indeterminado);
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
                                aux.setSelection(0);
                            }
                            if(!(aux_edit == null)){
                                aux_edit.setVisibility(View.GONE);
                                aux_edit.setText("", TextView.BufferType.EDITABLE);
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
            } else if (j == 17 || j == 25 || j == 42 || j == 52 || j == 54 || j == 56) {
                respuesta_sppiner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                    @Override
                    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                        String si_no = (String) parent.getItemAtPosition(position);
                        if(si_no.equals("No") || si_no.equals("Seleccione")){
                            TextView aux_text = espacio.findViewWithTag(matriz[count+1][0]);
                            Spinner aux = espacio.findViewWithTag(matriz[count+1][0] + 1);
                            EditText aux_edit = espacio.findViewWithTag(matriz[count+1][0] + 2);
                            if(!(aux == null)){
                                aux.setVisibility(View.GONE);
                                aux.setSelection(0);
                            }
                            if(!(aux_edit == null)){
                                aux_edit.setVisibility(View.GONE);
                                aux_edit.setText("", TextView.BufferType.EDITABLE);
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
            else if (j == 5 || j == 8 || j == 15 || j == 28) {
                respuesta_sppiner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                    @Override
                    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                        String si_no_nosabe = (String) parent.getItemAtPosition(position);
                        if(si_no_nosabe.equals("No") || si_no_nosabe.equals("No sabe") || si_no_nosabe.equals("Seleccione")){
                            TextView aux_text = espacio.findViewWithTag(matriz[count+1][0]);
                            Spinner aux = espacio.findViewWithTag(matriz[count+1][0] + 1);
                            EditText aux_edit = espacio.findViewWithTag(matriz[count+1][0] + 2);
                            if(!(aux == null)){
                                aux.setVisibility(View.GONE);
                                aux.setSelection(0);
                            }
                            if(!(aux_edit == null)){
                                aux_edit.setVisibility(View.GONE);
                                aux_edit.setText("", TextView.BufferType.EDITABLE);
                            }
                            if(!(aux_text == null)){
                                aux_text.setVisibility(View.GONE);
                            }
                        }
                        else if(si_no_nosabe.equals("Si")){
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
