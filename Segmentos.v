 /******************************************************************* 
* Name:
*	Segmentos.v
* Description:
* 	This module is a register with parameter.
* Inputs:
*	clk: Clock signal 
*  reset: reset signal
*	Data_Input: Data to lache data 
* Outputs:
* 	Mux_Output: Data to provide lached data
* Version:  
*	1.0
* Author: 
*	Ivan Martinez Flores & Jorge Araiza Martinez 
* Fecha: 
*	07/09/2018
*********************************************************************/

module Segmentos
#(
	parameter WORD_LENGTH = 4
)

(	// Input Ports
	input clk,
	input [WORD_LENGTH - 1 : 0] data_bin,

	// Output Ports	
	output [6:0] segmentos
	
);

	reg [6:0] segmentos_dato;


always@(posedge clk) 
	begin
		case(data_bin) 	            //6543210
			4'b0000: segmentos_dato = 7'b1000000; //Cero
			4'b0001: segmentos_dato = 7'b1111001; //Uno
			4'b0010: segmentos_dato = 7'b0100100; //Dos
			4'b0011: segmentos_dato = 7'b0110000; //Tres
			4'b0100: segmentos_dato = 7'b0011001; //Cuatro
			4'b0101: segmentos_dato = 7'b0010010; //Cinco
			4'b0110: segmentos_dato = 7'b0000010; //Seis
			4'b0111: segmentos_dato = 7'b1111000; //Siete
			4'b1000: segmentos_dato = 7'b0000000; //Ocho
			4'b1001: segmentos_dato = 7'b0011000; //Nueve
			default: segmentos_dato = 7'b1000000; //Cero
		endcase 
	end

assign segmentos = segmentos_dato;

endmodule