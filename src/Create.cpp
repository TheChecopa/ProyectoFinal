#include "Create.h"

Create::Create()
{
    //ctor
}

void Create::menu()
{
    int opc;
    do
    {
        cout<<"Set instrucciones"<<endl<<endl
        <<"¿Que desea hacer?"<<endl
        <<op_tipoR<<"( Tipo R"<<endl
        <<op_tipoI<<"( Tipo I"<<endl
        <<op_tipoJ<<"( Tipo J"<<endl
        <<op_salir<<"( Salir"<<endl
        <<"Seleccione: ";
        cin>>opc;
        cin.ignore();
        system("CLS");
        switch(opc)
        {
        case op_tipoR:
            tipoR();
            break;
        case op_tipoI:
            tipoI();
            break;
        case op_tipoJ:
            tipoJ();
            break;
        case op_salir:
            cout<<"Adios..."<<endl;
            break;
        default:
            cout<<"Te equivocaste"<<endl;
            system("PAUSE");
            system("CLS");
            break;
        }
    }while(opc != op_salir);
}

void Create::tipoR()
{
    ofstream salida("archivo.txt", ios::app);

    Instruccion ins;
    int Op, Rd, Rs, Rt, Sh;
    cout<<"Instruccion Tipo R "<<endl<<endl;


    ins.setOpcode();

    cout<<"Registro fuente: ";
    cin>>Rs;
    ins.setRs(Rs);

    cout<<"Registro Temporal: ";
    cin>>Rt;
    ins.setRt(Rt);

    cout<<"Registro destino: ";
    cin>>Rd;
    ins.setRd(Rd);

    ins.setShamt();

    ins.setFunct();


    if(!salida.is_open())
    {
        cout<<"Error al cargar el archivo"<<endl;
    }
    else
    {
        salida <<ins;
        salida.close();
    }
}

void Create::tipoI()
{
    ofstream salida("archivo.txt", ios::app);

    Instruccion ins;
    int Rd, Rs, Inm;
    cout<<"Instruccion Tipo I "<<endl<<endl;

    cout<<"Ingrese los siguientes datos "<<endl<<endl;
    ins.setOpcode();

    cout<<"Registro fuente: ";
    cin>>Rs;
    ins.setRs(Rs);

    cout<<"Registro destino: ";
    cin>>Rd;
    ins.setRd(Rd);

    cout<<"Inmediato: ";
    cin>>Inm;
    ins.setInmediaro(Inm);

    if(!salida.is_open())
    {
        cout<<"Error al cargar el archivo"<<endl;
    }
    else
    {
        salida <<ins;
        salida.close();
    }

}

void Create::tipoJ()
{
    ofstream salida("archivo.txt", ios::app);

    Instruccion ins;
    int Op, Dir;
    cout<<"Instruccion Tipo J "<<endl<<endl;

    ins.setOpcode();

    cout<<"Direccion: ";
    cin>>Dir;
    ins.setDir(Dir);

    if(!salida.is_open())
    {
        cout<<"Error al cargar el archivo"<<endl;
    }
    else
    {
        salida <<ins;
        salida.close();
    }
}
