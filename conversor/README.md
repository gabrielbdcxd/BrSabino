#brAthena Conversor

Conversor de arquivos .TXT e .CONF para o formato do banco de dados SQL.

Converte a maioria dos arquivos da pasta db (com exce��o dos que ainda n�o s�o utilizados via SQL).


**Modo de usar:**

1. Compile o conversor *(do mesmo modo que � compilado o login,char e map-server)*
2. Coloque o arquivo a ser convertido dentro da pasta db `(ex: brAthena/db/item_db.conf)`
3. Execute o conversor na pasta ra�z do emulador
4. Se executado corretamente, voc� encontrar� seu novo arquivo .sql na pasta `conversor/sql/`
5. Importe o arquivo convertido em seu banco de dados.


**Obs:**

O Conversor traduz automaticamente algumas tabelas, a sua tradu��o se encontra dentro de `conversor/data/`

Tradu��es suportadas atualmente:
- Nomes de itens
- Nomes de monstros
- Nomes de habilidades
- Nomes de castelos
- Chat de monstros  



**Criador:** Shiraz