#ifndef CREATE_H
#define CREATE_H
#include <iostream>
#include "Instruccion.h"
#include <stdio.h>
#include <stdlib.h>
#include <fstream>

using namespace  std;

class Create
{
    public:
        Create();

        void menu();
        void tipoR();
        void tipoI();
        void tipoJ();

    private:
        enum opciones
        {
            op_salir,
            op_tipoR,
            op_tipoI,
            op_tipoJ
        };

};

#endif

