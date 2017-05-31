DeklarationL
Dem Compiler sagen, dass es etwas gibt. zB ist.
Du sagst damit dem Compiler, dass es eine Funktion foo gibt, die void returned und keine Parameter nimmt.
Ein Programmausdruck der einen Namen in einen Scope ein- bzw. wiedereinführt.
void foo();	    // Funktion
class Test;	    // Klasse



Definition:
Dem Compiler sagen, dass er dieses etwas anlegen soll.
Du sagst damit dem Compiler, dass die (bereits bekannte Funktion foo - denn jede Definition impliziert eine Deklaration) exakt so aussieht.
Eine Deklaration die die Details einer Entität bekannt macht oder, im Fall von Variablen, die dazu führt, dass Speicher für die Entität reserviert wird.
Eine Deklaration einer Klasse (struct, class, enum, union) Funktion oder Methode wird zu einer Definition, wenn auf die Deklaration ein in geschweiften Klammern eingeschlossener Block folgt.
Variablendeklarationen sind immer auch Definitionen es sei denn, der Deklaration ist ein extern vorangestellt.
void foo() { }      // Funktion
class Test {};	    // Klasse



Initialisierung:
Dem Compiler sagen, dass er dieses etwas mit einem bestimmten Wert anlegen soll.
 Du sagst damit dem Compiler, dass die (bereits bekannte Variable i - denn jede Initialisierung impliziert eine Definition, welche ja eine Deklaration impliziert) mit dem Wert 5 vorbegelegt werden soll.
Eine Definition mit expliziter Anfangswertzuweisung.
int i=5;



Um Variablen zu deklarieren braucht man das Schlüsselwort 'extern':
extern int i;

Aber Achtung:
extern int i=5;	

ist eine Initialisierung. Das extern wird (wenn man so will) ignoriert.

Eine Variable die als 'extern' deklariert ist, muss natürlich auch irgendwo definiert werden. Dies geschieht meistens in einer anderen Übersetzungseinheit. Es ist das selbe Prinzip wie bei Funktionen.

