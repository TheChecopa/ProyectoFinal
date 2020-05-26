#include "Instruccion.h"

Instruccion::Instruccion()
{

}

void Instruccion::setOpcode()
{
  int opc;

  do
  {
    cout<<"Elije el Opcode"<<endl<<endl
    <<addi<<".-Suma Inmediata"<<endl
    <<subi<<".-Resta Inmediata"<<endl
    <<andi<<".- And Inmediata"<<endl
    <<ori<<".- Or inmediato"<<endl
    <<stli<<".- Comparacion Inmediata"<<endl
    <<sw<<".-store word"<<endl
    <<lw<<".-load word"<<endl
    <<beq<<".-beq"<<endl
    <<TypeR<<".-Tipo R"<<endl
    <<TypeJ<<".-Tipo J"<<endl
    <<"Elija: ";
    cin >> opc;
    cin.ignore();
    system("cls");
    switch(opc)
    {
    case addi:
       Opcode = "001000";
       break;
    case andi:
       Opcode = "001100";
       break;
    case ori:
       Opcode = "001101";
       break;
    case stli:
       Opcode = "001010";
       break;
    case sw:
       Opcode = "101011";
       break;
    case lw:
        Opcode = "100011";
        break;
    case beq:
        Opcode = "000100";
        break;
    case TypeR:
        Opcode = "000000";
        break;
    case TypeJ:
        Opcode = "000010";
        break;
    case subi:
        Opcode = "001001";
    default:
        cout<<"Te equivocaste"<<endl;
        break;
    }
  }while(opc > 8);

}
string Instruccion::getOpcode()const
{
  return Opcode;
}

string Instruccion::getRd()const
{
  return Rd;
}
void Instruccion::setRd(int valor)
{
  int residuo, division;
  string num;


      for(int i(0); i < 5; ++i)
      {
          if(valor == 1)
          {
              num += valor + '0' ;
              valor = 0;
              i += 1;
          }
          residuo = valor % 2;
          num += residuo + '0';
          division = valor/2;
          valor = division;
      }

      string cadena;
      for (int i = 4; i>=0;i--)
        {
            cadena += num[i];
        }

  Rd = cadena;
}

string Instruccion::getRs()const
{
  return Rs;
}
void Instruccion::setRs(int valor)
{
  int residuo, division;
  string num;

  for(int i(0); i < 5; ++i)
  {
      if(valor == 1)
      {
          num += valor + '0';
          valor = 0;
          i += 1;
      }
      residuo = valor % 2;
      num += residuo + '0' ;
      division = valor/2;
      valor = division;
  }

  string cadena;
  for (int i = 4; i>=0;i--)
    {
        cadena += num[i];
	}

  Rs = cadena;
}

string Instruccion::getRt()const
{
  return Rt;
}
void Instruccion::setRt(int valor)
{
    int residuo, division;
  string num;

  for(int i(0); i < 5; ++i)
  {
      if(valor == 1)
      {
          num += valor + '0';
          valor = 0;
          i += 1;
      }
      residuo = valor % 2;
      num += residuo + '0';
      division = valor/2;
      valor = division;
  }
 string cadena;
  for (int i = 4; i>=0;i--)
    {
        cadena += num[i];
	}

  Rt = cadena;
}

string Instruccion::getShamt()const
{
  return Shamt;
}
void Instruccion::setShamt()
{
    Shamt = "00000";
}

string Instruccion::getFunct()const
{
  return Funct;
}
void Instruccion::setFunct()
{
  int opc;

  do
  {
    cout<<"Elije la operacion aritmetica"<<endl<<endl
    <<suma<<".-Suma"<<endl
    <<resta<<".-Resta"<<endl
    <<multiplicacion<<".-Multiplicacion"<<endl
    <<division<<".-divison"<<endl
    <<And<<".-and"<<endl
    <<Or<<".-or"<<endl
    <<Xor<<".-xor"<<endl
    <<Not<<".-not"<<endl
    <<comparacion<<".-Comparacion"<<endl
    <<"Elija: ";
    cin >> opc;
    cin.ignore();
    system("cls");
    switch(opc)
    {
    case suma:
       Funct = "100000";
       break;
    case resta:
       Funct = "100001";
       break;
    case multiplicacion:
       Funct = "100010";
       break;
    case division:
        Funct = "100011";
        break;
    case And:
        Funct = "100100";
        break;
    case Or:
        Funct = "100101";
        break;
    case Xor:
        Funct = "100110";
        break;
    case Not:
        Funct = "000000";
        break;
    case comparacion:
        Funct = "101010";
        break;
    default:
        cout<<"Te equivocaste"<<endl;
        break;
    }
  }while(opc > 8);

}

string Instruccion::getInmediato()const
{
    return Inm;
}
void Instruccion::setInmediaro(int valor)
{
    int residuo, division;
    string num;

      for(int i(0); i < 16; ++i)
      {
          if(valor == 1)
          {
              num += valor + '0';
              valor = 0;
              i += 1;
          }
          residuo = valor % 2;
          num += residuo + '0' ;
          division = valor/2;
          valor = division;
      }
      string cadena;
      for (int i = 15; i>=0;i--)
        {
            cadena += num[i];
        }

      Inm = cadena;
}

string Instruccion::getDir()const
{
    return Dir;
}
void Instruccion::setDir(int valor)
{
    int residuo, division;
    string num;

      for(int i(0); i < 26; ++i)
      {
          if(valor == 1)
          {
              num += valor + '0';
              valor = 0;
              i += 1;
          }
          residuo = valor % 2;
          num += residuo + '0' ;
          division = valor/2;
          valor = division;
      }
      string cadena;
      for (int i = 25; i>=0;i--)
        {
            cadena += num[i];
        }

      Dir = cadena;
}

ostream& operator << (ostream& os, const Instruccion& obj)
{
    os<<obj.getOpcode()<<"_"<<obj.getRs()<<"_"<<obj.getRt()<<"_"<<obj.getRd()<<"_"<<obj.getShamt()<<"_"<<obj.getFunct()<<obj.getInmediato()<<obj.getDir()<<endl;
    return os;
}



