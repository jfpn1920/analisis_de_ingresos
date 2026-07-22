Algoritmo analisis_de_ingresos
	Definir opcion, totalIngresos Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir concepto Como Caracter
	Definir categoria Como Caracter
	Definir monto Como Real
	Definir fecha Como Caracter
	Definir fuente Como Caracter
	Definir estado Como Caracter
	Definir suma, promedio, mayorMonto, menorMonto Como Real
	Definir confirmados, pendientes Como Entero
	Dimension id[100]
	Dimension concepto[100]
	Dimension categoria[100]
	Dimension monto[100]
	Dimension fecha[100]
	Dimension fuente[100]
	Dimension estado[100]
	totalIngresos <- 0
	siguienteID <- 1
	//-----------------------------------------//
	//--|menu_principal_analisis_de_ingresos|--//
	//-----------------------------------------//
	Repetir
		Escribir "menu principal analisis de ingresos"
		Escribir "1) registrar ingreso"
		Escribir "2) editar ingreso"
		Escribir "3) eliminar ingreso"
		Escribir "4) buscar ingreso"
		Escribir "5) listar ingresos"
		Escribir "6) ver detalles del ingreso"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_ingreso|--//
			//-----------------------//
			1:
				Escribir "registrar ingreso"
				id[totalIngresos + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalIngresos + 1]
				Escribir "ingrese el concepto:"
				Leer concepto[totalIngresos + 1]
				Escribir "ingrese la categoria:"
				Leer categoria[totalIngresos + 1]
				Escribir "ingrese el monto:"
				Leer monto[totalIngresos + 1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalIngresos + 1]
				Escribir "ingrese la fuente del ingreso:"
				Leer fuente[totalIngresos + 1]
				Escribir "ingrese el estado (confirmado/pendiente):"
				Leer estado[totalIngresos + 1]
				totalIngresos <- totalIngresos + 1
				Escribir "ingreso registrado correctamente."
			//--------------------//
			//--|editar_ingreso|--//
			//--------------------//
			2:
				Escribir "editar ingreso"
				Si totalIngresos = 0 Entonces
					Escribir "no hay ingresos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalIngresos Hacer
						Escribir id[i], " | ", concepto[i], " | ", categoria[i], " | ", monto[i], " | ", fecha[i], " | ", fuente[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del ingreso:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalIngresos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo concepto:"
							Leer concepto[i]
							Escribir "ingrese la nueva categoria:"
							Leer categoria[i]
							Escribir "ingrese el nuevo monto:"
							Leer monto[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese la nueva fuente:"
							Leer fuente[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "ingreso editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ingreso con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_ingreso|--//
			//----------------------//
			3:
				Escribir "eliminar ingreso"
				Si totalIngresos = 0 Entonces
					Escribir "no hay ingresos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalIngresos Hacer
						Escribir id[i], " | ", concepto[i], " | ", categoria[i], " | ", monto[i], " | ", fecha[i], " | ", fuente[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del ingreso:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalIngresos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalIngresos Entonces
								Para j <- i Hasta totalIngresos - 1 Hacer
									id[j] <- id[j+1]
									concepto[j] <- concepto[j+1]
									categoria[j] <- categoria[j+1]
									monto[j] <- monto[j+1]
									fecha[j] <- fecha[j+1]
									fuente[j] <- fuente[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalIngresos <- totalIngresos - 1
							Escribir "ingreso eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ingreso con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_ingreso|--//
			//--------------------//
			4:
				Escribir "buscar ingreso"
				Si totalIngresos = 0 Entonces
					Escribir "no hay ingresos registrados."
				SiNo
					Escribir "ingrese el id del ingreso:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalIngresos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", concepto[i], " | ", categoria[i], " | ", monto[i], " | ", fecha[i], " | ", fuente[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ingreso con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_ingresos|--//
			//---------------------//
			5:
				Escribir "listar ingresos"
				Si totalIngresos = 0 Entonces
					Escribir "no hay ingresos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalIngresos Hacer
						Escribir id[i], " | ", concepto[i], " | ", categoria[i], " | ", monto[i], " | ", fecha[i], " | ", fuente[i], " | ", estado[i]
					FinPara
				FinSi
			//------------------------------//
			//--|ver_detalles_del_ingreso|--//
			//------------------------------//
			6:
				Escribir "ver detalles del ingreso"
				Si totalIngresos = 0 Entonces
					Escribir "no hay ingresos registrados."
				SiNo
					Escribir "ingrese el id del ingreso:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalIngresos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del ingreso"
							Escribir "id: ", id[i]
							Escribir "concepto: ", concepto[i]
							Escribir "categoria: ", categoria[i]
							Escribir "monto: ", monto[i]
							Escribir "fecha: ", fecha[i]
							Escribir "fuente: ", fuente[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ingreso con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalIngresos = 0 Entonces
					Escribir "no hay ingresos registrados."
				SiNo
					suma <- 0
					mayorMonto <- monto[1]
					menorMonto <- monto[1]
					confirmados <- 0
					pendientes <- 0
					Para i <- 1 Hasta totalIngresos Hacer
						suma <- suma + monto[i]
						Si monto[i] > mayorMonto Entonces
							mayorMonto <- monto[i]
						FinSi
						Si monto[i] < menorMonto Entonces
							menorMonto <- monto[i]
						FinSi
						Si estado[i] = "confirmado" Entonces
							confirmados <- confirmados + 1
						SiNo
							pendientes <- pendientes + 1
						FinSi
					FinPara
					promedio <- suma / totalIngresos
					Escribir "estadistica general"
					Escribir "total de ingresos: ", totalIngresos
					Escribir "monto total: ", suma
					Escribir "promedio de ingresos: ", promedio
					Escribir "ingreso mayor: ", mayorMonto
					Escribir "ingreso menor: ", menorMonto
					Escribir "ingresos confirmados: ", confirmados
					Escribir "ingresos pendientes: ", pendientes
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar analisis de ingresos."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo