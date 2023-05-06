//  -----------------------------------------------
//
//  Copyright (C) 2015 Synopsys, Inc. All Rights Reserved.
//
//  grp0_ccall.cc
//
//  -----------------------------------------------

// Following needed to suppress b0, b1 defines\n");
#define ZEBU_NDEF_BINARY_VALUE

#include <string.h>
#include "grp0_ccall.h"
#include "libZebuCCall.hh"
using namespace ZEBU;

// Dummy function so that back-end is able to resolve the name
// for system tasks
extern "C" void grp0_dummy_import_for_pli () {};

namespace ZDPI_MOD_grp0_fifo_usage_spy {

} // of namespace ZDPI_MOD_grp0_fifo_usage_spy

void fifo_usage_spy_notify_ZDPI_MOD_grp0_fifo_usage_spy (const unsigned int *din)
{
	svBitVecVal _arg_min[SV_PACKED_DATA_NELEMS(4)];
	*_arg_min = (din[0] & 0xf);
	fifo_usage_spy_notify (_arg_min);
}

namespace ZDPI_MOD_grp0_stb {

class CCallSysTFHandler1 : public CCallDisplayHandler {
public:
	CCallSysTFHandler1 () :
		CCallDisplayHandler ("$display", 48)
	{
		this->setArgCount(2);
		this->setLibCellName("stb");
		addStaticArg ("Parity error detected on input at cycle %d of clk0");
		addVarArg (false, 47, 0);
	}
	/*redef*/void formatArgValue (unsigned int pos)
	{
		IoOpHandler *ioop = this;
		switch (pos) {

		case (0):
			reportInvalidDirection (pos, "get");
			break;
		case (1):
			{
				ioop->formatSlice (47, 0, false);
			}
			break;
		default:
			reportInvalidArg (pos);
			break;
		} /* of switch */
	}

};

class CCallSysTFHandler2 : public CCallDisplayHandler {
public:
	CCallSysTFHandler2 () :
		CCallDisplayHandler ("$display", 48)
	{
		this->setArgCount(2);
		this->setLibCellName("stb");
		addStaticArg ("Parity error detected on output at cycle %d of clk1");
		addVarArg (false, 47, 0);
	}
	/*redef*/void formatArgValue (unsigned int pos)
	{
		IoOpHandler *ioop = this;
		switch (pos) {

		case (0):
			reportInvalidDirection (pos, "get");
			break;
		case (1):
			{
				ioop->formatSlice (47, 0, false);
			}
			break;
		default:
			reportInvalidArg (pos);
			break;
		} /* of switch */
	}

};

} // of namespace ZDPI_MOD_grp0_stb

void display1_ZDPI_MOD_grp0_stb (const unsigned int *din)
{
	static ZDPI_MOD_grp0_stb::CCallSysTFHandler1 hdlr;
	hdlr.handleMessage (din);
}

void display2_ZDPI_MOD_grp0_stb (const unsigned int *din)
{
	static ZDPI_MOD_grp0_stb::CCallSysTFHandler2 hdlr;
	hdlr.handleMessage (din);
}

