apk add --no-cache python3 >/dev/null 2>&1; read -p "QED> " P; python3 -c 'import sys,hashlib,math,json,re;P=sys.argv[1];p=P.lower();B="ATGC";dna="".join(B[(b>>s)&3] for b in P.encode() for s in (6,4,2,0));L=len(dna);S=-sum((dna.count(c)/L)*math.log(dna.count(c)/L,2) for c in B if dna.count(c));G=int(hashlib.sha512(dna.encode()).hexdigest(),16);rho=f"1/2+{math.log(G):.12f}i";omega=hashlib.sha256((P+dna+rho).encode()).hexdigest();kind="music" if re.search(r"music|audio|sound|song|wav|mp3|meditation|brainwave",p) else "image" if re.search(r"image|picture|draw|visual|poster|svg|diagram",p) else "text" if re.search(r"poem|essay|readme|article|story|explain|write",p) else "shell";name=f"QED_{kind}_{omega[:12]}.sh";prog={"music":f"""#!/bin/sh
apk add --no-cache python3 >/dev/null 2>&1
python3 - <<PY
import wave,math,struct,hashlib
prompt={P!r}
seed="{omega}"
out="QED_music_{omega[:12]}.wav"
sr=44100; dur=30
base=174+(int(seed[:4],16)%360)
tones=[base,base*1.25,base*1.5,base*2]
with wave.open(out,"w") as w:
    w.setnchannels(1); w.setsampwidth(2); w.setframerate(sr)
    for n in range(sr*dur):
        t=n/sr
        env=min(1,t/4,(dur-t)/4)
        x=sum(math.sin(2*math.pi*f*t) for f in tones)/len(tones)
        x+=0.25*math.sin(2*math.pi*(base/2)*t)
        w.writeframes(struct.pack("<h",int(15000*env*x)))
print(out)
PY
""","image":f"""#!/bin/sh
apk add --no-cache python3 py3-matplotlib >/dev/null 2>&1
python3 - <<PY
import hashlib,math,random
import matplotlib.pyplot as plt
prompt={P!r}
seed=int(hashlib.sha256(prompt.encode()).hexdigest()[:8],16)
random.seed(seed)
out="QED_image_{omega[:12]}.png"
xs=[math.cos(i*.15)*(i/20) for i in range(800)]
ys=[math.sin(i*.15)*(i/20) for i in range(800)]
plt.figure(figsize=(16,9))
plt.plot(xs,ys)
plt.title(prompt)
plt.axis("off")
plt.savefig(out,dpi=160,bbox_inches="tight")
print(out)
PY
""","text":f"""#!/bin/sh
cat > QED_text_{omega[:12]}.md <<'EOF'
# QED Generated Text

Prompt:

{P}

Symbolic State:

- GC: 0.5
- H: 0
- Rho: {rho}
- Omega: {omega}

Generated Result:

This prompt has been encoded as a reproducible symbolic state and expanded into a textual artifact according to the QED principle.
EOF
echo QED_text_{omega[:12]}.md
""","shell":f"""#!/bin/sh
echo QED_STATE={omega}
echo PROMPT={json.dumps(P,ensure_ascii=False)}
echo ACGT_LENGTH={L}
echo ENTROPY={S:.12f}
echo GC=0.5
echo H=0
echo RHO={rho}
echo TERMINAL=SH,QED.
"""}[kind];open(name,"w").write(prog);print(json.dumps({"kernel":"QED_NATURAL_LANGUAGE_PROGRAM_GENERATOR","prompt":P,"intent":kind,"GC":0.5,"H":0,"rho":rho,"omega":omega,"generated_program":name,"principle":"Prompt generates the program corresponding to its natural-language intention."},ensure_ascii=False,separators=(",",":")));print("\n--- GENERATED PROGRAM ---\n"+prog)' "$P"; chmod +x QED_*.sh