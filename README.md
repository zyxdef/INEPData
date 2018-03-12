# inepdata

Microdata from INEP 

This package downloads, decompresses, imports, formats and organizes microdata about Brazilian educational system that was made available by INEP (<http://www.inep.gov.br/>).

INEP stands for *Instituto Nacional de Estudos e Pesquisas Educacionais Anísio Teixeira* (National Institute for Educational Studies and Research "Anísio Teixeira"; see <http://portal.inep.gov.br/web/guest/about-inep>) is a Brazilian federal research agency responsible for assessing basic and higher education nationally through a series of censuses, national exams and nation wide surveys, collectively called *programs* at INEP.

The microdata download page currently makes available data from the following programs, 
each with different combinations of years of availability:

<!-- available.programs %>% pander::pander(split.table = 200) -->

|    program    |                               name                               |     nickname      | acronym |                            translation                             |                              about                               |                                                                  years                                                                   |
|:-------------:|:----------------------------------------------------------------:|:-----------------:|:-------:|:------------------------------------------------------------------:|:----------------------------------------------------------------:|:----------------------------------------------------------------------------------------------------------------------------------------:|
|    censup     |                    Censo da Educação Superior                    |                   | CenSup  |                     Census of Higher Education                     |                    Censo da Educação Superior                    |    1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016    |
|      cpm      |              Censo dos Profissionais do Magistério               |                   |   CPM   |                  Census of Teaching Professionals                  |              Censo dos Profissionais do Magistério               |                                                                   2003                                                                   |
| censo_escolar |                          Censo Escolar                           |                   |         |                     Census of Basic Education                      |                          Censo Escolar                           | 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017 |
|     enade     |            Exame Nacional de Desempenho de Estudantes            |                   |  ENADE  |         Higher Education Student Performance National Exam         |            Exame Nacional de Desempenho de Estudantes            |                               2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016                               |
|     enem      |                  Exame Nacional de Ensino Médio                  |                   |  ENEM   |                     High School National Exam                      |                  Exame Nacional de Ensino Médio                  |             1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016             |
|     padae     |       Pesquisa de Ações Discriminatórias no Âmbito Escolar       |                   |         |             Survey of Discriminatory Actions in School             |       Pesquisa de Ações Discriminatórias no Âmbito Escolar       |                                                                   2008                                                                   |
|     pnera     |         Pesquisa Nacional da Educação na Reforma Agrária         |                   |  PNERA  |          National Survey of Education in Agrarian Reform           |         Pesquisa Nacional da Educação na Reforma Agrária         |                                                                   2004                                                                   |
|    anresc     |             Avaliação Nacional do Rendimento Escolar             |   Prova Brasil    | ANRESC  |             National Evaluation of School Performance              |             Avaliação Nacional do Rendimento Escolar             |                                                             2007, 2009, 2011                                                             |
|     aneb      |              Avaliação Nacional da Educação Básica               | Saeb/Prova Brasil |  ANEB   |               National Evaluation of Basic Education               |              Avaliação Nacional da Educação Básica               |                                     1995, 1997, 1999, 2001, 2003, 2005, 2007, 2009, 2011, 2013, 2015                                     |
|      ana      |               Avaliação Nacional da Alfabetização                |                   |   ANA   |                   Alphabetization National Exam                    |               Avaliação Nacional da Alfabetização                |                                                                2014, 2016                                                                |
|      enc      |                     Exame Nacional de Cursos                     |   Provão Brasil   |   ENC   |                        Course National Exam                        |                     Exame Nacional de Cursos                     |                                                 1997, 1998, 1999, 2000, 2001, 2002, 2003                                                 |
|      idd      | Indicador da Diferença entre os Desempenhos Observado e Esperado |                   |   IDD   | Indicator of Difference between Observed and Expected Performances | Indicador da Diferença entre os Desempenhos Observado e Esperado |                                                             2014, 2015, 2016                                                             |


That information, the ZIP archives names and URLs are scraped from [this page](http://portal.inep.gov.br/web/guest/microdados).
