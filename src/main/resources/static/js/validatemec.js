/**
 * 
 */
$(document).ready(function() {
	$("#formmecanica").validate({
		rules : {
			nombre : {
				required : true
			},
			apellidoPaterno:{
				required: true
			},
			ci:{
				required:true,
				number:true,
				maxlength: 11
			},
			celular:{
				required:true,
				number: true
			},
			email:{
				required:true,
				email:true
			}
		
		},
		messages : {
			nombre : "Debe escribir su nombre",
			apellidoPaterno:"Debe escribir su apellido paterno o solo insertar un punto",
			ci:"Debe escribir solo el número de su ci sin extención",
			celular:"Debe escribir su número de celular",
			email:"No es un email válido"
		},
        errorElement: 'div',
        errorPlacement: function (error, element) {
            if (element.attr("type") == "radio") {
                error.insertBefore(element);
            } else {
                //error.insertAfter(element);
                var placement = $(element).data('error');
                if (placement) {
                    $(placement).append(error)
                } else {
                    error.insertAfter(element);
                }
            }
        },
        submitHandler: function(form) {
            $(form).ajaxSubmit();
          }
	});
});