<?php
/**
 * JPL TSolucio, S.L. 2009 MPL
 * Es_mx Author: Francisco Hernandez Odin Consultores www.odin.mx
 **/

$mod_strings = array(
'VTEmailTask' => 'Enviar Correo',
'VTEntityMethodTask' => 'Ejecutar Función',
'VTCreateTodoTask' => 'Crear Tarea',
'VTCreateEventTask' => 'Crear Evento',
'VTSMSTask' => 'Enviar SMS',
'LBL_EDIT_TASK'=>'Editar Tarea',
'LBL_EDIT_TASK_TITLE'=>'Editar una tarea existente o crear una nueva',
'LBL_EDIT_WORKFLOW'=>'Editar Flujo Trabajo',
'LBL_EDIT_WORKFLOW_TITLE'=>'Editar un flujo de trabajo existente o crear uno nuevo',
'LBL_FROM_TEMPLATE'=>'Basado en plantilla',
'LBL_NEW_WORKFLOW'=>'Nuevo Flujo de Trabajo',
'LBL_NEW_TEMPLATE'=>'Guardar como Plantilla',
'LBL_CREATE_WORKFLOW_FOR'=>'Crear un flujo de trabajo para',
'LBL_FOR_MODULE'=>'Para Módulo',
'LBL_CHOOSE_A_TEMPLATE'=>'Seleccione plantilla',
'LBL_VALIDATION_MISSING_MANDATORY_FIELDS'=>'Hay campos obligatorios vacíos.',
'LBL_VALIDATION_INVALID_DATE_RANGE'=>'Fecha/Hora de inicio es superior a Fecha/Hora fin',
'LBL_ERROR_NO_WORKFLOW'=>'El flujo de trabajo al que intentas acceder no existe',
'LBL_ERROR_NO_TASK'=>'La tarea a la que intentas acceder no existe',
'LBL_ERROR_NOT_ADMIN'=>'Solo el usuario administrador tiene acceso a este módulo',
'LBL_CREATE_WORKFLOW'=>'Crear flujo trabajo',
'LBL_WORKFLOW_LIST'=>'Flujos de Trabajo',
'LBL_AVAILABLE_WORKLIST_LIST'=>'Flujos de Trabajo Disponibles',
'LBL_LOADING'=>'Cargando...',
'LBL_REEVALCONDITIONS' => 'Evaluar condiciones en el momento de la ejecución',
'LBL_VALIDATION_ERROR'=>'Error de Validación',
'LBL_SELECT_OPTION_DOTDOTDOT'=>'Selecciona Opción...',
'LBL_WORKFLOW_NOTE_CRON_CONFIG'=>'NOTA: Debes configurar la tarea programada (Cron Job) de Flujo de Trabajo.',
'LBL_NO_TEMPLATES'=>'Sin Plantillas',
'LBL_SELECT'=>'Selecciona',
'LBL_MESSAGE'=>'Mensaje',
'VTPDFMakerTask'=>'Guardar documento de PDFMaker',  // ITS4YOU-CR PDF Maker
'LBL_SEND_ALL_ATTACHMENT'=>'Enviar todos los adjuntos',
'LBL_SET_FIELD_VALUES'=>'Establecer valor de campo',
'LBL_ADD_FIELD'=>'Agregar campo',

'LBL_USE_FIELD_VALUE_DASHDASH'=>'-- Utilizar Valor --',
'LBL_USE_FUNCTION_DASHDASH'=>'-- Utilizar Función --',

'LBL_RAW_TEXT'=>'Texto',
'LBL_FIELD'=>'Campo',
'LBL_EXPRESSION'=>'Expresión',
'LBL_SET_EXPRESSION'=>'Definir Expresión',

'LBL_MANUAL'=>'Sistema',
'LBL_RECORD_ACCESS_CONTROL' => 'Control de Acceso a Registro',
'LBL_NEW_CONDITION_GROUP_BUTTON_LABEL'=>'Añadir Condición de Grupo',

'VTUpdateFieldsTask' => 'Actualizar Campos',
'LBL_ON_DELETE'=>'Al Eliminar',

'LBL_VALIDATION_DUPLICATE_FIELDNAMES' => 'El mismo campo ha sido seleccionado más de una vez.',
'LBL_VALIDATION_INVALID_FIELD_VALUES' => 'Valores de Campos Inválidos',
'LBL_CREATE_ENTITY_NOTE_ORDER_MATTERS' => 'Nota: Las expresiones se evalúan en el orden de los campos.
											Asegúrate de asignar un valor al campo antes de utilizarlo.',
'LBL_CREATE_ENTITY_NOTE_BUSINESSMAPS' => 'Nota: Puedes usar un Mapa de Negocio para mapear los campos de una entidad a otra, en ese caso los campos de mapeo indicados en el mapa, prevalecerán sobre los que se definan aquí.',
'LBL_SET_VALUE' => 'Establecer Valor',

'LBL_EMAIL_RECIPIENT' => 'Destinatario',
'LBL_EMAIL_CC' => 'CC',
'LBL_EMAIL_BCC' => 'BCC',
'LBL_EMAIL_SUBJECT' => 'Asunto',
'LBL_EMAIL_FROMNAME' => 'Nombre De',
'LBL_EMAIL_FROMEMAIL' => 'Email De',
'LBL_EMAIL_REPLYTO' => 'Responder a',
'LBL_AttachmentInField' => 'Adjunto en campo',
'LBL_WORKFLOW_NOTE_EVENT_TASK_TIMEZONE' => 'Nota: Todas las fechas, horas e información recurrente configurada para el evento,
											estarán definidas conforme a la zona horaria por defecto, configurada en config.inc.php',
'Select Meta Variables' => 'Selecciona Meta Variables',
'Current Date' => 'Fecha Actual',
'Current Time' => 'Hora Actual',
'System Timezone' => 'Zona Horaria del Sistema',
'User Timezone' => 'Zona Horaria del Usuario',
'CRM Detail View URL' => 'URL Vista Detalle del CRM',
'Portal Detail View URL' => 'URL Vista Detalle del Portal',
'Site Url' => 'Url CRM',
'Portal Url' => 'Url Portal',
'groupEmailList' => 'Emails de Grupo',

'Workflow'=>'Flujo de Trabajo',

'VTCreateEntityTask' => 'Crear Entidad',
'LBL_ENTITY_TYPE' => 'Tipo Entidad',
'LBL_SELECT_ENTITY_TYPE' => '-- Selecciona Tipo Entidad --',
'Assigned User' => 'Usuario Asignado',
'LBL_NO_ENTITIES_FOUND' => 'No se han encontrado entidades para crear',
'LBL_PARENT_OWNER' => 'Dueño del Registro Superior',
'LBL_SPECIAL_OPTIONS' => 'Opciones Especiales',
'CBTagTask' => 'Añadir/Eliminar Etiqueta',
'Add Tag' => 'Añadir Etiqueta',
'Delete Tag' => 'Eliminar Etiqueta',
'Tags' => 'Etiquetas',
'ForAllUsers' => 'Para todos los Usuarios',
'ForCurrentUser' => 'Solo para el usuario Actual',
'CBRelateSales' => 'Relacionar Producto/Servicio',
'Relate Product' => 'Relacionar Producto',
'Relate Service' => 'Relacionar Servicio',
'Relate with AccountVendor' => 'Relacionar con Cuenta/Proveedor',
'Relate with Contact' => 'Relacionar con Contacto',
'CBDeleteRelatedTask' => 'Eliminar Registros Relacionados',
'CBAssignRelatedTask' => 'Asignar Registros Relacionados',
'CBSelectcbMap' => 'Selecciona Regla de Negocio',
'ConvertInventoryModule' => 'Convertir Módulos Inventario',
'ConvertInventoryModuleMessage' => 'La correspondencia de campos es la que trae la aplicación por defecto y puede ajustarse utilizando las Reglas de Negocio de tipo Mapeo de Campo.',
'CBSendMMMSGTask' => 'Enviar Mensaje a Mattermost',
'Send Message To MM' => 'Enviar Mensaje a Mattermost',
'VTSendMessage2MMTask' => 'Enviar Mensaje a Mattermost',
'whatsappworkflowtask' => 'Enviar Mensaje WhatsApp',
'Whatsapp Workflow Task' => 'Enviar Mensaje WhatsApp',
'WhatsappWorkflowTask' => 'Enviar Mensaje WhatsApp',

'LBL_EVENTNAME' => 'Nombre de Evento',
'LBL_DESCRIPTION' => 'Descripción',
'LBL_STATUS' => 'Estado',
'LBL_TYPE' => 'Tipo',
'LBL_START_TIME' => 'Hora de inicio',
'LBL_START_DATE' => 'Fecha de inicio',
'LBL_END_TIME' => 'Hora de finalización',
'LBL_END_DATE' => 'Fecha de finalización',
'LBL_SET_DATE'=>'Set Date',
'LBL_AFTER' => 'Después',
'LBL_BEFORE' => 'Antes',
'LBL_DAYS' => 'días',
'LBL_HELPDESK_SUPPORT_EMAILID'=>'Email de Asistencia y Soporte',
'LBL_HELPDESK_SUPPORT_NAME'=>'Nombre de Asistencia y Soporte',
'LBL_ORGANIZATION_LOGO' => 'Logo Empresa',
'LBL_RUN_WORKFLOW' => 'Ejecutar Flujo de Trabajo',
'LBL_AT_TIME' => 'En esta hora',
'LBL_HOURLY' => 'Cada hora',
'LBL_DAILY' => 'Cada día',
'LBL_WEEKLY' => 'Cada semana',
'LBL_ON_THESE_DAYS' => 'En estos días',
'LBL_MONTHLY_BY_DATE' => 'Mensual por Fecha',
'LBL_MONTHLY_BY_WEEKDAY' => 'Mensual por Día de Semana',
'LBL_YEARLY' => 'Cada año',
'LBL_MINUTES_INTERVAL'=>'Intervalo de Minutos',
'LBL_EVERY_MINUTEINTERVAL'=>'Cada',
'LBL_MINUTES'=>'minutos',
'LBL_SPECIFIC_DATE' => 'En esta fecha',
'LBL_CHOOSE_DATE' => 'Elige Fecha',
'LBL_SELECT_MONTH_AND_DAY' => 'Selecciona Mes y Día',
'LBL_SELECTED_DATES' => 'Fechas seleccionadas',
'LBL_EXCEEDING_MAXIMUM_LIMIT' => 'Se ha excedido el límite máximo permtido',
'LBL_NEXT_TRIGGER_TIME' => 'Próxima ejecución',
'UpdateInventoryProducts On Every Save' => 'Actualizar inventario de productos',
'Send Email to user when Notifyowner is True' => 'Envíar Email al usuario cuando Notificación Propietario está activado',
'Send Email to user when Portal User is True' => 'Envíar Email al usuario cuando Portal de Usuario está activado',
'Send Email to users on Potential creation' => 'Envíar Email al usuario al crear una Oportunidad',
'Workflow for Contact Creation or Modification' => 'Enviar Email al Contacto con información de acceso al Portal',
'Workflow for Ticket Created from Portal' => 'Flujo de Trabajo para la Creación de Ticket desde el Portal',
'Workflow for Ticket Updated from Portal' => 'Flujo de Trabajo para la Actualización de Ticket desde el Portal',
'Workflow for Ticket Change, not from the Portal' => 'Flujo de Trabajo para la Actualización de Ticket, no desde el Portal',
'Workflow for Events when Send Notification is True' => 'Flujo de Trabajo para Eventos cuando el Envío de Notificación está activado',
'Workflow for Calendar Todos when Send Notification is True' => 'Flujo de Trabajo para Tareas de Calendario cuando el Envío de Notificación está activado',
'Calculate or Update forecast amount' => 'Calcular cantidad objetiva en oportunidad',
'LBL_METHOD_NAME' => 'Nombre del Método',
'NO_METHOD_AVAILABLE' => 'No hay ningún método disponible para este Módulo.',
'launchrelwf' => 'Ejecutar flujos en actualizaciones de módulos relacionados',
'LBL_WFPURPOSE' => 'Propósito',
);
?>
