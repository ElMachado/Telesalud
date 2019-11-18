import express,{json} from 'express';
import morgan from 'morgan';

//importing routes
import autenticacionRoutes from './routes/autenticacion';
import antecedentesfamiliaresRoutes from './routes/antecedentesfamiliares';
import antecedentesgoRoutes from './routes/antecedentesgo';
import antecedentesinmunologicosRoutes from './routes/antecedentesinmunologicos';
import antecedentespersonalesRoutes from './routes/antecedentespersonales';
import antecedentessociodemograficosRoutes from './routes/antecedentessociodemograficos';
import atencioncontrolprenatalRoutes from './routes/atencioncontrolprenatal';
import ciudadRoutes from './routes/ciudad';
import contactoRoutes from './routes/contacto';
import contactoadicionalRoutes from './routes/contactoadicional';
import contactoadicionalxusuarioRoutes from './routes/contactoadicionalxusuario';
import contactoxusuarioRoutes from './routes/contactoxusuario';
import datosinicialesRoutes from './routes/datosiniciales';
import departamentoRoutes from './routes/departamento';
import departamentoxciudadRoutes from './routes/departamentoxciudad';
import epsRoutes from './routes/eps';
import epsxusuarioRoutes from './routes/epsxusuario';
import examenesRoutes from './routes/examenes';
import examenfisicoRoutes from './routes/examenfisico';
import habitosRoutes from './routes/habitos';
import paisRoutes from './routes/pais';
import paisxdepartamentoRoutes from './routes/paisxdepartamento';
import sexoRoutes from './routes/sexo';
import sexoxusuarioRoutes from './routes/sexoxusuario';
import sintomasRoutes from './routes/sintomas';
import terminoembarazoRoutes from './routes/terminoembarazo';
import terminoembarazoxusuarioRoutes from './routes/terminoembarazoxusuario';
import tipoafiliacionRoutes from './routes/tipoafiliacion';
import tipoafiliacionxusuarioRoutes from './routes/tipoafiliacionxusuario';
import tipocontactoRoutes from './routes/tipocontacto';
import tipocontactoadicionalRoutes from './routes/tipocontactoadicional';
import tipoidentificacionRoutes from './routes/tipoidentificacion';
import tipoidentificacionxusuarioRoutes from './routes/tipoidentificacionxusuario';
import tipoocupacionRoutes from './routes/tipoocupacion';
import tipoocupacionxusuarioRoutes from './routes/tipoocupacionxusuario';
import tipousuarioRoutes from './routes/tipousuario';
import tipousuarioxusuarioRoutes from './routes/tipousuarioxusuario';
import usuarioRoutes from './routes/usuario';
import zonaRoutes from './routes/zona';


//initialization
const app=express();

//middlewares
app.use(morgan('dev'));
app.use(json());

//routes
app.use('/api/autenticacion',autenticacionRoutes);
app.use('/api/antecedentesfamiliares',antecedentesfamiliaresRoutes);
app.use('/api/antecedentesgo',antecedentesgoRoutes);
app.use('/api/antecedentesinmunologicos',antecedentesinmunologicosRoutes);
app.use('/api/antecedentespersonales',antecedentespersonalesRoutes);
app.use('/api/antecedentessociodemograficos',antecedentessociodemograficosRoutes);
app.use('/api/atencioncontrolprenatal',atencioncontrolprenatalRoutes);
app.use('/api/ciudad',ciudadRoutes);
app.use('/api/contacto',contactoRoutes);
app.use('/api/contactoadicional',contactoadicionalRoutes);
app.use('/api/contactoadicionalxusuario',contactoadicionalxusuarioRoutes);
app.use('/api/contactoxusuario',contactoxusuarioRoutes);
app.use('/api/datosiniciales',datosinicialesRoutes);
app.use('/api/departamento',departamentoRoutes);
app.use('/api/departamentoxciudad',departamentoxciudadRoutes);
app.use('/api/eps',epsRoutes);
app.use('/api/epsxusuario',epsxusuarioRoutes);
app.use('/api/examenes',examenesRoutes);
app.use('/api/examenfisico',examenfisicoRoutes);
app.use('/api/habitos',habitosRoutes);
app.use('/api/pais',paisRoutes);
app.use('/api/paisxdepartamento',paisxdepartamentoRoutes);
app.use('/api/sexo',sexoRoutes);
app.use('/api/sexoxusuario',sexoxusuarioRoutes);
app.use('/api/sintomas',sintomasRoutes);
app.use('/api/terminoembarazo',terminoembarazoRoutes);
app.use('/api/terminoembarazoxusuario',terminoembarazoxusuarioRoutes);
app.use('/api/tipoafiliacion',tipoafiliacionRoutes);
app.use('/api/tipoafiliacionxusuario',tipoafiliacionxusuarioRoutes);
app.use('/api/tipocontacto',tipocontactoRoutes);
app.use('/api/tipocontactoadicional',tipocontactoadicionalRoutes);
app.use('/api/tipoidentificacion',tipoidentificacionRoutes);
app.use('/api/tipoidentificacionxusuario',tipoidentificacionxusuarioRoutes);
app.use('/api/tipoocupacion',tipoocupacionRoutes);
app.use('/api/tipoocupacionxusuario',tipoocupacionxusuarioRoutes);
app.use('/api/tipousuario',tipousuarioRoutes);
app.use('/api/tipousuarioxusuario',tipousuarioxusuarioRoutes);
app.use('/api/usuario',usuarioRoutes);
app.use('/api/zona',zonaRoutes);

export default app;