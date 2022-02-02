declare
    ConstHireDate     CONSTANT NUMBER := -20001;
    ConstNom          CONSTANT NUMBER := -20002;
    ConstHireDateNull CONSTANT NUMBER := -20007;
    TYPE TypeTableMessErreur
        IS TABLE OF VARCHAR2(200)
        INDEX BY BINARY_INTEGER;
    TableMessErreur            TypeTableMessErreur;

BEGIN
    --initialisation
    TableMessErreur(ConstHireDate) :=
            'Date embauche > date du jour';
    TableMessErreur(ConstNom) := 'Nom employé inconnu';
    TableMessErreur(ConstHireDateNull) :=
            'Date embauche inconnue';
END;