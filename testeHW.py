#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Curso de Elementos de Sistemas
# Desenvolvido por: Rafael Corsi <rafael.corsi@insper.edu.br>
#
# Adaptado de :     Pedro Cunial   <pedrocc4@al.insper.edu.br>
#                   Luciano Soares <lpsoares@insper.edu.br>
# Data de criação: 07/2017


######################################################################
# Tools
######################################################################
from os.path import join, dirname
import sys, subprocess
from pathlib import Path

sys.path.insert(0, str(Path.home()) + '/Z01-Tools/scripts/')

from config import *

class tstP2(object):

    def __init__(self):
        self.pwd = os.path.dirname(os.path.abspath(__file__))
        self.rtl = os.path.join(self.pwd,'vhd/')
        self.tst = os.path.join(self.pwd,'tests/vhd/')
        self.log = os.path.join(TOOL_PATH,'log','logAV1.xml')
        self.work = vhdlScript(self.log)

    def addSrc(self, work):
        work.addSrc(self.rtl)

    def addTst(self, work):
        if work.addTstConfigFile(self.tst) is False:
            sys.exit(1)

    def add(self, work):
        self.addSrc(work)
        self.addTst(work)

    def head(self):
        logLogiComb("---------- Portas Logicas            ")
        logLogiComb("---------- 03-Logica-Combinacional   ")

if __name__ == "__main__":

    # inicializa notificacao
    noti = notificacao('AV4')

    tstP2 = tstP2()
    tstP2.add(tstP2.work)
    if tstP2.work.run() == -1:
        noti.error('\n Erro de compilação VHDL')
        sys.exit(-1)

    print("===================================================")



