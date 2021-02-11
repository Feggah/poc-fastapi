# poc-fastapi
PoC using Fast API framework

# How to generate jmeter reports

First, change to the `\bin` directory inside the apache-jmeter folder.

Inside `\bin\examples`, create two folders: **csv** and **html**

Then, run the command below in your terminal:
```
./jmeter -n -t <path-to-jmx-file> -l .\examples\csv\<name-for-the-csv-file>.csv -e -o .\examples\html\<name-for-the-html-folder>

```

To share your html report, copy the `.csv` file generate to the html folder created with the command above, and share the hole html folder.
