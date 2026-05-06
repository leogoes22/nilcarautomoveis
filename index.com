<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Nilcar Automóveis — Seminovos em São João de Meriti</title>
<meta name="description" content="Seminovos revisados com garantia. Financiamento em até 60x. São João de Meriti - RJ. Fale agora pelo WhatsApp.">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<style>
:root{
  --navy:#0B1F4A;--navy2:#142240;--navy3:#1a2d5a;
  --blue:#2563EB;--blue2:#1D4ED8;--blue3:#3B82F6;--blue4:#60A5FA;
  --blue-pale:#EFF6FF;--blue-pale2:#DBEAFE;
  --red:#DC2626;--red2:#B91C1C;
  --white:#FFFFFF;--off:#F8FAFF;--gray:#F3F4F6;
  --text:#0F172A;--text2:#334155;--muted:#64748B;
  --border:#E2E8F0;
}
*,*::before,*::after{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{background:var(--white);color:var(--text);font-family:"Inter",sans-serif;overflow-x:hidden}

/* ── LOADER ── */
#loader{position:fixed;inset:0;z-index:9999;background:var(--navy);display:flex;flex-direction:column;align-items:center;justify-content:center;gap:24px;transition:opacity .5s,visibility .5s}
#loader.hide{opacity:0;visibility:hidden;pointer-events:none}
.ld-logo{font-family:"Bebas Neue";font-size:52px;letter-spacing:6px;color:#fff}
.ld-logo span{color:var(--blue3)}
.ld-bar-wrap{width:180px;height:2px;background:rgba(255,255,255,.15);overflow:hidden;border-radius:2px}

.nav-logo { height: 38px; display: block; mix-blend-mode: screen; }
.footer-logo { height: 36px; display: block; }
.loader-logo-img { height: 64px; display: block; filter: brightness(0) invert(1); }
.ld-bar{height:100%;width:0%;background:var(--blue3);animation:ldbar 1.4s ease forwards;box-shadow:0 0 12px var(--blue3)}
.ld-txt{font-size:10px;letter-spacing:4px;color:rgba(255,255,255,.4);text-transform:uppercase}
@keyframes ldbar{to{width:100%}}

/* ── NAV ── */
nav{position:fixed;top:0;left:0;right:0;z-index:1000;height:72px;display:flex;align-items:center;padding:0 48px;gap:0;background:var(--navy);border-bottom:1px solid rgba(255,255,255,.1);backdrop-filter:blur(12px);box-shadow:0 4px 24px rgba(0,0,0,.3)}
.nav-brand{display:flex;align-items:center;text-decoration:none;margin-right:auto}

.nav-links{display:flex;align-items:center;gap:36px;list-style:none;margin-right:28px}
.nav-links a{color:rgba(255,255,255,.65);text-decoration:none;font-size:12px;font-weight:600;letter-spacing:1.5px;text-transform:uppercase;transition:color .2s}
.nav-links a:hover{color:#fff}
.nav-cta{display:inline-flex;align-items:center;gap:8px;background:var(--red);color:#fff;padding:10px 22px;border-radius:3px;font-size:12px;font-weight:700;letter-spacing:1.5px;text-transform:uppercase;text-decoration:none;transition:background .2s;white-space:nowrap}
.nav-cta:hover{background:var(--red2)}
.nav-burger{display:none;flex-direction:column;gap:5px;cursor:pointer;margin-left:16px;flex-shrink:0}
.nav-burger span{width:22px;height:2px;background:#fff;border-radius:2px}

/* ── HERO ── */

.hero-car-bg{
  position:absolute;inset:0;z-index:1;
  background-size:cover;background-position:center 60%;
  background-repeat:no-repeat;
  opacity:0.30;pointer-events:none;
  transition:opacity .8s ease;
}
.hero{min-height:100vh;display:grid;grid-template-columns:1fr 42%;position:relative;overflow:hidden;margin-top:72px}
.hero-left{display:flex;flex-direction:column;justify-content:center;padding:80px 64px 80px 80px;background:rgba(255,255,255,0.88);position:relative;z-index:2}
.hero-left::after{content:"";position:absolute;top:0;right:-1px;width:120px;height:100%;background:var(--white);clip-path:polygon(0 0,100% 0,0 100%);z-index:3}
.hero-tag{display:inline-flex;align-items:center;gap:10px;background:var(--blue-pale);border:1px solid var(--blue-pale2);padding:6px 16px;border-radius:2px;font-size:10px;font-weight:700;letter-spacing:3px;text-transform:uppercase;color:var(--blue);margin-bottom:28px;width:fit-content}
.hero-tag-dot{width:6px;height:6px;background:var(--blue);border-radius:50%;animation:blink 2s infinite}
@keyframes blink{0%,100%{opacity:1}50%{opacity:.3}}
.hero h1{font-family:"Bebas Neue";font-size:clamp(56px,7vw,88px);line-height:.92;letter-spacing:2px;color:var(--navy)}
.hero h1 .accent{color:var(--blue)}
.hero h1 .red{color:var(--red)}
.hero-desc{margin-top:20px;font-size:16px;font-weight:300;color:var(--muted);line-height:1.7;max-width:440px}
.hero-actions{margin-top:32px;display:flex;gap:12px;flex-wrap:wrap}
.hero-stats{margin-top:52px;display:flex;gap:0;border:1px solid var(--border);border-radius:4px;overflow:hidden;width:fit-content}
.hero-stat{padding:16px 28px;border-right:1px solid var(--border);background:var(--white)}
.hero-stat:last-child{border-right:none}
.hero-stat-num{font-family:"Bebas Neue";font-size:36px;color:var(--navy);line-height:1}
.hero-stat-num em{color:var(--blue);font-style:normal}
.hero-stat-lbl{font-size:10px;font-weight:600;letter-spacing:2px;text-transform:uppercase;color:var(--muted);margin-top:4px}
.hero-right{background:var(--navy);position:relative;overflow:hidden}
.hero-right-bg{position:absolute;inset:0;background-image:url("https://www.autocerto.com/fotos/3881/0/1_000000.jpg");background-size:cover;background-position:center;opacity:.18}
.hero-right-overlay{position:absolute;inset:0;background:linear-gradient(135deg,var(--navy) 0%,rgba(11,31,74,.7) 60%,rgba(37,99,235,.2) 100%)}
.hero-right-content{position:relative;z-index:2;height:100%;display:flex;flex-direction:column;justify-content:flex-end;padding:48px 56px;gap:16px}
.hero-badge{display:inline-flex;align-items:center;gap:8px;background:rgba(37,99,235,.15);border:1px solid rgba(59,130,246,.3);padding:8px 16px;border-radius:2px;width:fit-content}
.hero-badge-icon{width:8px;height:8px;background:var(--blue3);border-radius:50%;animation:blink 1.5s infinite}
.hero-badge-txt{font-size:10px;font-weight:600;letter-spacing:3px;text-transform:uppercase;color:var(--blue4)}
.hero-feat{display:flex;flex-direction:column;gap:10px}
.hero-feat-item{display:flex;align-items:center;gap:12px;color:rgba(255,255,255,.7);font-size:13px;font-weight:400}
.hero-feat-icon{width:32px;height:32px;background:rgba(37,99,235,.2);border:1px solid rgba(37,99,235,.3);border-radius:2px;display:flex;align-items:center;justify-content:center;font-size:14px;flex-shrink:0}
.hero-geo{position:absolute;top:-80px;right:-80px;width:320px;height:320px;border:1px solid rgba(37,99,235,.15);border-radius:50%;opacity:.4}
.hero-geo2{position:absolute;top:-40px;right:-40px;width:220px;height:220px;border:1px solid rgba(37,99,235,.2);border-radius:50%;opacity:.5}

/* ── BUTTONS ── */
.btn-blue{display:inline-flex;align-items:center;gap:8px;background:var(--blue);color:#fff;padding:14px 28px;border-radius:3px;font-size:13px;font-weight:700;letter-spacing:1.5px;text-transform:uppercase;text-decoration:none;transition:background .2s,transform .2s,box-shadow .2s;box-shadow:0 4px 20px rgba(37,99,235,.3)}
.btn-blue:hover{background:var(--blue2);transform:translateY(-2px);box-shadow:0 8px 28px rgba(37,99,235,.4)}
.btn-red{display:inline-flex;align-items:center;gap:8px;background:var(--red);color:#fff;padding:14px 28px;border-radius:3px;font-size:13px;font-weight:700;letter-spacing:1.5px;text-transform:uppercase;text-decoration:none;transition:background .2s,transform .2s}
.btn-red:hover{background:var(--red2);transform:translateY(-2px)}
.btn-outline-navy{display:inline-flex;align-items:center;gap:8px;background:transparent;color:var(--navy);padding:13px 28px;border-radius:3px;border:1.5px solid var(--navy);font-size:13px;font-weight:600;letter-spacing:1.5px;text-transform:uppercase;text-decoration:none;transition:background .2s,color .2s}
.btn-outline-navy:hover{background:var(--navy);color:#fff}
.btn-outline-white{display:inline-flex;align-items:center;gap:8px;background:transparent;color:#fff;padding:13px 28px;border-radius:3px;border:1.5px solid rgba(255,255,255,.4);font-size:13px;font-weight:600;letter-spacing:1.5px;text-transform:uppercase;text-decoration:none;transition:border-color .2s,background .2s}
.btn-outline-white:hover{border-color:#fff;background:rgba(255,255,255,.08)}

/* ── SECTION LABELS ── */
.s-label{font-size:10px;font-weight:700;letter-spacing:4px;text-transform:uppercase;color:var(--blue);margin-bottom:10px;display:block}
.s-label-white{font-size:10px;font-weight:700;letter-spacing:4px;text-transform:uppercase;color:var(--blue4);margin-bottom:10px;display:block}
.s-title{font-family:"Bebas Neue";font-size:clamp(32px,4vw,52px);line-height:1;color:var(--navy)}
.s-title-white{font-family:"Bebas Neue";font-size:clamp(32px,4vw,52px);line-height:1;color:#fff}
.s-divider{width:48px;height:3px;background:var(--blue);margin:16px 0;border-radius:2px}
.s-divider-red{width:48px;height:3px;background:var(--red);margin:16px 0;border-radius:2px}

/* ── DESTAQUES ── */
.destaques{padding:96px 80px;background:var(--white)}
.dest-header{display:flex;justify-content:space-between;align-items:flex-end;margin-bottom:48px}
.dest-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:20px}

/* ── CARD ── */
.card{background:#fff;border:1px solid var(--border);border-radius:6px;overflow:hidden;cursor:pointer;transition:transform .3s,box-shadow .3s,border-color .3s;box-shadow:0 2px 8px rgba(11,31,74,.06)}
.card:hover{transform:translateY(-6px);box-shadow:0 16px 48px rgba(11,31,74,.14);border-color:var(--blue-pale2)}
.card-img-wrap{position:relative;overflow:hidden;aspect-ratio:16/10}
.card-img{width:100%;height:100%;object-fit:cover;transition:transform .5s}
.card:hover .card-img{transform:scale(1.05)}
.card-badge{position:absolute;top:10px;left:10px;background:var(--navy);color:#fff;font-size:10px;font-weight:700;letter-spacing:2px;text-transform:uppercase;padding:4px 10px;border-radius:2px}
.card-km{position:absolute;bottom:10px;right:10px;background:rgba(255,255,255,.92);backdrop-filter:blur(4px);color:var(--navy);font-size:11px;font-weight:600;padding:3px 10px;border-radius:2px}
.card-zoom{position:absolute;inset:0;display:flex;align-items:center;justify-content:center;background:rgba(37,99,235,0);transition:background .3s}
.card:hover .card-zoom{background:rgba(37,99,235,.08)}
.card-zoom-icon{width:44px;height:44px;background:var(--blue);border-radius:50%;display:flex;align-items:center;justify-content:center;opacity:0;transform:scale(.6);transition:opacity .3s,transform .3s}
.card:hover .card-zoom-icon{opacity:1;transform:scale(1)}
.card-body{padding:18px 20px}
.card-brand{font-size:10px;font-weight:700;letter-spacing:3px;text-transform:uppercase;color:var(--blue)}
.card-model{font-family:"Bebas Neue";font-size:24px;line-height:1.1;color:var(--navy);margin-top:4px}
.card-versao{font-size:11px;color:var(--muted);margin-top:3px}
.card-tags{display:flex;gap:6px;flex-wrap:wrap;margin-top:10px}
.card-tag{background:var(--gray);padding:3px 10px;border-radius:2px;font-size:10px;font-weight:600;letter-spacing:1px;text-transform:uppercase;color:var(--muted)}
.card-footer{padding:14px 20px;border-top:1px solid var(--border);display:flex;align-items:center;justify-content:space-between;gap:10px}
.card-price{font-family:"Bebas Neue";font-size:20px;color:var(--navy)}
.card-wpp{display:inline-flex;align-items:center;gap:6px;background:#128C7E;color:#fff;padding:8px 16px;border-radius:2px;font-size:11px;font-weight:700;letter-spacing:1px;text-transform:uppercase;text-decoration:none;transition:background .2s;white-space:nowrap}
.card-wpp:hover{background:#075E54}
.card-skeleton{background:var(--gray);border-radius:6px;overflow:hidden;border:1px solid var(--border)}
.skel-img{aspect-ratio:16/10;background:var(--border)}
.skel-body{padding:18px 20px}
.skel-line{height:12px;background:var(--border);border-radius:2px;margin-bottom:8px;animation:shimmer 1.5s infinite}
.skel-line.w60{width:60%}.skel-line.w80{width:80%}
@keyframes shimmer{0%,100%{opacity:.4}50%{opacity:.9}}

/* ── FINANCIAMENTO ── */
.fin{background:var(--navy);padding:96px 80px;display:grid;grid-template-columns:1fr 1fr;gap:80px;align-items:center;position:relative;overflow:hidden}
.fin::before{content:"60×";position:absolute;right:-20px;top:50%;transform:translateY(-50%);font-family:"Bebas Neue";font-size:280px;color:rgba(255,255,255,.03);line-height:1;pointer-events:none}
.fin-left .s-label-white{color:var(--blue4)}
.fin-title{font-family:"Bebas Neue";font-size:clamp(42px,6vw,72px);line-height:.9;color:#fff}
.fin-title span{color:var(--blue3)}
.fin-desc{font-size:15px;font-weight:300;color:rgba(255,255,255,.65);line-height:1.7;margin-top:16px;max-width:420px}
.fin-badges{display:flex;gap:8px;flex-wrap:wrap;margin-top:20px}
.fin-badge{background:rgba(37,99,235,.15);border:1px solid rgba(59,130,246,.25);padding:6px 14px;border-radius:2px;font-size:11px;font-weight:600;letter-spacing:1px;text-transform:uppercase;color:rgba(255,255,255,.7)}
.fin-actions{margin-top:28px;display:flex;gap:12px;flex-wrap:wrap}
.fin-right{background:rgba(37,99,235,.12);border:1px solid rgba(59,130,246,.2);border-radius:8px;padding:48px;text-align:center;position:relative;overflow:hidden}
.fin-right::before{content:"";position:absolute;top:-80px;left:-80px;width:280px;height:280px;background:radial-gradient(circle,rgba(37,99,235,.2) 0%,transparent 70%)}
.fin-num{font-family:"Bebas Neue";font-size:120px;line-height:.85;color:var(--red);position:relative;z-index:1;text-shadow:0 0 40px rgba(220,38,38,.3)}
.fin-unit{font-family:"Bebas Neue";font-size:28px;letter-spacing:4px;color:rgba(255,255,255,.8);margin-top:4px;position:relative;z-index:1}
.fin-sub{font-size:13px;color:rgba(255,255,255,.5);line-height:1.6;margin-top:12px;position:relative;z-index:1}
.fin-cta{margin-top:24px;position:relative;z-index:1}

/* ── DIFERENCIAIS ── */
.difs{background:var(--off);padding:96px 80px}
.dif-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:2px;margin-top:48px}
.dif-item{background:var(--white);padding:36px 28px;border:1px solid var(--border);transition:border-color .3s,transform .3s;position:relative;overflow:hidden}
.dif-item:hover{border-color:var(--blue-pale2);transform:translateY(-3px)}
.dif-item::after{content:"";position:absolute;bottom:0;left:0;right:0;height:3px;background:linear-gradient(90deg,var(--blue),var(--blue3));transform:scaleX(0);transition:transform .3s;transform-origin:left}
.dif-item:hover::after{transform:scaleX(1)}
.dif-icon{font-size:28px;margin-bottom:16px}
.dif-name{font-family:"Bebas Neue";font-size:26px;color:var(--navy);line-height:1}
.dif-sub{font-size:11px;font-weight:700;letter-spacing:2px;text-transform:uppercase;color:var(--blue);margin-top:4px}
.dif-desc{font-size:13px;color:var(--muted);line-height:1.6;margin-top:8px}

/* ── DEPOIMENTOS + FAQ ── */
.depfaq{padding:96px 80px;background:var(--white);display:grid;grid-template-columns:1fr 1fr;gap:80px}
.dep-card{background:var(--off);border:1px solid var(--border);border-left:3px solid var(--blue);border-radius:4px;padding:28px;margin-top:28px;position:relative}
.dep-stars{color:#F59E0B;font-size:13px;letter-spacing:2px;margin-bottom:10px}
.dep-text{font-size:14px;color:var(--text2);line-height:1.7;font-style:italic}
.dep-name{margin-top:14px;font-size:13px;font-weight:700;color:var(--navy)}
.dep-city{font-size:11px;color:var(--muted)}
.faq-list{margin-top:28px}
.faq-item{border-bottom:1px solid var(--border)}
.faq-q{width:100%;background:none;border:none;cursor:pointer;color:var(--text);text-align:left;padding:18px 0;font-size:15px;font-weight:600;display:flex;justify-content:space-between;align-items:center;gap:16px;transition:color .2s}
.faq-q:hover{color:var(--blue)}
.faq-icon{font-size:18px;color:var(--blue);transition:transform .3s;flex-shrink:0}
.faq-item.open .faq-icon{transform:rotate(45deg)}
.faq-a{max-height:0;overflow:hidden;transition:max-height .4s,padding .3s;font-size:14px;color:var(--muted);line-height:1.7}
.faq-item.open .faq-a{max-height:200px;padding-bottom:18px}

/* ── FORM ── */
.form-sec{background:var(--navy);padding:96px 80px;display:grid;grid-template-columns:1fr 1fr;gap:72px;align-items:start}
.form-left{color:#fff}
.form-left .s-label-white{margin-bottom:10px}
.form-left h2{font-family:"Bebas Neue";font-size:clamp(36px,4.5vw,56px);line-height:.95;color:#fff}
.form-left h2 span{color:var(--blue3)}
.form-left p{font-size:14px;color:rgba(255,255,255,.6);line-height:1.7;margin-top:14px;max-width:380px}
.form-benefits{margin-top:32px;display:flex;flex-direction:column;gap:14px}
.form-benefit{display:flex;align-items:flex-start;gap:14px}
.form-b-icon{width:38px;height:38px;background:rgba(37,99,235,.2);border:1px solid rgba(59,130,246,.25);border-radius:3px;display:flex;align-items:center;justify-content:center;flex-shrink:0;font-size:15px}
.form-b-text strong{font-size:13px;font-weight:700;color:#fff;display:block}
.form-b-text span{font-size:12px;color:rgba(255,255,255,.5)}
.form-right{background:rgba(255,255,255,.04);border:1px solid rgba(255,255,255,.1);border-radius:6px;padding:32px}
.form-title{font-family:"Bebas Neue";font-size:22px;color:#fff;margin-bottom:20px}
.form-row{display:grid;grid-template-columns:1fr 1fr;gap:12px;margin-bottom:12px}
.form-row.full{grid-template-columns:1fr}
.form-group{display:flex;flex-direction:column;gap:5px}
.form-label{font-size:9px;font-weight:600;letter-spacing:3px;text-transform:uppercase;color:rgba(255,255,255,.45)}
.form-input,.form-select,.form-textarea{background:rgba(255,255,255,.06);border:1px solid rgba(255,255,255,.12);color:#fff;padding:10px 13px;border-radius:3px;font-family:"Inter";font-size:13px;outline:none;transition:border-color .2s;width:100%}
.form-input::placeholder,.form-textarea::placeholder{color:rgba(255,255,255,.2)}
.form-input:focus,.form-select:focus,.form-textarea:focus{border-color:var(--blue3)}
.form-select{appearance:none;cursor:pointer;background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='8'%3E%3Cpath fill='%23888' d='M1 1l5 5 5-5'/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:right 12px center;padding-right:32px}
.form-select option{background:var(--navy2)}
.form-textarea{resize:vertical;min-height:72px}
.form-submit{width:100%;margin-top:16px;background:var(--red);color:#fff;border:none;padding:15px;border-radius:3px;font-family:"Inter";font-size:13px;font-weight:700;letter-spacing:1.5px;text-transform:uppercase;cursor:pointer;transition:background .2s,transform .2s;display:flex;align-items:center;justify-content:center;gap:8px;box-shadow:0 4px 20px rgba(220,38,38,.3)}
.form-submit:hover{background:var(--red2);transform:translateY(-1px)}

/* ── LOCALIZAÇÃO ── */
.loc{padding:96px 80px;background:var(--white);display:grid;grid-template-columns:1fr 1.2fr;gap:64px;align-items:start}
.loc-items{display:flex;flex-direction:column;gap:20px;margin-top:32px}
.loc-item{display:flex;align-items:flex-start;gap:16px}
.loc-icon{width:44px;height:44px;background:var(--blue-pale);border:1px solid var(--blue-pale2);border-radius:3px;display:flex;align-items:center;justify-content:center;flex-shrink:0;font-size:18px}
.loc-lbl{font-size:10px;font-weight:700;letter-spacing:3px;text-transform:uppercase;color:var(--blue);margin-bottom:4px}
.loc-val{font-size:14px;color:var(--text2);line-height:1.6}
.loc-val strong{color:var(--text);font-weight:600}
.loc-map-btn{display:inline-flex;align-items:center;gap:8px;margin-top:24px;background:var(--blue);color:#fff;padding:12px 24px;border-radius:3px;font-size:12px;font-weight:700;letter-spacing:1.5px;text-transform:uppercase;text-decoration:none;transition:background .2s,transform .2s}
.loc-map-btn:hover{background:var(--blue2);transform:translateY(-2px)}
.loc-map{border-radius:8px;overflow:hidden;border:1px solid var(--border);height:460px;box-shadow:0 8px 32px rgba(11,31,74,.1)}
.loc-map iframe{width:100%;height:100%;border:none;display:block}

/* ── CTA FINAL ── */
.cta-final{background:linear-gradient(135deg,var(--blue) 0%,var(--navy) 100%);padding:96px 80px;display:flex;align-items:center;justify-content:space-between;gap:48px;flex-wrap:wrap;position:relative;overflow:hidden}
.cta-final::before{content:"NILCAR";position:absolute;right:-40px;top:50%;transform:translateY(-50%);font-family:"Bebas Neue";font-size:280px;color:rgba(255,255,255,.04);line-height:1;pointer-events:none}
.cta-final h2{font-family:"Bebas Neue";font-size:clamp(36px,5vw,60px);line-height:1;color:#fff}
.cta-final p{font-size:15px;color:rgba(255,255,255,.65);margin-top:8px}
.cta-actions{display:flex;gap:14px;flex-wrap:wrap;flex-shrink:0;position:relative;z-index:1}

/* ── FOOTER ── */
footer{background:var(--navy);border-top:1px solid rgba(255,255,255,.06);padding:64px 80px 32px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:48px;margin-bottom:48px}
.footer-brand{display:block;margin-bottom:12px}

.footer-tagline{font-size:13px;color:rgba(255,255,255,.4);line-height:1.7}
.footer-col h4{font-size:10px;font-weight:700;letter-spacing:3px;text-transform:uppercase;color:var(--blue3);margin-bottom:16px}
.footer-col ul{list-style:none}
.footer-col li{margin-bottom:8px}
.footer-col a{color:rgba(255,255,255,.45);text-decoration:none;font-size:13px;transition:color .2s}
.footer-col a:hover{color:#fff}
.footer-col p{font-size:13px;color:rgba(255,255,255,.4);line-height:1.8}
.footer-bottom{border-top:1px solid rgba(255,255,255,.06);padding-top:24px;display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:16px}
.footer-copy{font-size:11px;color:rgba(255,255,255,.25)}
.footer-social{display:flex;gap:8px}
.footer-social a{width:34px;height:34px;background:rgba(255,255,255,.06);border:1px solid rgba(255,255,255,.08);border-radius:2px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.4);text-decoration:none;transition:background .2s,color .2s,border-color .2s}
.footer-social a:hover{background:var(--blue);color:#fff;border-color:var(--blue)}
.footer-social svg{width:14px;height:14px;fill:currentColor}

/* ── WPP FLOAT ── */
.wpp-float{position:fixed;bottom:28px;right:28px;z-index:999;width:58px;height:58px;background:#25D366;border-radius:50%;display:flex;align-items:center;justify-content:center;box-shadow:0 4px 20px rgba(37,211,102,.4);text-decoration:none;transition:transform .2s;opacity:0;animation:wppPop .5s 2s ease forwards}
.wpp-float:hover{transform:scale(1.1)}
.wpp-float svg{width:26px;height:26px;fill:#fff}
@keyframes wppPop{from{opacity:0;transform:scale(.5)}to{opacity:1;transform:scale(1)}}

/* ── MODAL ── */
.modal-overlay{position:fixed;inset:0;z-index:5000;background:rgba(11,31,74,.96);backdrop-filter:blur(12px);display:flex;align-items:center;justify-content:center;padding:20px;opacity:0;visibility:hidden;transition:opacity .3s,visibility .3s}
.modal-overlay.open{opacity:1;visibility:visible}
.modal-box{background:#fff;border-radius:8px;width:100%;max-width:960px;max-height:92vh;display:flex;overflow:hidden;position:relative;transform:translateY(24px) scale(.97);transition:transform .35s cubic-bezier(.22,.68,0,1.2);box-shadow:0 32px 80px rgba(0,0,0,.4)}
.modal-overlay.open .modal-box{transform:translateY(0) scale(1)}
.modal-close{position:absolute;top:14px;right:14px;z-index:20;background:var(--navy);border:none;color:#fff;width:36px;height:36px;border-radius:50%;font-size:14px;cursor:pointer;display:flex;align-items:center;justify-content:center;transition:background .2s}
.modal-close:hover{background:var(--red)}
.modal-gallery{width:55%;flex-shrink:0;background:#f0f4f8;display:flex;flex-direction:column}
.modal-main-photo{flex:1;position:relative;overflow:hidden;min-height:280px;background:#e8eef5}
.modal-main-img{width:100%;height:100%;object-fit:cover;transition:opacity .18s}
.modal-main-img.fading{opacity:0}
.modal-nav{position:absolute;top:50%;transform:translateY(-50%);background:rgba(11,31,74,.7);border:1px solid rgba(255,255,255,.2);color:#fff;width:40px;height:40px;border-radius:50%;font-size:22px;cursor:pointer;display:flex;align-items:center;justify-content:center;transition:background .2s;z-index:3;line-height:1}
.modal-nav:hover{background:var(--blue)}
.modal-nav.prev{left:12px}.modal-nav.next{right:12px}
.modal-counter{position:absolute;bottom:10px;left:50%;transform:translateX(-50%);background:rgba(11,31,74,.75);color:rgba(255,255,255,.8);font-size:11px;letter-spacing:2px;padding:3px 14px;border-radius:20px}
.modal-thumbs{display:flex;gap:4px;padding:8px;overflow-x:auto;min-height:68px;background:#e8eef5}
.modal-thumbs::-webkit-scrollbar{height:2px}
.modal-thumbs::-webkit-scrollbar-thumb{background:var(--blue);border-radius:2px}
.modal-thumb{flex-shrink:0;width:72px;height:52px;border-radius:3px;overflow:hidden;cursor:pointer;border:2px solid transparent;transition:all .2s;opacity:.5}
.modal-thumb:hover{opacity:.85}
.modal-thumb.active{border-color:var(--blue);opacity:1}
.modal-thumb img{width:100%;height:100%;object-fit:cover}
.modal-info{flex:1;padding:28px;display:flex;flex-direction:column;overflow-y:auto}
.modal-info::-webkit-scrollbar{width:2px}
.modal-info::-webkit-scrollbar-thumb{background:var(--blue)}
.modal-ano{background:var(--navy);color:#fff;font-size:10px;font-weight:700;letter-spacing:2px;padding:3px 12px;border-radius:2px;display:inline-block;margin-bottom:10px;width:fit-content}
.modal-brand{font-size:10px;font-weight:700;letter-spacing:3px;text-transform:uppercase;color:var(--blue)}
.modal-model{font-family:"Bebas Neue";font-size:36px;color:var(--navy);line-height:1;margin-top:2px}
.modal-versao{font-size:11px;color:var(--muted);margin-top:4px}
.modal-divider{border:none;border-top:1px solid var(--border);margin:16px 0}
.modal-specs{display:grid;grid-template-columns:1fr 1fr;gap:10px}
.modal-spec{background:var(--off);border:1px solid var(--border);border-radius:3px;padding:10px 14px}
.modal-spec-lbl{font-size:9px;font-weight:600;letter-spacing:2.5px;text-transform:uppercase;color:var(--muted)}
.modal-spec-val{font-size:15px;font-weight:700;color:var(--navy);margin-top:2px}
.modal-price-block{margin-top:16px}
.modal-price-lbl{font-size:9px;font-weight:600;letter-spacing:3px;text-transform:uppercase;color:var(--muted)}
.modal-price-val{font-family:"Bebas Neue";font-size:40px;color:var(--navy);line-height:1;margin-top:2px}
.modal-actions{margin-top:auto;padding-top:16px}
.modal-wpp-btn{display:flex;align-items:center;justify-content:center;gap:10px;background:#128C7E;color:#fff;padding:15px;border-radius:3px;font-size:13px;font-weight:700;letter-spacing:2px;text-transform:uppercase;text-decoration:none;width:100%;transition:background .2s,transform .2s;box-shadow:0 4px 16px rgba(18,140,126,.25)}
.modal-wpp-btn:hover{background:#075E54;transform:translateY(-2px)}
.modal-cod{margin-top:8px;text-align:center;font-size:10px;letter-spacing:2px;color:rgba(0,0,0,.2);text-transform:uppercase}

/* ── RESPONSIVE ── */
@media(max-width:1024px){
  .hero{grid-template-columns:1fr;min-height:auto}
  .hero-right{min-height:360px}
  .hero-left::after{display:none}
  .dest-grid{grid-template-columns:1fr 1fr}
  .fin{grid-template-columns:1fr;gap:48px}
  .dif-grid{grid-template-columns:1fr 1fr}
  .depfaq{grid-template-columns:1fr}
  .form-sec{grid-template-columns:1fr;gap:48px}
  .loc{grid-template-columns:1fr}
  .loc-map{height:320px}
}
@media(max-width:768px){
  nav{padding:0 20px}
  .nav-links{display:none}
  .nav-links.open{display:flex;flex-direction:column;position:fixed;inset:72px 0 0 0;background:rgba(255,255,255,.98);padding:32px 24px;gap:20px;z-index:999}
  .nav-burger{display:flex}
  .hero-left{padding:64px 24px}
  .destaques,.difs,.depfaq,.loc,.cta-final{padding:72px 24px}
  .fin,.form-sec{padding:72px 24px}
  footer{padding:48px 24px 28px}
  .footer-grid{grid-template-columns:1fr 1fr;gap:32px}
  .dest-grid{grid-template-columns:1fr}
  .dif-grid{grid-template-columns:1fr}
  .form-row{grid-template-columns:1fr}
  .modal-box{flex-direction:column;max-height:96vh;border-radius:12px 12px 0 0;align-self:flex-end}
  .modal-gallery{width:100%}
  .modal-overlay{padding:0;align-items:flex-end}
}
@media(max-width:480px){
  .footer-grid{grid-template-columns:1fr}
  .hero-stats{flex-wrap:wrap}
}
</style>
</head>
<body>

<div id="loader">
  <img src="https://nilcarautomoveis.com.br/Content/images/logo.png" alt="Nilcar Automóveis" class="loader-logo-img">
  <div class="ld-bar-wrap"><div class="ld-bar"></div></div>
  <p class="ld-txt">Carregando estoque...</p>
</div>

<a href="https://wa.me/5521987885533?text=Olá!%20Vi%20o%20site%20da%20Nilcar%20e%20quero%20mais%20informações." class="wpp-float" target="_blank">
  <svg viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
</a>

<!-- MODAL -->
<div class="modal-overlay" id="veiculoModal" onclick="handleOverlayClick(event)">
  <div class="modal-box">
    <button class="modal-close" onclick="closeModal()">✕</button>
    <div class="modal-gallery">
      <div class="modal-main-photo">
        <img class="modal-main-img" id="mMainImg" src="" alt="">
        <button class="modal-nav prev" onclick="navPhoto(-1)">&#8249;</button>
        <button class="modal-nav next" onclick="navPhoto(1)">&#8250;</button>
        <div class="modal-counter"><span id="mIdx">1</span> / <span id="mTotal">1</span></div>
      </div>
      <div class="modal-thumbs" id="mThumbs"></div>
    </div>
    <div class="modal-info">
      <div class="modal-ano" id="mAno"></div>
      <div class="modal-brand" id="mBrand"></div>
      <div class="modal-model" id="mModel"></div>
      <div class="modal-versao" id="mVersao"></div>
      <hr class="modal-divider">
      <div class="modal-specs">
        <div class="modal-spec"><div class="modal-spec-lbl">Quilometragem</div><div class="modal-spec-val" id="mKm">—</div></div>
        <div class="modal-spec"><div class="modal-spec-lbl">Câmbio</div><div class="modal-spec-val" id="mCambio">—</div></div>
        <div class="modal-spec"><div class="modal-spec-lbl">Combustível</div><div class="modal-spec-val" id="mComb">—</div></div>
        <div class="modal-spec"><div class="modal-spec-lbl">Ano</div><div class="modal-spec-val" id="mAnoSpec">—</div></div>
      </div>
      <div class="modal-price-block">
        <div class="modal-price-lbl">Preço</div>
        <div class="modal-price-val" id="mPreco">—</div>
      </div>
      <div class="modal-actions">
        <a class="modal-wpp-btn" id="mWppBtn" href="#" target="_blank">
          <svg width="18" height="18" fill="currentColor" viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
          Tenho Interesse — WhatsApp
        </a>
        <div class="modal-cod" id="mCod"></div>
      </div>
    </div>
  </div>
</div>

<!-- NAV -->
<nav id="navbar">
  <a href="index.html" class="nav-brand"><img src="https://nilcarautomoveis.com.br/Content/images/logo.png" alt="Nilcar Automóveis" class="nav-logo"></a>
  <ul class="nav-links" id="navLinks">
    <li><a href="index.html">Início</a></li>
    <li><a href="estoque.html">Estoque</a></li>
    <li><a href="#simular">Simulação</a></li>
    <li><a href="#localizacao">Localização</a></li>
  </ul>
  <a href="https://wa.me/5521987885533?text=Olá!%20Quero%20falar%20com%20um%20consultor." target="_blank" class="nav-cta">
    <svg width="13" height="13" fill="currentColor" viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
    Falar Agora
  </a>
  <div class="nav-burger" onclick="toggleMenu()"><span></span><span></span><span></span></div>
</nav>

<!-- HERO -->
<section class="hero"><div id="heroCar" class="hero-car-bg"></div>
  <div class="hero-left">
    <div class="hero-tag"><div class="hero-tag-dot"></div>São João de Meriti · RJ</div>
    <h1>SEU PRÓXIMO<br><span class="accent">CARRO</span><br>COMEÇA AQUI</h1>
    <p class="hero-desc">Seminovos inspecionados, garantia real e financiamento aprovado em minutos — direto pelo WhatsApp, sem burocracia.</p>
    <div class="hero-actions">
      <a href="estoque.html" class="btn-blue">
        <svg width="14" height="14" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/><rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/></svg>
        Ver Estoque
      </a>
      <a href="https://wa.me/5521987885533?text=Olá!%20Quero%20simular%20financiamento." target="_blank" class="btn-outline-navy">Simular Financiamento</a>
    </div>
    <div class="hero-stats">
      <div class="hero-stat"><div class="hero-stat-num">60<em>×</em></div><div class="hero-stat-lbl">Parcelas disponíveis</div></div>
      <div class="hero-stat"><div class="hero-stat-num">100<em>%</em></div><div class="hero-stat-lbl">Veículos revisados</div></div>
      <div class="hero-stat"><div class="hero-stat-num"><em>+</em>10</div><div class="hero-stat-lbl">Anos no mercado</div></div>
    </div>
  </div>
  <div class="hero-right">
    <div class="hero-right-bg" id="heroBg"></div>
    <div class="hero-right-overlay"></div>
    <div class="hero-geo"></div><div class="hero-geo2"></div>
    <div class="hero-right-content">
      <div class="hero-badge"><div class="hero-badge-icon"></div><span class="hero-badge-txt">Estoque Atualizado</span></div>
      <div class="hero-feat">
        <div class="hero-feat-item"><div class="hero-feat-icon">✅</div><span>Financiamento em até 60x com as melhores taxas</span></div>
        <div class="hero-feat-item"><div class="hero-feat-icon">🔧</div><span>Todos os veículos passam por revisão completa</span></div>
        <div class="hero-feat-item"><div class="hero-feat-icon">🔄</div><span>Aceitamos seu veículo na troca</span></div>
      </div>
    </div>
  </div>
</section>

<!-- DESTAQUES -->
<section class="destaques" id="estoque">
  <div class="dest-header">
    <div>
      <span class="s-label">Estoque em tempo real</span>
      <h2 class="s-title">DESTAQUES<br>DA SEMANA</h2>
      <div class="s-divider"></div>
    </div>
    <a href="estoque.html" class="btn-outline-navy" style="flex-shrink:0">Ver Todos →</a>
  </div>
  <div class="dest-grid" id="destGrid">
    <div class="card-skeleton"><div class="skel-img"></div><div class="skel-body"><div class="skel-line w60"></div><div class="skel-line w80"></div><div class="skel-line w60"></div></div></div>
    <div class="card-skeleton"><div class="skel-img"></div><div class="skel-body"><div class="skel-line w60"></div><div class="skel-line w80"></div><div class="skel-line w60"></div></div></div>
    <div class="card-skeleton"><div class="skel-img"></div><div class="skel-body"><div class="skel-line w60"></div><div class="skel-line w80"></div><div class="skel-line w60"></div></div></div>
  </div>
</section>

<!-- FINANCIAMENTO -->
<section class="fin" id="financiamento">
  <div class="fin-left">
    <span class="s-label-white">Crédito facilitado</span>
    <h2 class="fin-title">FINANCI-<br>AMENTO<br><span>APROVADO.</span></h2>
    <p class="fin-desc">BV, Pan, Santander e mais. Simule direto pelo WhatsApp com dados básicos e tenha resposta na hora.</p>
    <div class="fin-badges">
      <span class="fin-badge">BV Financeira</span>
      <span class="fin-badge">Banco Pan</span>
      <span class="fin-badge">Santander</span>
      <span class="fin-badge">Até 60×</span>
    </div>
    <div class="fin-actions">
      <a href="https://wa.me/5521987885533?text=Olá!%20Quero%20simular%20financiamento." target="_blank" class="btn-red">Simular no WhatsApp</a>
      <a href="estoque.html" class="btn-outline-white">Ver Estoque</a>
    </div>
  </div>
  <div class="fin-right">
    <div class="fin-num">60</div>
    <div class="fin-unit">VEZES</div>
    <p class="fin-sub">As melhores taxas do mercado.<br>Aprovação em minutos pelo WhatsApp.</p>
    <div class="fin-cta"><a href="https://wa.me/5521987885533?text=Olá!%20Quero%20simular%20financiamento." target="_blank" class="btn-blue">Simular Agora</a></div>
  </div>
</section>

<!-- DIFERENCIAIS -->
<section class="difs">
  <span class="s-label">Por que a Nilcar</span>
  <h2 class="s-title">O QUE NOS TORNA<br>DIFERENTES.</h2>
  <div class="s-divider"></div>
  <div class="dif-grid">
    <div class="dif-item"><div class="dif-icon">🔧</div><div class="dif-name">Revisados</div><div class="dif-sub">Antes de você ver</div><p class="dif-desc">Cada veículo passa por inspeção técnica completa antes de ir para o estoque. Você compra com segurança.</p></div>
    <div class="dif-item"><div class="dif-icon">💳</div><div class="dif-name">Financiamento</div><div class="dif-sub">Até 60× Facilitado</div><p class="dif-desc">Trabalhamos com os melhores bancos. Simulação rápida via WhatsApp, sem burocracia e sem complicação.</p></div>
    <div class="dif-item"><div class="dif-icon">🔄</div><div class="dif-name">Troca</div><div class="dif-sub">Seu carro entra</div><p class="dif-desc">Avaliamos seu veículo atual e abatemos direto no valor. Processo transparente e sem complicação.</p></div>
    <div class="dif-item"><div class="dif-icon">📍</div><div class="dif-name">Localização</div><div class="dif-sub">Vilar dos Teles</div><p class="dif-desc">Estamos na Av. Automóvel Clube, 2564 — São João de Meriti. Fácil acesso e estacionamento.</p></div>
  </div>
</section>

<!-- DEPOIMENTOS + FAQ -->
<section class="depfaq">
  <div>
    <span class="s-label">Clientes satisfeitos</span>
    <h2 class="s-title">O QUE FALAM<br>DA NILCAR.</h2>
    <div class="s-divider"></div>
    <div class="dep-card">
      <div class="dep-stars">★★★★★</div>
      <p class="dep-text">"Comprei meu Corolla 100% pelo WhatsApp. Em menos de 2 horas estava aprovado e revisado. A Nilcar cumpre o que promete!"</p>
      <div class="dep-name">Rodrigo M.</div><div class="dep-city">Nova Iguaçu, RJ</div>
    </div>
    <div class="dep-card">
      <div class="dep-stars">★★★★★</div>
      <p class="dep-text">"Meu carro entrou como entrada sem complicação nenhuma. Saí de lá com garantia e tudo documentado. Recomendo demais!"</p>
      <div class="dep-name">Aline C.</div><div class="dep-city">São João de Meriti, RJ</div>
    </div>
  </div>
  <div>
    <span class="s-label">Tire suas dúvidas</span>
    <h2 class="s-title">PERGUNTAS<br>FREQUENTES.</h2>
    <div class="s-divider"></div>
    <div class="faq-list">
      <div class="faq-item"><button class="faq-q" onclick="toggleFaq(this)">Vocês aceitam meu carro na troca? <span class="faq-icon">+</span></button><p class="faq-a">Sim! Avaliamos seu veículo e abatemos direto na entrada ou financiamento. Processo sem compromisso, feito pelo WhatsApp.</p></div>
      <div class="faq-item"><button class="faq-q" onclick="toggleFaq(this)">Como funciona o financiamento? <span class="faq-icon">+</span></button><p class="faq-a">Trabalhamos com BV, Pan, Santander e outros. Simule pelo WhatsApp com dados básicos — resposta em minutos. Até 60×.</p></div>
      <div class="faq-item"><button class="faq-q" onclick="toggleFaq(this)">Os veículos têm garantia? <span class="faq-icon">+</span></button><p class="faq-a">Todos os veículos passam por revisão completa e saem com garantia, sem custo adicional.</p></div>
      <div class="faq-item"><button class="faq-q" onclick="toggleFaq(this)">Posso fechar negócio sem ir à loja? <span class="faq-icon">+</span></button><p class="faq-a">Sim. Todo o processo de escolha, simulação e aprovação pode ser feito pelo WhatsApp. Você só vai buscar o carro.</p></div>
      <div class="faq-item"><button class="faq-q" onclick="toggleFaq(this)">Qual o horário de atendimento? <span class="faq-icon">+</span></button><p class="faq-a">Seg–Sex das 9h às 18h e Sábado das 9h às 16h. A NEW, nossa consultora virtual, atende 24/7 pelo WhatsApp!</p></div>
    </div>
  </div>
</section>

<!-- FORM SIMULAÇÃO -->
<section class="form-sec" id="simular">
  <div class="form-left">
    <span class="s-label-white">Crédito rápido</span>
    <h2>SIMULE SEU<br>FINANCIAMENTO<br><span>AGORA.</span></h2>
    <p>Preencha os dados ao lado e envie pelo WhatsApp. Retorno em minutos com as melhores condições.</p>
    <div class="form-benefits">
      <div class="form-benefit"><div class="form-b-icon">⚡</div><div class="form-b-text"><strong>Aprovação em minutos</strong><span>Resposta rápida via WhatsApp</span></div></div>
      <div class="form-benefit"><div class="form-b-icon">🏦</div><div class="form-b-text"><strong>Melhores bancos</strong><span>BV, Pan, Santander e outros</span></div></div>
      <div class="form-benefit"><div class="form-b-icon">🔄</div><div class="form-b-text"><strong>Seu carro como entrada</strong><span>Avaliamos e abatemos no valor</span></div></div>
    </div>
  </div>
  <div class="form-right">
    <div class="form-title">SEUS DADOS</div>
    <div class="form-row">
      <div class="form-group"><label class="form-label">Nome *</label><input class="form-input" id="fNome" type="text" placeholder="Seu nome completo"></div>
      <div class="form-group"><label class="form-label">Telefone *</label><input class="form-input" id="fTel" type="tel" placeholder="(21) 99999-9999"></div>
    </div>
    <div class="form-row">
      <div class="form-group"><label class="form-label">CPF</label><input class="form-input" id="fCpf" type="text" placeholder="000.000.000-00"></div>
      <div class="form-group"><label class="form-label">Nascimento</label><input class="form-input" id="fNasc" type="text" placeholder="dd/mm/aaaa"></div>
    </div>
    <div class="form-row">
      <div class="form-group"><label class="form-label">Veículo de Interesse</label><input class="form-input" id="fVeiculo" type="text" placeholder="Ex: Honda HR-V 2022"></div>
      <div class="form-group"><label class="form-label">Renda Mensal</label>
        <select class="form-select" id="fRenda">
          <option value="">Selecione</option>
          <option>Até R$ 2.000</option><option>R$ 2.000 a R$ 4.000</option><option>R$ 4.000 a R$ 7.000</option><option>Acima de R$ 7.000</option>
        </select>
      </div>
    </div>
    <div class="form-row">
      <div class="form-group"><label class="form-label">Valor de Entrada</label><input class="form-input" id="fEntrada" type="text" placeholder="Ex: R$ 10.000"></div>
      <div class="form-group"><label class="form-label">Possui Troca?</label>
        <select class="form-select" id="fTroca"><option value="Não">Não</option><option value="Sim">Sim</option></select>
      </div>
    </div>
    <div class="form-row full">
      <div class="form-group"><label class="form-label">Observações</label><textarea class="form-textarea" id="fObs" placeholder="Alguma informação adicional?"></textarea></div>
    </div>
    <button class="form-submit" onclick="enviarSim()">
      <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
      Enviar pelo WhatsApp
    </button>
  </div>
</section>

<!-- LOCALIZAÇÃO -->
<section class="loc" id="localizacao">
  <div>
    <span class="s-label">Como chegar</span>
    <h2 class="s-title">ONDE<br>ESTAMOS.</h2>
    <div class="s-divider"></div>
    <div class="loc-items">
      <div class="loc-item"><div class="loc-icon">📍</div><div><div class="loc-lbl">Endereço</div><div class="loc-val"><strong>Av. Automóvel Clube, 2564</strong><br>Vilar dos Teles — São João de Meriti, RJ</div></div></div>
      <div class="loc-item"><div class="loc-icon">🕐</div><div><div class="loc-lbl">Horário</div><div class="loc-val"><strong>Seg–Sex:</strong> 9h às 18h<br><strong>Sábado:</strong> 9h às 16h<br><strong>Domingo:</strong> Fechado</div></div></div>
      <div class="loc-item"><div class="loc-icon">📞</div><div><div class="loc-lbl">Contato</div><div class="loc-val"><strong>(21) 98788-5533</strong><br>(21) 3753-5754</div></div></div>
      <div class="loc-item"><div class="loc-icon">💬</div><div><div class="loc-lbl">Atendimento Digital</div><div class="loc-val">WhatsApp 24/7 pela <strong>NEW</strong> — nossa consultora virtual</div></div></div>
    </div>
    <a href="https://maps.app.goo.gl/HguyZtGVzCr5VXsP6" target="_blank" class="loc-map-btn">
      <svg width="14" height="14" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/></svg>
      Abrir no Google Maps
    </a>
  </div>
  <div class="loc-map">
    <iframe src="https://maps.google.com/maps?q=Av.+Automóvel+Clube,+2564,+Vilar+dos+Teles,+São+João+de+Meriti,+RJ,+Brazil&output=embed&z=16" allowfullscreen loading="lazy"></iframe>
  </div>
</section>

<!-- CTA FINAL -->
<section class="cta-final">
  <div>
    <h2>PRONTO PARA ENCONTRAR<br>SEU PRÓXIMO CARRO?</h2>
    <p>Av. Automóvel Clube, 2564 — Vilar dos Teles, São João de Meriti · Seg–Sáb: 9h às 18h</p>
  </div>
  <div class="cta-actions">
    <a href="https://wa.me/5521987885533" target="_blank" class="btn-red">Falar no WhatsApp</a>
    <a href="estoque.html" class="btn-outline-white">Ver Estoque</a>
  </div>
</section>

<!-- FOOTER -->
<footer>
  <div class="footer-grid">
    <div>
      <img src="https://nilcarautomoveis.com.br/Content/images/logo.png" alt="Nilcar Automóveis" class="footer-logo" style="filter:brightness(0) invert(1);">
      <p class="footer-tagline">Seminovos revisados com garantia.<br>Financiamento sem burocracia.<br>São João de Meriti há mais de 10 anos.</p>
    </div>
    <div class="footer-col"><h4>Menu</h4><ul><li><a href="index.html">Início</a></li><li><a href="estoque.html">Estoque</a></li><li><a href="#financiamento">Financiamento</a></li><li><a href="https://wa.me/5521987885533" target="_blank">WhatsApp</a></li></ul></div>
    <div class="footer-col"><h4>Horário</h4><p>Seg–Sex: 9h às 18h<br>Sábado: 9h às 16h<br>Domingo: Fechado</p></div>
    <div class="footer-col"><h4>Contato</h4><p>Av. Automóvel Clube, 2564<br>Vilar dos Teles<br>São João de Meriti - RJ<br><br>(21) 98788-5533<br>(21) 3753-5754</p></div>
  </div>
  <div class="footer-bottom">
    <p class="footer-copy">© 2026 Nilcar Automóveis — Todos os direitos reservados.</p>
    <div class="footer-social">
      <a href="https://www.instagram.com/nilcarautomoveisrj/" target="_blank"><svg viewBox="0 0 24 24"><path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/></svg></a>
      <a href="https://wa.me/5521987885533" target="_blank"><svg viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg></a>
    </div>
  </div>
</footer>

<script>
const CFG={webhook:"https://apin8n.lv-mktdeconversa.com/webhook/estoque-nilcar",wpp:"5521987885533"};
let veiculoMap={};
let curFotos=[],curIdx=0;

const DEMO=[
  {CodigoVeiculo:1001,Marca:"TOYOTA",Modelo:"Corolla",Versao:"2.0 XEI 16V Flex Automático",AnoFab:2022,AnoMod:2023,KM:28000,Preco:139990,Cambio:"Automático",Combustivel:"Flex",foto:"https://www.autocerto.com/fotos/3881/0/placeholder.jpg",fotos:[]},
  {CodigoVeiculo:1002,Marca:"HONDA",Modelo:"HR-V",Versao:"1.5 Turbo EXL CVT",AnoFab:2023,AnoMod:2024,KM:15000,Preco:159990,Cambio:"Automático",Combustivel:"Flex",foto:"https://www.autocerto.com/fotos/3881/0/placeholder.jpg",fotos:[]},
  {CodigoVeiculo:1003,Marca:"CHEVROLET",Modelo:"Onix Plus",Versao:"1.0 Turbo Premier Automático",AnoFab:2023,AnoMod:2024,KM:22000,Preco:98990,Cambio:"Automático",Combustivel:"Flex",foto:"https://www.autocerto.com/fotos/3881/0/placeholder.jpg",fotos:[]}
];

function buildCard(v){
  const km=v.KM?v.KM.toLocaleString("pt-BR")+" km":"N/I";
  const preco=v.Preco?"R$ "+v.Preco.toLocaleString("pt-BR"):"Consulte";
  const msg=["Olá! Tenho interesse no veículo:","","🚗 *"+v.Marca+" "+v.Modelo+"*","📋 "+v.Versao,"📅 "+v.AnoFab+"/"+v.AnoMod,"📍 "+km,"⚙️ "+v.Cambio,"💰 "+preco,"🔖 #"+v.CodigoVeiculo,"","Poderia me dar mais informações?"].join("\n");
  return`<div class="card" onclick="handleCard(event,${v.CodigoVeiculo})">
    <div class="card-img-wrap">
      <img class="card-img" src="${v.foto||""}" alt="${v.Marca} ${v.Modelo}" loading="lazy" onerror="this.style.opacity='.3'">
      <span class="card-badge">${v.AnoFab}/${v.AnoMod}</span>
      <span class="card-km">${km}</span>
      <div class="card-zoom"><div class="card-zoom-icon"><svg width="16" height="16" fill="none" stroke="white" stroke-width="2" viewBox="0 0 24 24"><circle cx="11" cy="11" r="6"/><line x1="16" y1="16" x2="21" y2="21"/></svg></div></div>
    </div>
    <div class="card-body">
      <div class="card-brand">${v.Marca}</div>
      <div class="card-model">${v.Modelo}</div>
      <div class="card-versao">${v.Versao}</div>
      <div class="card-tags"><span class="card-tag">${v.Cambio||"N/I"}</span><span class="card-tag">${v.Combustivel||"N/I"}</span></div>
    </div>
    <div class="card-footer">
      <div class="card-price">${preco}</div>
      <a href="https://wa.me/${CFG.wpp}?text=${encodeURIComponent(msg.replace(/\\n/g,"\n"))}" target="_blank" class="card-wpp" onclick="event.stopPropagation()">Tenho Interesse</a>
    </div>
  </div>`;
}

function handleCard(e,cod){if(!e.target.closest(".card-wpp"))openModal(cod);}

function openModal(cod){
  const v=veiculoMap[cod];if(!v)return;
  curFotos=(v.fotos&&v.fotos.length)?v.fotos:[v.foto||""];
  curIdx=0;
  document.getElementById("mMainImg").src=curFotos[0];
  document.getElementById("mIdx").textContent=1;
  document.getElementById("mTotal").textContent=curFotos.length;
  document.getElementById("mThumbs").innerHTML=curFotos.map((f,i)=>`<div class="modal-thumb ${i===0?"active":""}" onclick="selThumb(${i})"><img src="${f}" loading="lazy"></div>`).join("");
  document.querySelector("#veiculoModal .prev").style.display=curFotos.length>1?"flex":"none";
  document.querySelector("#veiculoModal .next").style.display=curFotos.length>1?"flex":"none";
  document.getElementById("mAno").textContent=v.AnoFab+"/"+v.AnoMod;
  document.getElementById("mBrand").textContent=v.Marca;
  document.getElementById("mModel").textContent=v.Modelo;
  document.getElementById("mVersao").textContent=v.Versao;
  document.getElementById("mAnoSpec").textContent=v.AnoFab+"/"+v.AnoMod;
  document.getElementById("mKm").textContent=v.KM?v.KM.toLocaleString("pt-BR")+" km":"N/I";
  document.getElementById("mCambio").textContent=v.Cambio||"N/I";
  document.getElementById("mComb").textContent=v.Combustivel||"N/I";
  document.getElementById("mPreco").textContent=v.Preco?"R$ "+v.Preco.toLocaleString("pt-BR"):"Consulte";
  document.getElementById("mCod").textContent="Código #"+v.CodigoVeiculo;
  const msg=["Olá! Tenho interesse no veículo:","","🚗 *"+v.Marca+" "+v.Modelo+"*","📋 "+v.Versao,"📅 "+v.AnoFab+"/"+v.AnoMod,"📍 KM: "+(v.KM?v.KM.toLocaleString("pt-BR")+" km":"N/I"),"💰 "+(v.Preco?"R$ "+v.Preco.toLocaleString("pt-BR"):"Consulte"),"🔖 #"+v.CodigoVeiculo,"","Poderia me dar mais informações?"].join("\n");
  document.getElementById("mWppBtn").href="https://wa.me/"+CFG.wpp+"?text="+encodeURIComponent(msg.replace(/\\n/g,"\n"));
  document.getElementById("veiculoModal").classList.add("open");
  document.body.style.overflow="hidden";
}

function closeModal(){document.getElementById("veiculoModal").classList.remove("open");document.body.style.overflow="";}
function handleOverlayClick(e){if(e.target===document.getElementById("veiculoModal"))closeModal();}
function navPhoto(d){selThumb((curIdx+d+curFotos.length)%curFotos.length);}
function selThumb(i){
  curIdx=i;
  const img=document.getElementById("mMainImg");
  img.classList.add("fading");
  setTimeout(()=>{img.src=curFotos[i];img.classList.remove("fading");},180);
  document.querySelectorAll("#veiculoModal .modal-thumb").forEach((t,j)=>t.classList.toggle("active",j===i));
  document.getElementById("mIdx").textContent=i+1;
}
document.addEventListener("keydown",e=>{
  if(!document.getElementById("veiculoModal").classList.contains("open"))return;
  if(e.key==="Escape")closeModal();
  if(e.key==="ArrowLeft")navPhoto(-1);
  if(e.key==="ArrowRight")navPhoto(1);
});

async function loadDestaques(){
  let v=[];
  try{const r=await fetch(CFG.webhook);const d=await r.json();v=Array.isArray(d)?d:(d.veiculos||[]);}catch(e){}
  if(!v.length)v=DEMO;
  v.forEach(x=>{veiculoMap[x.CodigoVeiculo]=x;});
  document.getElementById("destGrid").innerHTML=v.slice(0,3).map(buildCard).join("");
  if(v[0]&&v[0].foto){document.getElementById("heroBg").style.backgroundImage="url('"+v[0].foto+"')";document.getElementById("heroCar").style.backgroundImage="url('"+v[0].foto+"')";};
}

function enviarSim(){
  const nome=document.getElementById("fNome").value.trim();
  const tel=document.getElementById("fTel").value.trim();
  if(!nome||!tel){alert("Preencha nome e telefone.");return;}
  const linhas=["Olá! Quero simular um financiamento na Nilcar Automóveis:","","👤 *Nome:* "+nome,"📱 *Telefone:* "+tel];
  const cpf=document.getElementById("fCpf").value.trim();
  const nasc=document.getElementById("fNasc").value.trim();
  const v=document.getElementById("fVeiculo").value.trim();
  const r=document.getElementById("fRenda").value;
  const e=document.getElementById("fEntrada").value.trim();
  const t=document.getElementById("fTroca").value;
  const o=document.getElementById("fObs").value.trim();
  if(cpf)linhas.push("🪪 *CPF:* "+cpf);
  if(nasc)linhas.push("🎂 *Nascimento:* "+nasc);
  linhas.push("");
  if(v)linhas.push("🚗 *Veículo de Interesse:* "+v);
  if(r)linhas.push("💼 *Renda Mensal:* "+r);
  if(e)linhas.push("💵 *Valor de Entrada:* "+e);
  linhas.push("🔄 *Possui Troca:* "+t);
  if(o)linhas.push("","📝 *Observações:* "+o);
  window.open("https://wa.me/"+CFG.wpp+"?text="+encodeURIComponent(linhas.join("\n")),"_blank");
}

window.toggleFaq=function(btn){
  const item=btn.parentElement;const isOpen=item.classList.contains("open");
  document.querySelectorAll(".faq-item.open").forEach(i=>i.classList.remove("open"));
  if(!isOpen)item.classList.add("open");
};
window.toggleMenu=function(){document.getElementById("navLinks").classList.toggle("open");};
window.addEventListener("load",()=>{setTimeout(()=>document.getElementById("loader").classList.add("hide"),1300);loadDestaques();});
</script>
</body>
</html>
