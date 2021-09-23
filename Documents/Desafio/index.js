const nome = prompt("Digite seu nome completo")
const tipoJogo = prompt("Digite o tipo de jogo: \n [IN] - Internacional \n [DO] - Doméstico")
const etapa = prompt("Digite a etapa do jogo: \n [SF] - Semi-final \n [DT] - Decisão Terceiro Lugar \n [FI] - Final")
const categoria = Number(prompt("Digite a categoria"))
const qtd = Number(prompt("Digite a quantidade de ingressos: "))
const dolar = 4.10
let valor
let sf
let dt
let fi
const precoSF = (semi) => {
	const semis = semi;
	return semis
}
const precoDT = (decter) => {
	const dec = decter
	return dec
}
const precoFi = (final) => {
	const fin = final
	return fin
}
const defineEtapa = (etapa) => {
	etapa == 'SF' ? valor = precoSF(sf) : etapa == 'DT' ? valor = precoDT(dt) : etapa == 'FI' ? valor = precoFi(fi) : console.log("Etapa inválida")
	return valor;
}
switch (categoria) {
	case 1:
		sf = 1320
		dt = 660
		fi = 1980
		defineEtapa(etapa)
		break;
	case 2:
		sf = 880
		dt = 440
		fi = 1320
		defineEtapa(etapa)
		break;
	case 3:
		sf = 550
		dt = 330
		fi = 880
		defineEtapa(etapa)
		break;
	case 4:
		sf = 220
		dt = 170
		fi = 330
		defineEtapa(etapa)
		break;
	default:
		console.log("Categoria inválida")
		break;
}
const val = defineEtapa(etapa)
let valorTotal = (qtd) => { return val * qtd }
tipoJogo == 'IN' ? valorTotal * dolar : valorTotal
console.log(`---Dados da compra--- \n Nome do cliente: ${nome} \n Tipo do jogo: ${tipoJogo} \n
Etapa do jogo: ${etapa} \n Categoria: ${categoria} \n Quantidade de Ingressos: ${qtd} \n
---Valores--- \n Valor do ingresso: R$ ${defineEtapa(etapa)} \n Valor total: R$ ${valorTotal(qtd)}`)