/*BEGIN_LEGAL 
INTEL CONFIDENTIAL
Copyright 2002-2005 Intel Corporation All Rights Reserved.

The source code contained or described herein and all documents
related to the source code (Material) are owned by Intel Corporation
or its suppliers or licensors. Title to the Material remains with
Intel Corporation or its suppliers and licensors. The Material may
contain trade secrets and proprietary and confidential information of
Intel Corporation and its suppliers and licensors, and is protected by
worldwide copyright and trade secret laws and treaty provisions. No
part of the Material may be used, copied, reproduced, modified,
published, uploaded, posted, transmitted, distributed, or disclosed in
any way without Intels prior express written permission.  No license
under any patent, copyright, trade secret or other intellectual
property right is granted to or conferred upon you by disclosure or
delivery of the Materials, either expressly, by implication,
inducement, estoppel or otherwise. Any license under such intellectual
property rights must be express and approved by Intel in writing.

Unless otherwise agreed by Intel in writing, you may not remove or
alter this notice or any other notice embedded in Materials by Intel
or Intels suppliers or licensors in any way.
END_LEGAL */
#include "pin.H"

#include <iostream>
#include <fstream>

ofstream dis("operand.out");

VOID Instruction(INS ins, VOID *v)
{
    INT32 count = INS_OperandCount(ins);
    
    for (INT32 i = 0; i < 5; i++)
    {
        if (i >= count)
        {
            dis << "        ";
            continue;
        }
        
        else if (INS_OperandIsAddressGenerator(ins, i))
            dis << "AGN";
        else if (INS_OperandIsMemory(ins, i))
        {
            dis << "MEM";
            dis << " " << REG_StringShort(INS_OperandMemoryBaseReg(ins, i));
        }
        else if (INS_OperandIsReg(ins, i))
            dis << "REG";
        else if (INS_OperandIsImmediate(ins, i))
            dis << "IMM";
        else if (INS_OperandIsDisplacement(ins, i))
            dis << "DSP";
        else
            dis << "XXX";

        if (INS_OperandIsImplicit(ins, i))
            dis << ":IMP ";
        else
            dis << "     ";
                
        
    }

    dis << INS_Disassemble(ins) << endl;
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
