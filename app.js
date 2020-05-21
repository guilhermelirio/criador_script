// include node fs module
const { info, warn, log, error, indent } = require('pretty-console-logs');


var fs = require('fs-extra');
const fs2 = require('fs');

const readline = require("readline");

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

var pasta;

async function main() {
    console.log('\n')
    console.log('\x1b[33m%s\x1b[0m', 'ARAMUNI SCRIPT CREATOR TEMPLATE\n'); //yellow



    rl.question("Qual nome do seu Script ? ", async function(nome) {
        pasta = nome;

        var dir = `./${nome}`;

        if (!fs.existsSync(dir)) {
            fs.mkdirSync(dir);
        }
        rl.close();
    });

    rl.on("close", async function() {

        await criarClient(pasta);
        await criaServer(pasta);
        await criaResource(pasta);
        await criaFuncoes(pasta);
        console.log('\x1b[32m%s\x1b[0m', `\nScript ${pasta} Criado com sucesso!`); //yellow

        console.log();
    });

}

async function criarClient(pasta) {

    await fs.readFile(`./src/client.lua`, 'utf8', function(err, data) {
        if (err) {
            return console.log(err);
        }
        var result = data.replace(/nome/g, `${pasta}`);

        fs.writeFile(`./${pasta}/client.lua`, result, 'utf8', function(err) {
            if (err) return console.log(err);
        });
    });

}

async function criaServer(pasta) {
    await fs.readFile(`./src/server.lua`, 'utf8', function(err, data) {
        if (err) {
            return console.log(err);
        }
        var result = data.replace(/nome/g, `${pasta}`);

        fs.writeFile(`./${pasta}/server.lua`, result, 'utf8', function(err) {
            if (err) return console.log(err);
        });
    });
}

async function criaResource(pasta) {
    await fs.readFile(`./src/__resource.lua`, 'utf8', function(err, data) {
        if (err) {
            return console.log(err);
        }

        fs.writeFile(`./${pasta}/__resource.lua`, data, 'utf8', function(err) {
            if (err) return console.log(err);
        });
    });
}

async function criaFuncoes(pasta) {
    await fs.readFile(`./src/funcoes.lua`, 'utf8', function(err, data) {
        if (err) {
            return console.log(err);
        }

        fs.writeFile(`./${pasta}/funcoes.lua`, data, 'utf8', function(err) {
            if (err) return console.log(err);
        });
    });
}

main()