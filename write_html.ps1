$f = (Resolve-Path "landing-servicos/index.html").Path
$enc = [System.Text.Encoding]::UTF8

$html = @'
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Alessandro Ferreira — Performance Comeca na Estrategia</title>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@400;600;700;800;900&display=swap" rel="stylesheet"/>
<link rel="stylesheet" href="style.css"/>
</head>
<body>

<!-- NAV -->
<nav class="nav">
  <div class="nav-inner">
    <div class="nav-brand">&#9670; ALESSANDRO FERREIRA</div>
    <a href="https://wa.me/5521979259432?text=Ola%20Alessandro!%20Quero%20saber%20mais%20sobre%20os%20planos" class="nav-wpp" target="_blank">&#128172; Falar Agora</a>
  </div>
</nav>

<!-- HERO -->
<section class="hero">
  <div class="hero-inner">
    <div class="hero-tag">TREINO &bull; RECUPERACAO &bull; RESULTADOS</div>
    <h1 class="hero-h1">PERFORMANCE<br/><span class="blue">COMECA NA</span><br/>ESTRATEGIA</h1>
    <p class="hero-p">Mais que treinar, e entender o seu corpo, corrigir, evoluir e recuperar para alcancar resultados reais e duradouros.</p>
    <div class="hero-pills">
      <span>&#127919; Atendimento Personalizado</span>
      <span>&#127968; Atendimento a Domicilio</span>
      <span>&#127942; Profissional Qualificado</span>
      <span>&#128200; Metodo Comprovado</span>
    </div>
    <a href="https://wa.me/5521979259432?text=Ola%20Alessandro!%20Quero%20comecar" class="btn-hero" target="_blank">COMECAR AGORA &#8594;</a>
  </div>
</section>

<!-- QUEM SOU -->
<section class="quem">
  <div class="container">
    <div class="quem-grid">
      <div class="quem-card">
        <div class="qc-icon">&#128170;</div>
        <h3>EDUCACAO FISICA</h3>
        <p>Entendo o corpo em movimento. Prescrevo treinos com seguranca, eficiencia e individualidade para cada objetivo.</p>
      </div>
      <div class="quem-card">
        <div class="qc-icon">&#128134;</div>
        <h3>MASSAGISTA</h3>
        <p>Cuido, recupero e promovo bem-estar. Alivio de dores, tensao muscular e equilibrio para o corpo render mais.</p>
      </div>
      <div class="quem-card">
        <div class="qc-icon">&#128187;</div>
        <h3>GESTAO DE TI</h3>
        <p>Organizo, analiso e transformo dados em caminhos inteligentes para acompanhar sua evolucao com precisao.</p>
      </div>
    </div>
    <div class="quem-frase">
      <span class="qf-icon">&#127919;</span>
      <div>
        <strong>TRES FORMACOES. UM PROPOSITO.</strong><br/>
        <span class="blue">TRANSFORMAR VIDAS.</span>
      </div>
    </div>
  </div>
</section>

<!-- CHECKUP -->
<section class="checkup">
  <div class="container checkup-inner">
    <div class="checkup-left">
      <div class="ck-badge">CHECK-UP CORPORAL 360°</div>
      <h2>DESCUBRA O QUE<br/>SEU CORPO ESTA<br/>TENTANDO DIZER</h2>
      <ul class="ck-lista">
        <li>&#10003; Postura e mobilidade</li>
        <li>&#10003; Forca e estabilidade</li>
        <li>&#10003; Dores e limitacoes</li>
        <li>&#10003; Execucao de movimentos</li>
        <li>&#10003; Assimetrias e desequilibrios</li>
        <li>&#10003; Plano estrategico inicial</li>
      </ul>
    </div>
    <div class="checkup-right">
      <div class="ck-preco-box">
        <div class="ck-label">INVESTIMENTO</div>
        <div class="ck-valor">R$<span>49</span><sup>,90</sup></div>
        <div class="ck-dur">Duracao: 30 a 40 min</div>
        <a href="https://wa.me/5521979259432?text=Ola%20Alessandro!%20Quero%20agendar%20o%20Check-up%20360%20por%20R%2449%2C90" class="btn-ck" target="_blank">AGENDAR MEU CHECK-UP &#8594;</a>
      </div>
    </div>
  </div>
</section>

<!-- PLANOS PERSONAL -->
<section class="planos">
  <div class="container">
    <div class="sec-header">
      <div class="sec-tag">PLANOS PERSONALIZADOS</div>
      <h2>ESCOLHA O FORMATO QUE SE ENCAIXA NA SUA ROTINA.<br/><span class="blue">O METODO E O MESMO.</span></h2>
    </div>
    <div class="planos-grid">

      <div class="plano-card">
        <div class="plano-icon">&#128187;</div>
        <div class="plano-tipo">ONLINE</div>
        <div class="plano-nome">CONSULTORIA</div>
        <ul class="plano-lista">
          <li>&#10003; Avaliacao inicial completa</li>
          <li>&#10003; Treino personalizado</li>
          <li>&#10003; Orientacao alimentar</li>
          <li>&#10003; Suporte direto</li>
        </ul>
        <div class="plano-preco">R$<span>197</span><small>/mes</small></div>
        <a href="https://wa.me/5521979259432?text=Ola%20Alessandro!%20Quero%20o%20plano%20Online%20R%24197" class="btn-plano" target="_blank">COMECAR ONLINE &#8594;</a>
      </div>

      <div class="plano-card">
        <div class="plano-icon">&#128100;</div>
        <div class="plano-tipo">PRESENCIAL</div>
        <div class="plano-nome">2x POR SEMANA</div>
        <ul class="plano-lista">
          <li>&#10003; Dois treinos presenciais</li>
          <li>&#10003; Planejamento individualizado</li>
          <li>&#10003; Correcao de execucao</li>
          <li>&#10003; Ajustes estrategicos</li>
        </ul>
        <div class="plano-preco">R$<span>350</span><small>/mes</small></div>
        <a href="https://wa.me/5521979259432?text=Ola%20Alessandro!%20Quero%20o%20plano%20Presencial%202x%20R%24350" class="btn-plano" target="_blank">QUERO ESSE PLANO &#8594;</a>
      </div>

      <div class="plano-card plano-popular">
        <div class="plano-popular-badge">&#128293; MAIS POPULAR</div>
        <div class="plano-icon">&#127942;</div>
        <div class="plano-tipo">PRESENCIAL</div>
        <div class="plano-nome">3x POR SEMANA</div>
        <ul class="plano-lista">
          <li>&#10003; Melhor divisao muscular</li>
          <li>&#10003; Progressao de carga estrategica</li>
          <li>&#10003; Evolucao tecnica constante</li>
          <li>&#10003; Acompanhamento mais proximo</li>
        </ul>
        <div class="plano-preco">R$<span>520</span><small>/mes</small></div>
        <a href="https://wa.me/5521979259432?text=Ola%20Alessandro!%20Quero%20o%20plano%20Presencial%203x%20R%24520" class="btn-plano btn-plano-gold" target="_blank">QUERO ESSE PLANO &#8594;</a>
      </div>

      <div class="plano-card">
        <div class="plano-icon">&#128640;</div>
        <div class="plano-tipo">PRESENCIAL</div>
        <div class="plano-nome">5x POR SEMANA</div>
        <ul class="plano-lista">
          <li>&#10003; Estrategia completa semanal</li>
          <li>&#10003; Acompanhamento constante</li>
          <li>&#10003; Foco total em desempenho</li>
          <li>&#10003; Resultados acelerados</li>
        </ul>
        <div class="plano-preco">R$<span>850</span><small>/mes</small></div>
        <a href="https://wa.me/5521979259432?text=Ola%20Alessandro!%20Quero%20o%20plano%20Presencial%205x%20R%24850" class="btn-plano" target="_blank">QUERO TRANSFORMAR &#8594;</a>
      </div>

    </div>
  </div>
</section>

<!-- COMBOS -->
<section class="combos">
  <div class="container">
    <div class="sec-header">
      <div class="sec-tag sec-tag-gold">COMBOS PERSONAL + MASSAGEM</div>
      <h2>ESCOLHA. RECUPERACAO. PERFORMANCE. RESULTADOS.</h2>
    </div>
    <div class="combos-grid">

      <div class="combo-card">
        <div class="combo-num">01</div>
        <div class="combo-nome">SHAPE RECOVERY</div>
        <div class="combo-sub">Combo de Entrada</div>
        <ul class="combo-lista">
          <li>&#10003; Consultoria online personalizada</li>
          <li>&#10003; 2 massagens mensais</li>
          <li>&#10003; Suporte via WhatsApp</li>
          <li>&#10003; Ajustes estrategicos</li>
        </ul>
        <div class="combo-preco">R$<span>249</span><small>/mes</small></div>
        <a href="https://wa.me/5521979259432?text=Quero%20o%20Combo%20Shape%20Recovery%20R%24249" class="btn-combo-land" target="_blank">QUERO ESSE COMBO</a>
      </div>

      <div class="combo-card">
        <div class="combo-num">02</div>
        <div class="combo-nome">PERFORMANCE PRESENCIAL</div>
        <div class="combo-sub">Combo Intermediario</div>
        <ul class="combo-lista">
          <li>&#10003; Personal 2x por semana</li>
          <li>&#10003; 2 massagens mensais</li>
          <li>&#10003; Correcao de execucao</li>
          <li>&#10003; Recuperacao muscular estrategica</li>
        </ul>
        <div class="combo-preco">R$<span>399</span><small>/mes</small></div>
        <a href="https://wa.me/5521979259432?text=Quero%20o%20Combo%20Performance%20Presencial%20R%24399" class="btn-combo-land" target="_blank">QUERO ESSE COMBO</a>
      </div>

      <div class="combo-card combo-mais-vendido">
        <div class="combo-mv-badge">&#128293; MAIS VENDIDO</div>
        <div class="combo-num">03</div>
        <div class="combo-nome">EVOLUCAO COMPLETA</div>
        <div class="combo-sub">Combo Mais Completo</div>
        <ul class="combo-lista">
          <li>&#10003; Personal 3x por semana</li>
          <li>&#10003; 4 massagens mensais</li>
          <li>&#10003; Evolucao tecnica avancada</li>
          <li>&#10003; Acompanhamento mais proximo</li>
          <li>&#10003; Estrategia corporal completa</li>
        </ul>
        <div class="combo-preco">R$<span>799</span><small>/mes</small></div>
        <a href="https://wa.me/5521979259432?text=Quero%20o%20Combo%20Evolucao%20Completa%20R%24799" class="btn-combo-land btn-combo-gold" target="_blank">QUERO ESSE COMBO</a>
      </div>

      <div class="combo-card">
        <div class="combo-num">04</div>
        <div class="combo-nome">ELITE PERFORMANCE</div>
        <div class="combo-sub">Combo Premium</div>
        <ul class="combo-lista">
          <li>&#10003; Personal 5x por semana</li>
          <li>&#10003; Massagens premium mensais</li>
          <li>&#10003; Atendimento prioritario</li>
          <li>&#10003; Estrategia completa</li>
          <li>&#10003; Performance maxima</li>
        </ul>
        <div class="combo-preco">R$<span>1.200</span><small>/mes</small></div>
        <a href="https://wa.me/5521979259432?text=Quero%20o%20Combo%20Elite%20Performance%20R%241200" class="btn-combo-land" target="_blank">QUERO ESSE COMBO</a>
      </div>

      <div class="combo-card">
        <div class="combo-num">05</div>
        <div class="combo-nome">RECUPERACAO CORPORAL</div>
        <div class="combo-sub">Combo Dor & Postura</div>
        <ul class="combo-lista">
          <li>&#10003; 4 liberacoes miofasciais</li>
          <li>&#10003; 2 massagens terapeuticas</li>
          <li>&#10003; Avaliacao postural</li>
          <li>&#10003; Plano corretivo basico</li>
        </ul>
        <div class="combo-preco">R$<span>499</span><small>/mes</small></div>
        <a href="https://wa.me/5521979259432?text=Quero%20o%20Combo%20Recuperacao%20Corporal%20R%24499" class="btn-combo-land" target="_blank">QUERO ESSE COMBO</a>
      </div>

    </div>
  </div>
</section>

<!-- FRASE -->
<section class="frase">
  <div class="container">
    <div class="frase-box">
      <div class="frase-aspas">&#10077;</div>
      <p>CUIDAR DO CORPO VAI ALEM DA ESTETICA.<br/><span class="blue">E INVESTIMENTO. E PERFORMANCE. E LIBERDADE.</span></p>
    </div>
    <div class="frase-checks">
      <span>&#10003; Atendimento Presencial e Online</span>
      <span>&#10003; Planos Personalizados</span>
      <span>&#10003; Acompanhamento de Verdade</span>
    </div>
  </div>
</section>

<!-- CTA FINAL -->
<section class="cta-final">
  <div class="container cta-inner">
    <div class="cta-text">
      <h2>SEU CORPO.<br/><span class="blue">SUA MELHOR VERSAO.</span></h2>
      <p>Treino inteligente &bull; Recuperacao estrategica</p>
    </div>
    <a href="https://wa.me/5521979259432?text=Ola%20Alessandro!%20Quero%20comecar%20minha%20transformacao" class="btn-cta-final" target="_blank">
      &#128172; FALE COMIGO AGORA
    </a>
  </div>
</section>

<!-- FOOTER -->
<footer class="footer">
  <div class="footer-logo">&#9670; ALESSANDRO FERREIRA</div>
  <p>Personal Trainer &bull; Massoterapeuta &bull; Rio de Janeiro</p>
  <p style="margin-top:.3rem;opacity:.4;font-size:.72rem">TRES FORMACOES, UM PROPOSITO: FAZER VOCE ALCANCAR SUA MELHOR VERSAO.</p>
</footer>

</body>
</html>
'@

[System.IO.File]::WriteAllText($f, $html, $enc)
Write-Output "HTML ok - $((Get-Content $f).Count) linhas"
