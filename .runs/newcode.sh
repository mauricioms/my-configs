#!/bin/bash
 
newcode () {

    echo "Programming Language: "
    read language

    echo "Name File Code: "
    read namecode
    
    CODE_OUT="$PWD/$namecode"

    if [[ "$language" == "rs" ]] then
        
        CODE_OUT="$CODE_OUT.rs"

        if [[ ! -f "$CODE_OUT" ]] then
            echo "use std::io;" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "fn main() {" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "}" >> $CODE_OUT
            echo "" >> $CODE_OUT
        else
            echo "Already existing code."
        fi
    fi

    if [[ "$language" == "cpp" ]] then
        
        CODE_OUT="$CODE_OUT.cpp"

        if [[ ! -f "$CODE_OUT" ]] then
            echo "#include <bits/stdc++.h>" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "using namespace std;" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#define pend printf(\"\\\n\")" >> $CODE_OUT
            echo "#define space printf(\" \")" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#define sci1(a) scanf(\"%d\\\n\", &a)" >> $CODE_OUT
            echo "#define sci2(a, b) scanf(\"%d %d\\\n\", &a, &b)" >> $CODE_OUT
            echo "#define sci3(a, b, c) scanf(\"%d %d %d\\\n\", &a, &b, &c)" >> $CODE_OUT
            echo "#define scc2i1(a, b, c) scanf(\"%c %c %d\\\n\", &a, &b, &c)" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#define scf1(a) scanf(\"%f\\\n\", &a)" >> $CODE_OUT
            echo "#define scf2(a, b) scanf(\"%f %f\\\n\", &a, &b)" >> $CODE_OUT
            echo "#define scf3(a, b, c) scanf(\"%f %f %f\\\n\", &a, &b, &c)" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#define scc(c) scanf(\"%c\", &c)" >> $CODE_OUT
            echo "#define scs(s) scanf(\"%s\", &s)" >> $CODE_OUT
            echo "#define scln(s) scanf(\"%[^\\\n]s\", &s)" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#define add push_back" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#define pfi(a)  printf(\"%d\", a)" >> $CODE_OUT
            echo "#define pfs(s)  printf(\"%s\", s)" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "typedef long int li;" >> $CODE_OUT
            echo "typedef long long int lli;" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "typedef pair<int, int> ii;" >> $CODE_OUT
            echo "typedef vector<int> vi;" >> $CODE_OUT
            echo "typedef vector<bool> vb;" >> $CODE_OUT
            echo "typedef vector<vi> vvi;" >> $CODE_OUT
            echo "typedef vector<ii> vii;" >> $CODE_OUT
            echo "typedef vector<vi> graph;" >> $CODE_OUT
            echo "typedef vector<vii> wgraph;" >> $CODE_OUT
            echo "typedef struct _edge { int u = 0; int v = 0; int w = 0; _edge(int _u, int _v, int _w = 1) : u(_u), v(_v), w(_w) {} } edge; typedef list<edge> edges;" >> $CODE_OUT
            echo "typedef priority_queue<ii, vii, greater<ii>> min_heap;" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "const int _INFINITY = INT_MAX;" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "int main() {" >> $CODE_OUT
            echo "  {" >> $CODE_OUT
            echo "    ios_base::sync_with_stdio(0);" >> $CODE_OUT
            echo "    cin.tie(0);" >> $CODE_OUT
            echo "  }" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "  return 0;" >> $CODE_OUT
            echo "}" >> $CODE_OUT
            echo "" >> $CODE_OUT
        else
            echo "Already existing code."
        fi
    fi

    if [[ "$language" == "c" ]] then
        
        CODE_OUT="$CODE_OUT.c"

        if [[ ! -f "$CODE_OUT" ]] then
            echo "#include \"stdio.h\"" >> $CODE_OUT
            echo "#include \"stdlib.h\"" >> $CODE_OUT
            echo "#include \"stdbool.h\"" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#include \"math.h\"" >> $CODE_OUT
            echo "#include \"string.h\"" >> $CODE_OUT
            echo "#include \"ctype.h\"" >> $CODE_OUT
            echo "#include \"assert.h\"" >> $CODE_OUT
            echo "#include \"limits.h\"" >> $CODE_OUT
            echo "#include \"time.h\"" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#include \"errno.h\"" >> $CODE_OUT
            echo "#include \"float.h\"" >> $CODE_OUT
            echo "#include \"iso646.h\"" >> $CODE_OUT
            echo "#include \"locale.h\"" >> $CODE_OUT
            echo "#include \"setjmp.h\"" >> $CODE_OUT
            echo "#include \"signal.h\"" >> $CODE_OUT
            echo "#include \"stdarg.h\"" >> $CODE_OUT
            echo "#include \"stddef.h\"" >> $CODE_OUT
            echo "#include \"stdint.h\"" >> $CODE_OUT
            echo "#include \"uchar.h\"" >> $CODE_OUT
            echo "#include \"wchar.h\"" >> $CODE_OUT
            echo "#include \"wctype.h\"" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#define endl '\\\n'" >> $CODE_OUT
            echo "#define pend printf(\"\\\n\")" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#define sc1(a) scanf(\"%d\\\n\", &a)" >> $CODE_OUT
            echo "#define sc2(a, b) scanf(\"%d %d\\\n\", &a, &b)" >> $CODE_OUT
            echo "#define sc3(a, b, c) scanf(\"%d %d %d\\\n\", &a, &b, &c)" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "#define pf(a) printf(\"%d\", a)" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "typedef long long ll;" >> $CODE_OUT
            echo "typedef long long int lli;" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "int main () {" >> $CODE_OUT
            echo "" >> $CODE_OUT
            echo "    return 0;" >> $CODE_OUT
            echo "}" >> $CODE_OUT
        else
            echo "Already existing code."
        fi
    fi

    if [[ "$language" == "py" ]] then
        
        CODE_OUT="$CODE_OUT.py"

        if [[ ! -f "$CODE_OUT" ]] then
            echo "" >> $CODE_OUT
        fi
    fi

    if [[ "$language" == "ts" ]] then
        
        CODE_OUT="$CODE_OUT.ts"

        if [[ ! -f "$CODE_OUT" ]] then
            echo "" >> $CODE_OUT
        fi
    fi
}
