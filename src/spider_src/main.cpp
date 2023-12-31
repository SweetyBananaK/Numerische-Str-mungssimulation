/***************************************************************************
 *   Copyright (C) 2006-2014 by  Institute of Combustion Technology        *
 *   d.mayer@itv.rwth-aachen.de                                            *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/

#include <stdio.h>
#include <iostream>

#include "data.h"
#include "input.h"
#include "setup.h"
#include "output.h"

//------------------------------------------------------
int main(int, char**)
{
  sData* data = new sData;
        const char* cfgFilePath  = "spider.in";

    std::cout << "=== Spider ===\n" << std::endl;
                          

  // read config from input file
  if(!input(cfgFilePath, data)) {
    std::cout << "ERROR while reading input file...exiting";
    getchar();
    return 1;
  }

  // setup data (geometry, boundaries, initial data, etc.)
  if(!setup(data)) {
    std::cout << "ERROR while data setup...exiting";
    getchar();
    return 1;
  }

  // output data
  if(!output(data)) {
    std::cout << "ERROR while data output...exiting";
    getchar();
    return 1;
  }
  
  // delete structure
  delete data;

  std::cout << "Success...\n";
  //getchar();
  return 0;
}
