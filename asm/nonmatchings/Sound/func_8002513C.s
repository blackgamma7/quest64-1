glabel func_8002513C
/* 25D3C 8002513C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 25D40 80025140 AFBF0024 */  sw         $ra, 0x24($sp)
/* 25D44 80025144 AFB00020 */  sw         $s0, 0x20($sp)
/* 25D48 80025148 AFA40028 */  sw         $a0, 0x28($sp)
/* 25D4C 8002514C AFA5002C */  sw         $a1, 0x2c($sp)
/* 25D50 80025150 AFA60030 */  sw         $a2, 0x30($sp)
/* 25D54 80025154 AFA70034 */  sw         $a3, 0x34($sp)
/* 25D58 80025158 3C068009 */  lui        $a2, %hi(D_8008F240)
/* 25D5C 8002515C 340E8000 */  ori        $t6, $zero, 0x8000
/* 25D60 80025160 AFAE0010 */  sw         $t6, 0x10($sp)
/* 25D64 80025164 24C6F240 */  addiu      $a2, $a2, %lo(D_8008F240)
/* 25D68 80025168 00002025 */  or         $a0, $zero, $zero
/* 25D6C 8002516C 00002825 */  or         $a1, $zero, $zero
/* 25D70 80025170 0C00D998 */  jal        alHeapDBAlloc
/* 25D74 80025174 24070001 */   addiu     $a3, $zero, 1
/* 25D78 80025178 3C108009 */  lui        $s0, %hi(MIDISeqConfig)
/* 25D7C 8002517C 2610F978 */  addiu      $s0, $s0, %lo(MIDISeqConfig)
/* 25D80 80025180 3C068009 */  lui        $a2, %hi(D_8008F240)
/* 25D84 80025184 340F8000 */  ori        $t7, $zero, 0x8000
/* 25D88 80025188 AE020190 */  sw         $v0, 0x190($s0)
/* 25D8C 8002518C AFAF0010 */  sw         $t7, 0x10($sp)
/* 25D90 80025190 24C6F240 */  addiu      $a2, $a2, %lo(D_8008F240)
/* 25D94 80025194 00002025 */  or         $a0, $zero, $zero
/* 25D98 80025198 00002825 */  or         $a1, $zero, $zero
/* 25D9C 8002519C 0C00D998 */  jal        alHeapDBAlloc
/* 25DA0 800251A0 24070001 */   addiu     $a3, $zero, 1
/* 25DA4 800251A4 3C198009 */  lui        $t9, %hi(D_8008F240)
/* 25DA8 800251A8 24030040 */  addiu      $v1, $zero, 0x40
/* 25DAC 800251AC 24180010 */  addiu      $t8, $zero, 0x10
/* 25DB0 800251B0 2739F240 */  addiu      $t9, $t9, %lo(D_8008F240)
/* 25DB4 800251B4 3C048009 */  lui        $a0, 0x8009
/* 25DB8 800251B8 AE02032C */  sw         $v0, 0x32c($s0)
/* 25DBC 800251BC AE030000 */  sw         $v1, ($s0)
/* 25DC0 800251C0 AE030004 */  sw         $v1, 4($s0)
/* 25DC4 800251C4 A2180008 */  sb         $t8, 8($s0)
/* 25DC8 800251C8 AE19000C */  sw         $t9, 0xc($s0)
/* 25DCC 800251CC AE000010 */  sw         $zero, 0x10($s0)
/* 25DD0 800251D0 AE000014 */  sw         $zero, 0x14($s0)
/* 25DD4 800251D4 AE000018 */  sw         $zero, 0x18($s0)
/* 25DD8 800251D8 A2000009 */  sb         $zero, 9($s0)
/* 25DDC 800251DC 2484F994 */  addiu      $a0, $a0, -0x66c
/* 25DE0 800251E0 0C00E064 */  jal        alCSPNew
/* 25DE4 800251E4 02002825 */   or        $a1, $s0, $zero
/* 25DE8 800251E8 3C098009 */  lui        $t1, %hi(D_8008F240)
/* 25DEC 800251EC 24030040 */  addiu      $v1, $zero, 0x40
/* 25DF0 800251F0 24080010 */  addiu      $t0, $zero, 0x10
/* 25DF4 800251F4 2529F240 */  addiu      $t1, $t1, %lo(D_8008F240)
/* 25DF8 800251F8 3C048009 */  lui        $a0, 0x8009
/* 25DFC 800251FC 3C058009 */  lui        $a1, 0x8009
/* 25E00 80025200 AE03019C */  sw         $v1, 0x19c($s0)
/* 25E04 80025204 AE0301A0 */  sw         $v1, 0x1a0($s0)
/* 25E08 80025208 A20801A4 */  sb         $t0, 0x1a4($s0)
/* 25E0C 8002520C AE0901A8 */  sw         $t1, 0x1a8($s0)
/* 25E10 80025210 AE0001AC */  sw         $zero, 0x1ac($s0)
/* 25E14 80025214 AE0001B0 */  sw         $zero, 0x1b0($s0)
/* 25E18 80025218 AE0001B4 */  sw         $zero, 0x1b4($s0)
/* 25E1C 8002521C A20001A5 */  sb         $zero, 0x1a5($s0)
/* 25E20 80025220 24A5FB14 */  addiu      $a1, $a1, -0x4ec
/* 25E24 80025224 0C00E064 */  jal        alCSPNew
/* 25E28 80025228 2484FB30 */   addiu     $a0, $a0, -0x4d0
/* 25E2C 8002522C 0C009410 */  jal        func_80025040
/* 25E30 80025230 8FA40030 */   lw        $a0, 0x30($sp)
/* 25E34 80025234 3C048005 */  lui        $a0, %hi(D_800538F0)
/* 25E38 80025238 8C8438F0 */  lw         $a0, %lo(D_800538F0)($a0)
/* 25E3C 8002523C 0C00E142 */  jal        alSeqFileNew
/* 25E40 80025240 8FA50030 */   lw        $a1, 0x30($sp)
/* 25E44 80025244 8FAA002C */  lw         $t2, 0x2c($sp)
/* 25E48 80025248 8FAB0028 */  lw         $t3, 0x28($sp)
/* 25E4C 8002524C 3C068009 */  lui        $a2, %hi(D_8008F240)
/* 25E50 80025250 24C6F240 */  addiu      $a2, $a2, %lo(D_8008F240)
/* 25E54 80025254 014B8023 */  subu       $s0, $t2, $t3
/* 25E58 80025258 AFB00010 */  sw         $s0, 0x10($sp)
/* 25E5C 8002525C 00002025 */  or         $a0, $zero, $zero
/* 25E60 80025260 00002825 */  or         $a1, $zero, $zero
/* 25E64 80025264 0C00D998 */  jal        alHeapDBAlloc
/* 25E68 80025268 24070001 */   addiu     $a3, $zero, 1
/* 25E6C 8002526C 3C038005 */  lui        $v1, %hi(ALBankFileA)
/* 25E70 80025270 246338E8 */  addiu      $v1, $v1, %lo(ALBankFileA)
/* 25E74 80025274 AC620000 */  sw         $v0, ($v1)
/* 25E78 80025278 8FA40028 */  lw         $a0, 0x28($sp)
/* 25E7C 8002527C 00402825 */  or         $a1, $v0, $zero
/* 25E80 80025280 0C0091A4 */  jal        func_80024690
/* 25E84 80025284 02003025 */   or        $a2, $s0, $zero
/* 25E88 80025288 3C048005 */  lui        $a0, %hi(ALBankFileA)
/* 25E8C 8002528C 8C8438E8 */  lw         $a0, %lo(ALBankFileA)($a0)
/* 25E90 80025290 0C00E101 */  jal        alBnkfNew
/* 25E94 80025294 8FA50038 */   lw        $a1, 0x38($sp)
/* 25E98 80025298 3C0C8005 */  lui        $t4, %hi(ALBankFileA)
/* 25E9C 8002529C 8D8C38E8 */  lw         $t4, %lo(ALBankFileA)($t4)
/* 25EA0 800252A0 3C048009 */  lui        $a0, %hi(seqpState)
/* 25EA4 800252A4 2484F994 */  addiu      $a0, $a0, %lo(seqpState)
/* 25EA8 800252A8 8D900004 */  lw         $s0, 4($t4)
/* 25EAC 800252AC 0C00E154 */  jal        alSeqpSetBank
/* 25EB0 800252B0 02002825 */   or        $a1, $s0, $zero
/* 25EB4 800252B4 3C048009 */  lui        $a0, %hi(D_8008FB30)
/* 25EB8 800252B8 2484FB30 */  addiu      $a0, $a0, %lo(D_8008FB30)
/* 25EBC 800252BC 0C00E154 */  jal        alSeqpSetBank
/* 25EC0 800252C0 02002825 */   or        $a1, $s0, $zero
/* 25EC4 800252C4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 25EC8 800252C8 8FB00020 */  lw         $s0, 0x20($sp)
/* 25ECC 800252CC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 25ED0 800252D0 03E00008 */  jr         $ra
/* 25ED4 800252D4 00000000 */   nop
