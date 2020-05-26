#ifndef INSTRUCCION_H
#define INSTRUCCION_H
#include <iostream>
#include <conio.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

using namespace  std;

class Instruccion
{
public:
  Instruccion();

  string getOpcode()const;
  void setOpcode();

  string getRd()const;
  void setRd(int valor);

  string getRs()const;
  void setRs(int valor);

  string getRt()const;
  void setRt(int valor);

  string getShamt()const;
  void setShamt();

  string getFunct()const;
  void setFunct();

  string getInmediato()const;
  void setInmediaro(int valor);

  string getDir()const;
  void setDir(int valor);

 friend ostream& operator << (ostream &os, const Instruccion& obj);


private:
  string Opcode, Rd, Rs, Rt, Shamt, Funct, Dir, Inm;
    enum operaciones
    {
      suma,
      resta,
      multiplicacion,
      division,
      And,
      Or,
      Xor,
      Not,
      comparacion
  };

  enum OpcI
    {
      addi,
      subi,
      andi,
      ori,
      stli,
      sw,
      lw,
      beq,
      TypeR,
      TypeJ
  };

};

#endif // INSTRUCCION_H
