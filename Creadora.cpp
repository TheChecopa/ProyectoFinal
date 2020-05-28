#include "Creadora.h"

Creadora::Creadora()
{
    //ctor
}

void Creadora::Ingreso(string valor)
{
    string completa, parte1, parte2, parte3, parte4;
    Instruccion ins;
    ins.Analisis(valor);

    if(ins.opc >=0 && ins.opc <= 8)
    {
        completa = "000000";
        for(int i(0); i < 5; ++i)
        {
            completa += ins.getRs().at(i);
        }
        for(int i(0); i < 5; ++i)
        {
            completa += ins.getRt().at(i);
        }
        for(int i(0); i < 5; ++i)
        {
            completa += ins.getRd().at(i);
        }
        for(int i(0); i < 5; ++i)
        {
            completa += "0";
        }
        if(ins.opc == 0)
        {
            string funct = "100000";
            for(int i(0); i < 6; ++i)
            {
                completa += funct[i];
            }
        }
        if(ins.opc == 1)
        {
            string funct = "100001";
            for(int i(0); i < 6; ++i)
            {
                completa += funct[i];
            }
        }
        if(ins.opc == 2)
        {
            string funct = "100010";
            for(int i(0); i < 6; ++i)
            {
                completa += funct[i];
            }
        }
        if(ins.opc == 3)
        {
            string funct = "100011";
            for(int i(0); i < 6; ++i)
            {
                completa += funct[i];
            }
        }
        if(ins.opc == 4)
        {
            string funct = "100100";
            for(int i(0); i < 6; ++i)
            {
                completa += funct[i];
            }
        }
        if(ins.opc == 5)
        {
            string funct = "100101";
            for(int i(0); i < 6; ++i)
            {
                completa += funct[i];
            }
        }
        if(ins.opc == 6)
        {
            string funct = "100110";
            for(int i(0); i < 6; ++i)
            {
                completa += funct[i];
            }
        }
        if(ins.opc == 7)
        {
            string funct = "000000";
            for(int i(0); i < 6; ++i)
            {
                completa += funct[i];
            }
        }
        if(ins.opc == 8)
        {
            string funct = "101010";
            for(int i(0); i < 6; ++i)
            {
                completa += funct[i];
            }
        }

        for(int i(0); i < 32; ++i)
        {
            if(i == 6 || i == 11|| i == 16 || i == 21 || i == 26)
            {
                cout<<"_";
            }
            cout<<completa[i];
        }
    }
    if(ins.opc >=9 && ins.opc <= 16)
    {
        if(ins.opc == 9)
        {
            completa = "001000";
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRs().at(i);
            }
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRt().at(i);
            }
            for(int i(0); i < 16; ++i)
            {
                completa += ins.getInmediato().at(i);
            }
        }
        if(ins.opc == 10)
        {
            completa = "001001";
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRs().at(i);
            }
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRt().at(i);
            }
            for(int i(0); i < 16; ++i)
            {
                completa += ins.getInmediato().at(i);
            }
        }
        if(ins.opc == 11)
        {
            completa = "001100";
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRs().at(i);
            }
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRt().at(i);
            }
            for(int i(0); i < 16; ++i)
            {
                completa += ins.getInmediato().at(i);
            }
        }
        if(ins.opc == 12)
        {
            completa = "001101";
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRs().at(i);
            }
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRt().at(i);
            }
            for(int i(0); i < 16; ++i)
            {
                completa += ins.getInmediato().at(i);
            }
        }
        if(ins.opc == 13)
        {
            completa = "101011";
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRs().at(i);
            }
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRt().at(i);
            }
            for(int i(0); i < 16; ++i)
            {
                completa += ins.getInmediato().at(i);
            }
        }
        if(ins.opc == 14)
        {
            completa = "100011";
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRs().at(i);
            }
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRt().at(i);
            }
            for(int i(0); i < 16; ++i)
            {
                completa += ins.getInmediato().at(i);
            }
        }
        if(ins.opc == 15)
        {
            completa = "001010";
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRs().at(i);
            }
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRt().at(i);
            }
            for(int i(0); i < 16; ++i)
            {
                completa += ins.getInmediato().at(i);
            }
        }
        if(ins.opc == 16)
        {
            completa = "000100";
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRs().at(i);
            }
            for(int i(0); i < 5; ++i)
            {
                completa += ins.getRt().at(i);
            }
            for(int i(0); i < 16; ++i)
            {
                completa += ins.getInmediato().at(i);
            }
        }
        for(int i(0); i < 32; ++i)
        {
            if(i == 6 || i == 11|| i == 16)
            {
                cout<<"_";
            }
            cout<<completa[i];
        }
    }
    if(ins.opc == 17)
    {
       completa = "000010";
       for(int i(0); i < 26; ++i)
       {
          completa += ins.getDir().at(i);
       }
       for(int i(0); i < 32; ++i)
        {
            if(i == 6)
            {
                cout<<"_";
            }
            cout<<completa[i];
        }
    }

    for(int i(0); i < 8; ++i)
    {
        parte1[i] = completa[i];
    }

    for(int i(8); i < 16; ++i)
    {
        parte2[i] = completa[i];
    }

    for(int i(16); i < 24; ++i)
    {
        parte3[i] = completa[i];
    }

    for(int i(24); i < 32; ++i)
    {
        parte4[i] = completa[i];
    }

    ofstream fs("nombre.txt", ios::app);
    fs << completa << endl;
    fs.close();


    cout<<endl<<ins.z<<endl<<endl;
}








