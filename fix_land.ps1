$f = (Resolve-Path "landing-servicos/index.html").Path
$enc = [System.Text.Encoding]::UTF8
$c = [System.IO.File]::ReadAllText($f, $enc)

# Corrigir acentuacao
$fixes = @{
  'Educacao Fisica' = 'Educação Física'
  'Tres Formacoes. Um Proposito.' = 'Três Formações. Um Propósito.'
  'TRES FORMACOES. UM PROPOSITO.' = 'TRÊS FORMAÇÕES. UM PROPÓSITO.'
  'TRANSFORMAR VIDAS.' = 'TRANSFORMAR VIDAS.'
  'Gestao de TI' = 'Gestão de TI'
  'GESTAO DE TI' = 'GESTÃO DE TI'
  'Planejo, organizo e analiso' = 'Planejo, organizo e analiso'
  'Massagista' = 'Massagista'
  'MASSAGISTA' = 'MASSAGISTA'
  'Alivio de dores' = 'Alívio de dores'
  'equilibrio' = 'equilíbrio'
  'Analise Completa' = 'Análise Completa'
  'ANALISE COMPLETA' = 'ANÁLISE COMPLETA'
  'Estrategia Personalizada' = 'Estratégia Personalizada'
  'ESTRATEGIA PERSONALIZADA' = 'ESTRATÉGIA PERSONALIZADA'
  'Execucao com Foco' = 'Execução com Foco'
  'EXECUCAO COM FOCO' = 'EXECUÇÃO COM FOCO'
  'Acompanhamento, ajustes e motivacao' = 'Acompanhamento, ajustes e motivação'
  'Resultados Reais' = 'Resultados Reais'
  'disposicao' = 'disposição'
  'autoestima' = 'autoestima'
  'PERFORMANCE COMECA NA' = 'PERFORMANCE COMEÇA NA'
  'Performance comeca na Estrategia' = 'Performance Começa na Estratégia'
  'entender o seu corpo, corrigir, evoluir e recuperar' = 'entender o seu corpo, corrigir, evoluir e recuperar'
  'Treino inteligente &bull; Recuperacao estrategica' = 'Treino inteligente &bull; Recuperação estratégica'
  'SEU CORPO. SUA MELHOR VERSAO.' = 'SEU CORPO. SUA MELHOR VERSÃO.'
  'TRES FORMACOES, UM PROPOSITO: FAZER VOCE ALCANCAR SUA MELHOR VERSAO.' = 'TRÊS FORMAÇÕES, UM PROPÓSITO: FAZER VOCÊ ALCANÇAR SUA MELHOR VERSÃO.'
  'CUIDAR DO CORPO VAI ALEM DA ESTETICA.' = 'CUIDAR DO CORPO VAI ALÉM DA ESTÉTICA.'
  'E INVESTIMENTO. E PERFORMANCE. E LIBERDADE.' = 'É INVESTIMENTO. É PERFORMANCE. É LIBERDADE.'
  'Atendimento Presencial e Online' = 'Atendimento Presencial e Online'
  'Planos Personalizados' = 'Planos Personalizados'
  'Acompanhamento de Verdade' = 'Acompanhamento de Verdade'
  'ESCOLHA O FORMATO QUE SE ENCAIXA NA SUA ROTINA.' = 'ESCOLHA O FORMATO QUE SE ENCAIXA NA SUA ROTINA.'
  'O METODO E O MESMO.' = 'O MÉTODO É O MESMO.'
  'ESCOLHA. RECUPERACAO. PERFORMANCE. RESULTADOS.' = 'ESCOLHA. RECUPERAÇÃO. PERFORMANCE. RESULTADOS.'
  'Avaliacao inicial completa' = 'Avaliação inicial completa'
  'Orientacao alimentar' = 'Orientação alimentar'
  'Correcao de execucao' = 'Correção de execução'
  'Progressao de carga estrategica' = 'Progressão de carga estratégica'
  'Evolucao tecnica constante' = 'Evolução técnica constante'
  'Acompanhamento mais proximo' = 'Acompanhamento mais próximo'
  'Estrategia completa semanal' = 'Estratégia completa semanal'
  'Resultados acelerados' = 'Resultados acelerados'
  'Consultoria online personalizada' = 'Consultoria online personalizada'
  'Suporte via WhatsApp' = 'Suporte via WhatsApp'
  'Ajustes estrategicos' = 'Ajustes estratégicos'
  'Recuperacao muscular estrategica' = 'Recuperação muscular estratégica'
  'Planejamento individualizado' = 'Planejamento individualizado'
  'Evolucao tecnica avancada' = 'Evolução técnica avançada'
  'Estrategia corporal completa' = 'Estratégia corporal completa'
  'Atendimento prioritario' = 'Atendimento prioritário'
  'Massagens premium mensais' = 'Massagens premium mensais'
  'Performance maxima' = 'Performance máxima'
  'liberacoes miofasciais' = 'liberações miofasciais'
  'Avaliacao postural' = 'Avaliação postural'
  'Plano corretivo basico' = 'Plano corretivo básico'
  'DESCUBRA O QUE' = 'DESCUBRA O QUE'
  'SEU CORPO ESTA' = 'SEU CORPO ESTÁ'
  'TENTANDO DIZER' = 'TENTANDO DIZER'
  'Postura e mobilidade' = 'Postura e mobilidade'
  'Forca e estabilidade' = 'Força e estabilidade'
  'Dores e limitacoes' = 'Dores e limitações'
  'Execucao de movimentos' = 'Execução de movimentos'
  'Assimetrias e desequilibrios' = 'Assimetrias e desequilíbrios'
  'Plano estrategico inicial' = 'Plano estratégico inicial'
  'FALE COMIGO AGORA' = 'FALE COMIGO AGORA'
  'COMECAR AGORA' = 'COMEÇAR AGORA'
  'COMECAR ONLINE' = 'COMEÇAR ONLINE'
  'QUERO TRANSFORMAR' = 'QUERO TRANSFORMAR'
  'Dois treinos presenciais' = 'Dois treinos presenciais'
  'Melhor divisao muscular' = 'Melhor divisão muscular'
  'Foco total em desempenho' = 'Foco total em desempenho'
  'Entendo o corpo em movimento. Prescrevo treinos com seguranca' = 'Entendo o corpo em movimento. Prescrevo treinos com segurança'
  'individualidade para cada objetivo' = 'individualidade para cada objetivo'
  'Cuido, recupero e promovo bem-estar. Alivio de dores, tensao muscular' = 'Cuido, recupero e promovo bem-estar. Alívio de dores, tensão muscular'
  'para o corpo render mais.' = 'para o corpo render mais.'
  'Organizo, analiso e transformo dados em caminhos inteligentes para acompanhar sua evolucao com precisao.' = 'Organizo, analiso e transformo dados em caminhos inteligentes para acompanhar sua evolução com precisão.'
  'TREINO &bull; RECUPERACAO &bull; RESULTADOS' = 'TREINO &bull; RECUPERAÇÃO &bull; RESULTADOS'
  'Mais que treinar, e entender' = 'Mais que treinar, é entender'
  'resultados reais e duradouros.' = 'resultados reais e duradouros.'
}

foreach ($key in $fixes.Keys) {
  $c = $c.Replace($key, $fixes[$key])
}

# Inserir logo no nav
$c = $c.Replace(
  '<div class="nav-brand">&#9670; ALESSANDRO FERREIRA</div>',
  '<div class="nav-brand"><img src="logo.jpg" alt="Alessandro Ferreira" class="nav-logo-img" onerror="this.style.display=''none''"/> ALESSANDRO FERREIRA</div>'
)

# Inserir logo no hero
$c = $c.Replace(
  '<div class="hero-tag">TREINO &bull; RECUPERAÇÃO &bull; RESULTADOS</div>',
  '<div class="hero-logo-wrap"><img src="logo.jpg" alt="Logo" class="hero-logo-img" onerror="this.style.display=''none''"/></div><div class="hero-tag">TREINO &bull; RECUPERAÇÃO &bull; RESULTADOS</div>'
)

[System.IO.File]::WriteAllText($f, $c, $enc)
Write-Output "Corrigido!"
