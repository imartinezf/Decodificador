 /******************************************************************* 
* Name:
*	Decodificador.v
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

 module Decodificador
#(
	parameter WORD_LENGTH = 5
)

( //This module does not work yet

);

reg  [WORD_LENGTH-1 : 0] Data_reg;

always@(*) begin
end

assign Data_Output = Data_reg;

endmodule