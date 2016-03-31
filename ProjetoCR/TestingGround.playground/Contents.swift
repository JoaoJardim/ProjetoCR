/* NOTES:
	1. Como usar periodo? melhor seria calcular periodos dinamicamente usando timestamps como referencia. Ou seja, saber qdo o cara comecou a facul, pela matricula ate, e marcar as cursar por isso.
	Decision: Semestre de entrada do aluno eh calculado diretamente da matricula e possui formato xx1 ou xx2 sendo xx os dois ultimos digitos do ano. A mesma estrategia sera usada para os semestres das disc cursadas
	2. Devemos ter todas as disc e criterios ja carregadas em memoria? Isso faz com que o uso do banco se limite ao login/registro e salvamento/alteramento de historico...
	3. Caso do CR Global hard coded (nao ter todo o registro antigo. Pode se usar uma materia magica de creditos e grau equivalente ao cr antigo...
	4. Memory managment? Deleting structures
*/



var bancoDeDisciplinas: [Disciplina] =
	[Disciplina(nome: "mecsol",				qtdCreditos: 2, codigo: "eng1234", criterio: 1),
	 Disciplina(nome: "calculo1",			qtdCreditos: 6, codigo: "mat4321", criterio: 2),
	 Disciplina(nome: "fisica newtoniana",	qtdCreditos: 4, codigo: "fis0000", criterio: 3)]

	// ETAPA1: Cara fez login. Info vem do banco! Recebemos: as info pessoais dele; as materias do periodo dele; As materias do passado dele;

var usuario:						 Aluno
var disciplinasCursadasPeloAluno:	[Cursar]

// Instanciando o aluno com info do banco
usuario = Aluno(faculdade: "puc", matricula: "1214567", senha: "password", nome: "Ze", crGlobal: 8)

// Instanciando as disc cursadas pelo aluno que vieram do banco
disciplinasCursadasPeloAluno =
	[Cursar(aluno: usuario, disciplina: bancoDeDisciplinas[0], semestre: 121),
	 Cursar(aluno: usuario, disciplina: bancoDeDisciplinas[1], semestre: 122)]
// associando os graus puxados pelo banco
disciplinasCursadasPeloAluno[0].setGrau(8)
disciplinasCursadasPeloAluno[0].setGrau(9)
disciplinasCursadasPeloAluno[1].setGrau(7)
disciplinasCursadasPeloAluno[1].setGrau(7)

// associando as disciplinas cursadas pelo aluno ao aluno
for	i in 0...disciplinasCursadasPeloAluno.count-1{
	usuario.addDisciplina(disciplinasCursadasPeloAluno[i])
}

	// ETAPA2: Estamos na home. Queremos saber quanto que o cidadao tem de CRs

var crGlobal:			Double
var crPeriodo:			Double
var crGlobalSimulado:	Double

crGlobal			= usuario.getCrGlobal()
crPeriodo			= usuario.calculateCRofSemestre(122)
crGlobalSimulado	= usuario.simulateNextCRGlobal(122)

	// ETAPA3: Vendo o periodo atual. Precisamos saber as disc do dado periodo, com suas info e possibilitar add/delete? de materias.

var disciplinasCursadasAtualmente: [Cursar]

// Pegando as disc do aluno de um dado semestre
disciplinasCursadasAtualmente = usuario.getDisciplinasSemestre(122)

//adicionando uma nova
var novaDisc: Cursar = Cursar(aluno: usuario, disciplina: bancoDeDisciplinas[2], semestre: 122)
usuario.addDisciplina(novaDisc)

//removendo uma disc
usuario.removeDisciplina(novaDisc)

