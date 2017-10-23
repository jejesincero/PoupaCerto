
#inicialização de algumas variaveis

comp=[]
dist=[]
dados=[]

#entrada de dados e configuração da matriz

puts "Digite o primeiro dado de entrada."
i=0
dados[i]=gets

while dados[i] != "S\n"
	t=dados[i]
	t=t.upcase
	comp[i]=t[0,2].to_s #lugar aonde e separada string de inteiro montando duas matriz
	dist[i]=t[2,3].to_i
	i=i+1
	t=nil
	puts "Digite outro dado ou precione S para seguir."
	dados[i]=gets.upcase!	#recebe os dados do usuario e ja coloca em caixa alta.
end
rep=[]
while rep[0] != "P\n" #estrutura de repetição para analizar as diferentes rotas dos dados introduzido
	rota=0
	temp=0
	num=0
	puts("Digite a rota.")
	rota = gets
	rota=rota.chomp
	rota.upcase!
	num=rota.length
	puts "\n"
#parte que analiza os dados e informa quantas paradas e se a rota e possível ou não.

	i=0
		if i<num
			while comp.index(rota[i,2])!=nil
				puts ("rota #{rota[i,2]}")
				temp=dist[comp.index(rota[i,2])]+temp
			i=1+i
			end
		end

		if num == i+1
			puts ("\n rota possivel e com distancia de: #{temp}km e #{i} paradas.\n")
		
		else
			puts "\n NO SUCH ROUTE \n"
		end

#parte final que reinicializa ou para o analize das rotas.

	puts "\n Se deseja continuar precione qualquer tecla ou P para parar."
	rep[0]=gets.upcase!
end
gets
	