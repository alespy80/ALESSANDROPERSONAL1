$f = "landing-servicos/style.css"
$enc = [System.Text.Encoding]::UTF8

$css = @'
*{box-sizing:border-box;margin:0;padding:0;}
body{background:#000;color:#fff;font-family:'Inter',sans-serif;}
a{text-decoration:none;}
.blue{color:#1e90ff;}
.container{max-width:1100px;margin:0 auto;padding:0 1.2rem;}

/* NAV */
.nav{background:#000;border-bottom:1px solid #111;position:sticky;top:0;z-index:100;}
.nav-inner{max-width:1100px;margin:0 auto;padding:.8rem 1.2rem;display:flex;align-items:center;justify-content:space-between;}
.nav-brand{font-family:'Bebas Neue',sans-serif;font-size:1.2rem;letter-spacing:3px;color:#1e90ff;}
.nav-wpp{background:#25d366;color:#fff;font-weight:700;font-size:.82rem;padding:.5rem 1.2rem;border-radius:50px;}
.nav-wpp:hover{filter:brightness(1.1);}

/* HERO */
.hero{background:linear-gradient(180deg,#000 0%,#050d1a 100%);padding:4rem 1.2rem 3rem;text-align:center;border-bottom:1px solid #0a2040;}
.hero-inner{max-width:700px;margin:0 auto;}
.hero-tag{font-size:.72rem;font-weight:700;letter-spacing:3px;color:#1e90ff;margin-bottom:1rem;text-transform:uppercase;}
.hero-h1{font-family:'Bebas Neue',sans-serif;font-size:clamp(3rem,8vw,5.5rem);line-height:1;margin-bottom:1rem;letter-spacing:2px;}
.hero-p{color:rgba(255,255,255,.6);font-size:.95rem;line-height:1.7;margin-bottom:1.5rem;max-width:500px;margin-left:auto;margin-right:auto;}
.hero-pills{display:flex;flex-wrap:wrap;gap:.5rem;justify-content:center;margin-bottom:2rem;}
.hero-pills span{background:rgba(30,144,255,.1);border:1px solid rgba(30,144,255,.3);color:rgba(255,255,255,.7);font-size:.72rem;font-weight:600;padding:.3rem .8rem;border-radius:20px;}
.btn-hero{display:inline-block;background:linear-gradient(135deg,#1e90ff,#0066cc);color:#fff;font-family:'Bebas Neue',sans-serif;font-size:1.2rem;letter-spacing:2px;padding:.9rem 3rem;border-radius:50px;box-shadow:0 4px 24px rgba(30,144,255,.4);}
.btn-hero:hover{filter:brightness(1.1);transform:translateY(-2px);box-shadow:0 8px 36px rgba(30,144,255,.5);}

/* QUEM */
.quem{background:#050d1a;padding:3.5rem 1.2rem;border-bottom:1px solid #0a2040;}
.quem-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(260px,1fr));gap:1rem;margin-bottom:1.5rem;}
.quem-card{background:rgba(30,144,255,.05);border:1px solid rgba(30,144,255,.15);border-radius:12px;padding:1.4rem;text-align:center;}
.qc-icon{font-size:2rem;margin-bottom:.6rem;}
.quem-card h3{font-family:'Bebas Neue',sans-serif;font-size:1.1rem;letter-spacing:2px;color:#1e90ff;margin-bottom:.5rem;}
.quem-card p{font-size:.82rem;color:rgba(255,255,255,.6);line-height:1.6;}
.quem-frase{background:rgba(30,144,255,.08);border:1px solid rgba(30,144,255,.2);border-radius:12px;padding:1.2rem 1.5rem;display:flex;align-items:center;gap:1rem;}
.qf-icon{font-size:2rem;flex-shrink:0;}
.quem-frase strong{font-family:'Bebas Neue',sans-serif;font-size:1.1rem;letter-spacing:1px;}

/* CHECKUP */
.checkup{background:#000;padding:3.5rem 1.2rem;border-top:1px solid #0a2040;border-bottom:1px solid #0a2040;}
.checkup-inner{display:grid;grid-template-columns:1fr 1fr;gap:2rem;align-items:center;}
.ck-badge{font-size:.72rem;font-weight:700;letter-spacing:2px;color:#1e90ff;text-transform:uppercase;margin-bottom:.8rem;}
.checkup-left h2{font-family:'Bebas Neue',sans-serif;font-size:clamp(1.8rem,4vw,2.8rem);line-height:1.1;margin-bottom:1rem;}
.ck-lista{list-style:none;}
.ck-lista li{font-size:.85rem;color:rgba(255,255,255,.7);padding:.25rem 0;}
.checkup-right{display:flex;justify-content:center;}
.ck-preco-box{background:rgba(30,144,255,.08);border:2px solid #1e90ff;border-radius:16px;padding:2rem;text-align:center;min-width:240px;box-shadow:0 0 40px rgba(30,144,255,.15);}
.ck-label{font-size:.7rem;font-weight:700;letter-spacing:2px;color:#1e90ff;text-transform:uppercase;margin-bottom:.5rem;}
.ck-valor{font-family:'Bebas Neue',sans-serif;font-size:3.5rem;color:#fff;line-height:1;}
.ck-valor span{font-size:4rem;}
.ck-valor sup{font-size:1.5rem;vertical-align:super;}
.ck-dur{font-size:.75rem;color:rgba(255,255,255,.4);margin:.5rem 0 1rem;}
.btn-ck{display:block;background:linear-gradient(135deg,#1e90ff,#0066cc);color:#fff;font-weight:800;font-size:.85rem;padding:.75rem 1rem;border-radius:50px;box-shadow:0 4px 16px rgba(30,144,255,.3);}
.btn-ck:hover{filter:brightness(1.1);}

/* PLANOS */
.planos{background:#050d1a;padding:4rem 1.2rem;}
.sec-header{text-align:center;margin-bottom:2.5rem;}
.sec-tag{font-size:.68rem;font-weight:700;letter-spacing:3px;color:#1e90ff;text-transform:uppercase;margin-bottom:.6rem;}
.sec-tag-gold{color:#f0c040;}
.sec-header h2{font-family:'Bebas Neue',sans-serif;font-size:clamp(1.5rem,3.5vw,2.2rem);letter-spacing:1px;line-height:1.2;}
.planos-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(230px,1fr));gap:1rem;}
.plano-card{background:rgba(255,255,255,.03);border:1px solid rgba(255,255,255,.08);border-radius:14px;padding:1.5rem;position:relative;transition:all .2s;}
.plano-card:hover{border-color:rgba(30,144,255,.4);transform:translateY(-3px);}
.plano-popular{border-color:#1e90ff;background:rgba(30,144,255,.06);box-shadow:0 0 30px rgba(30,144,255,.15);}
.plano-popular-badge{background:linear-gradient(135deg,#1e90ff,#0066cc);color:#fff;font-size:.65rem;font-weight:800;letter-spacing:1px;padding:.25rem .7rem;border-radius:20px;display:inline-block;margin-bottom:.5rem;}
.plano-icon{font-size:1.8rem;margin-bottom:.4rem;}
.plano-tipo{font-size:.65rem;font-weight:700;letter-spacing:2px;color:#1e90ff;text-transform:uppercase;}
.plano-nome{font-family:'Bebas Neue',sans-serif;font-size:1.3rem;letter-spacing:1px;margin-bottom:.8rem;}
.plano-lista{list-style:none;margin-bottom:1rem;}
.plano-lista li{font-size:.78rem;color:rgba(255,255,255,.65);padding:.2rem 0;}
.plano-preco{font-family:'Bebas Neue',sans-serif;font-size:1rem;color:rgba(255,255,255,.5);margin-bottom:.8rem;}
.plano-preco span{font-size:2.2rem;color:#fff;}
.plano-preco small{font-size:.8rem;color:rgba(255,255,255,.4);}
.btn-plano{display:block;text-align:center;background:rgba(30,144,255,.15);border:1px solid rgba(30,144,255,.4);color:#1e90ff;font-weight:700;font-size:.78rem;padding:.6rem;border-radius:50px;transition:all .2s;}
.btn-plano:hover{background:rgba(30,144,255,.25);}
.btn-plano-gold{background:linear-gradient(135deg,#1e90ff,#0066cc);border:none;color:#fff;box-shadow:0 4px 16px rgba(30,144,255,.3);}
.btn-plano-gold:hover{filter:brightness(1.1);}

/* COMBOS */
.combos{background:#000;padding:4rem 1.2rem;border-top:1px solid #0a2040;}
.combos-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(200px,1fr));gap:1rem;}
.combo-card{background:rgba(255,255,255,.03);border:1px solid rgba(255,255,255,.08);border-radius:14px;padding:1.3rem;position:relative;transition:all .2s;}
.combo-card:hover{border-color:rgba(240,192,64,.3);transform:translateY(-2px);}
.combo-mais-vendido{border-color:#f0c040;background:rgba(240,192,64,.04);box-shadow:0 0 30px rgba(240,192,64,.1);}
.combo-mv-badge{background:linear-gradient(135deg,#f0c040,#b8860b);color:#000;font-size:.62rem;font-weight:800;letter-spacing:1px;padding:.2rem .6rem;border-radius:20px;display:inline-block;margin-bottom:.4rem;}
.combo-num{font-family:'Bebas Neue',sans-serif;font-size:2rem;color:rgba(255,255,255,.1);line-height:1;}
.combo-nome{font-family:'Bebas Neue',sans-serif;font-size:1rem;letter-spacing:1px;color:#fff;margin-bottom:.2rem;}
.combo-sub{font-size:.65rem;color:#1e90ff;font-weight:700;letter-spacing:1px;text-transform:uppercase;margin-bottom:.7rem;}
.combo-lista{list-style:none;margin-bottom:.8rem;}
.combo-lista li{font-size:.75rem;color:rgba(255,255,255,.6);padding:.18rem 0;}
.combo-preco{font-family:'Bebas Neue',sans-serif;font-size:.9rem;color:rgba(255,255,255,.4);margin-bottom:.7rem;}
.combo-preco span{font-size:1.8rem;color:#f0c040;}
.combo-preco small{font-size:.75rem;color:rgba(255,255,255,.3);}
.btn-combo-land{display:block;text-align:center;background:rgba(240,192,64,.1);border:1px solid rgba(240,192,64,.3);color:#f0c040;font-weight:700;font-size:.72rem;padding:.55rem;border-radius:50px;transition:all .2s;}
.btn-combo-land:hover{background:rgba(240,192,64,.2);}
.btn-combo-gold{background:linear-gradient(135deg,#f0c040,#b8860b);border:none;color:#000;box-shadow:0 4px 16px rgba(240,192,64,.3);}
.btn-combo-gold:hover{filter:brightness(1.1);}

/* FRASE */
.frase{background:#050d1a;padding:3rem 1.2rem;border-top:1px solid #0a2040;}
.frase-box{background:rgba(30,144,255,.06);border-left:3px solid #1e90ff;border-radius:0 12px 12px 0;padding:1.5rem 2rem;margin-bottom:1.5rem;}
.frase-aspas{font-size:3rem;color:rgba(30,144,255,.3);line-height:1;margin-bottom:.5rem;}
.frase-box p{font-family:'Bebas Neue',sans-serif;font-size:clamp(1.2rem,3vw,1.8rem);letter-spacing:1px;line-height:1.3;}
.frase-checks{display:flex;flex-wrap:wrap;gap:1rem;justify-content:center;}
.frase-checks span{font-size:.82rem;color:rgba(255,255,255,.6);font-weight:600;}

/* CTA FINAL */
.cta-final{background:linear-gradient(135deg,#000,#050d1a);padding:4rem 1.2rem;border-top:1px solid #0a2040;}
.cta-inner{display:flex;align-items:center;justify-content:space-between;gap:2rem;flex-wrap:wrap;}
.cta-text h2{font-family:'Bebas Neue',sans-serif;font-size:clamp(2rem,5vw,3rem);letter-spacing:2px;line-height:1.1;}
.cta-text p{color:rgba(255,255,255,.4);font-size:.85rem;margin-top:.4rem;letter-spacing:2px;}
.btn-cta-final{background:#25d366;color:#fff;font-family:'Bebas Neue',sans-serif;font-size:1.3rem;letter-spacing:2px;padding:1rem 2.5rem;border-radius:50px;white-space:nowrap;box-shadow:0 4px 24px rgba(37,211,102,.4);}
.btn-cta-final:hover{filter:brightness(1.1);transform:translateY(-2px);}

/* FOOTER */
.footer{background:#000;border-top:1px solid #0a2040;padding:1.5rem 1.2rem;text-align:center;}
.footer-logo{font-family:'Bebas Neue',sans-serif;font-size:1.1rem;letter-spacing:3px;color:#1e90ff;margin-bottom:.3rem;}
.footer p{font-size:.78rem;color:rgba(255,255,255,.3);}

/* RESPONSIVE */
@media(max-width:768px){
  .checkup-inner{grid-template-columns:1fr;}
  .cta-inner{flex-direction:column;text-align:center;}
  .planos-grid{grid-template-columns:1fr 1fr;}
  .combos-grid{grid-template-columns:1fr 1fr;}
}
@media(max-width:480px){
  .planos-grid{grid-template-columns:1fr;}
  .combos-grid{grid-template-columns:1fr;}
}
'@

[System.IO.File]::WriteAllText($f, $css, $enc)
Write-Output "CSS ok"
