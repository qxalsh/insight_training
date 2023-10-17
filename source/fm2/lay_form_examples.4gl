##############################################################################################
# MAIN
#
#
##############################################################################################
MAIN

	DEFINE l_formName STRING
	
	OPTIONS INPUT WRAP
	DEFER INTERRUPT
	#LET l_formName =  fgl_winprompt(0,0,"Enter Form File Name","",30,0)
	
	OPEN WINDOW wChooseForm WITH FORM "form/lay_form_examples" ATTRIBUTE(BORDER)
	CALL ui.Interface.setText("Layout Forms")	

	INPUT l_formName WITHOUT DEFAULTS FROM formName ATTRIBUTE(UNBUFFERED)
		ON ACTION "ViewForm"
			LET l_formName = "form/form_examples/", trim(l_formName)
			OPEN WINDOW wForm WITH FORM l_formName
			MENU
				ON ACTION "Exit"
					EXIT MENU
			END MENU
			CLOSE WINDOW wForm	
	
	END INPUT

	
END MAIN
##############################################################################################
# END MAIN
##############################################################################################