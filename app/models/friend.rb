class Friend < ApplicationRecord

  belongs_to  :user

  enum favorite_champion: { aatrox: 0, ahri: 1, akali: 2, akshan: 3, alistar: 4, amumu: 5, anivia: 6, annie: 7, aphelios: 8, ashe: 9, aurelion_sol: 10, azir: 11, bard: 12, belveth: 13, blitzcrank: 14, brand: 15, braum: 16,
                            caitlyn: 17, camille: 18, cassiopea: 19, chogath: 20, corki: 21, darius: 22, diana: 23, dr_mundo: 24, draven: 25, ekko: 26, elise: 27, evelynn: 28, ezreal: 29, fiddlesticks: 30, fiora: 31, fizz: 32,
                            galio: 33, gangplank: 34, garen: 35, gnar: 36, gragas: 37, graves: 38, gwen: 39, hecarim: 40, heimerdinger: 41, illaoi: 42, irellia: 43, ivern: 44, janna: 45, jarvan_iv: 46, jax: 47, jayce: 48, jhin: 49,
                            jinx: 50, kaisa: 51, kalista: 52, karma: 53, karthus: 54, kassadin: 55, katarina: 56, kayle: 57, kayn: 58, kennen: 59, khazix: 60, kindred: 61, kled: 62, kogmaw: 63, leblanc: 64, leesin: 65, leona: 66,
                            lillia: 67, lissandra: 68, lucian: 69, lulu: 70, lux: 71, malphite: 72, malzahar: 73, maokai: 74, master_yi: 75, miss_fortune: 76, mordekaiser: 77, morgana: 78, nami: 79, nasus: 80, nautilus: 81, neeko: 82,
                            nidalee: 83, nocturne: 84, nunu: 85, olaf: 86, orianna: 87, ornn: 88, pantheon: 89, poppy: 90, pyke: 91, qiyana: 92, quinn: 93, rakan: 94, rammus: 95, reksai: 96, rell: 97, renata_glasc: 98, renekton: 99,
                            rengar: 100, riven: 101, rumble: 102, ryze: 103, samira: 104, sejuani: 105, senna: 106, seraphine: 107, sett: 108, shaco: 109, shen: 110, shyvana: 111, singed: 112, sion: 113, sivir: 114, skarner: 115,
                            sona: 116, soraka: 117, swain: 118, sylas: 119, syndra: 120, tahm_kench: 121, taliyah: 122, talon: 123, taric: 124, teemo: 125, thresh: 126, tristana: 127, trundle: 128, tryndamere: 129, twisted_fate: 130,
                            twitch: 131, udyr: 132, urgot: 133, varus: 134, vayne: 135, veiger: 136, velkoz: 137, vex: 138, vi: 139, viego: 140, viktor: 141, vladmir: 142, volibear: 143, warwick: 144, wukong: 145, xayah: 146, xerath: 147,
                            xin_zhao: 148, yasuo: 149, yone: 150, yorick: 151, yuumi: 152, zac: 153, zed: 154, zeri: 155, ziggs: 156, zilean: 157, zoe: 158, zyra: 159 }, _prefix: true

  enum favorite_champion2: { aatrox: 0, ahri: 1, akali: 2, akshan: 3, alistar: 4, amumu: 5, anivia: 6, annie: 7, aphelios: 8, ashe: 9, aurelion_sol: 10, azir: 11, bard: 12, belveth: 13, blitzcrank: 14, brand: 15, braum: 16,
                            caitlyn: 17, camille: 18, cassiopea: 19, chogath: 20, corki: 21, darius: 22, diana: 23, dr_mundo: 24, draven: 25, ekko: 26, elise: 27, evelynn: 28, ezreal: 29, fiddlesticks: 30, fiora: 31, fizz: 32,
                            galio: 33, gangplank: 34, garen: 35, gnar: 36, gragas: 37, graves: 38, gwen: 39, hecarim: 40, heimerdinger: 41, illaoi: 42, irellia: 43, ivern: 44, janna: 45, jarvan_iv: 46, jax: 47, jayce: 48, jhin: 49,
                            jinx: 50, kaisa: 51, kalista: 52, karma: 53, karthus: 54, kassadin: 55, katarina: 56, kayle: 57, kayn: 58, kennen: 59, khazix: 60, kindred: 61, kled: 62, kogmaw: 63, leblanc: 64, leesin: 65, leona: 66,
                            lillia: 67, lissandra: 68, lucian: 69, lulu: 70, lux: 71, malphite: 72, malzahar: 73, maokai: 74, master_yi: 75, miss_fortune: 76, mordekaiser: 77, morgana: 78, nami: 79, nasus: 80, nautilus: 81, neeko: 82,
                            nidalee: 83, nocturne: 84, nunu: 85, olaf: 86, orianna: 87, ornn: 88, pantheon: 89, poppy: 90, pyke: 91, qiyana: 92, quinn: 93, rakan: 94, rammus: 95, reksai: 96, rell: 97, renata_glasc: 98, renekton: 99,
                            rengar: 100, riven: 101, rumble: 102, ryze: 103, samira: 104, sejuani: 105, senna: 106, seraphine: 107, sett: 108, shaco: 109, shen: 110, shyvana: 111, singed: 112, sion: 113, sivir: 114, skarner: 115,
                            sona: 116, soraka: 117, swain: 118, sylas: 119, syndra: 120, tahm_kench: 121, taliyah: 122, talon: 123, taric: 124, teemo: 125, thresh: 126, tristana: 127, trundle: 128, tryndamere: 129, twisted_fate: 130,
                            twitch: 131, udyr: 132, urgot: 133, varus: 134, vayne: 135, veiger: 136, velkoz: 137, vex: 138, vi: 139, viego: 140, viktor: 141, vladmir: 142, volibear: 143, warwick: 144, wukong: 145, xayah: 146, xerath: 147,
                            xin_zhao: 148, yasuo: 149, yone: 150, yorick: 151, yuumi: 152, zac: 153, zed: 154, zeri: 155, ziggs: 156, zilean: 157, zoe: 158, zyra: 159 }, _prefix: true

  enum favorite_champion3: { aatrox: 0, ahri: 1, akali: 2, akshan: 3, alistar: 4, amumu: 5, anivia: 6, annie: 7, aphelios: 8, ashe: 9, aurelion_sol: 10, azir: 11, bard: 12, belveth: 13, blitzcrank: 14, brand: 15, braum: 16,
                            caitlyn: 17, camille: 18, cassiopea: 19, chogath: 20, corki: 21, darius: 22, diana: 23, dr_mundo: 24, draven: 25, ekko: 26, elise: 27, evelynn: 28, ezreal: 29, fiddlesticks: 30, fiora: 31, fizz: 32,
                            galio: 33, gangplank: 34, garen: 35, gnar: 36, gragas: 37, graves: 38, gwen: 39, hecarim: 40, heimerdinger: 41, illaoi: 42, irellia: 43, ivern: 44, janna: 45, jarvan_iv: 46, jax: 47, jayce: 48, jhin: 49,
                            jinx: 50, kaisa: 51, kalista: 52, karma: 53, karthus: 54, kassadin: 55, katarina: 56, kayle: 57, kayn: 58, kennen: 59, khazix: 60, kindred: 61, kled: 62, kogmaw: 63, leblanc: 64, leesin: 65, leona: 66,
                            lillia: 67, lissandra: 68, lucian: 69, lulu: 70, lux: 71, malphite: 72, malzahar: 73, maokai: 74, master_yi: 75, miss_fortune: 76, mordekaiser: 77, morgana: 78, nami: 79, nasus: 80, nautilus: 81, neeko: 82,
                            nidalee: 83, nocturne: 84, nunu: 85, olaf: 86, orianna: 87, ornn: 88, pantheon: 89, poppy: 90, pyke: 91, qiyana: 92, quinn: 93, rakan: 94, rammus: 95, reksai: 96, rell: 97, renata_glasc: 98, renekton: 99,
                            rengar: 100, riven: 101, rumble: 102, ryze: 103, samira: 104, sejuani: 105, senna: 106, seraphine: 107, sett: 108, shaco: 109, shen: 110, shyvana: 111, singed: 112, sion: 113, sivir: 114, skarner: 115,
                            sona: 116, soraka: 117, swain: 118, sylas: 119, syndra: 120, tahm_kench: 121, taliyah: 122, talon: 123, taric: 124, teemo: 125, thresh: 126, tristana: 127, trundle: 128, tryndamere: 129, twisted_fate: 130,
                            twitch: 131, udyr: 132, urgot: 133, varus: 134, vayne: 135, veiger: 136, velkoz: 137, vex: 138, vi: 139, viego: 140, viktor: 141, vladmir: 142, volibear: 143, warwick: 144, wukong: 145, xayah: 146, xerath: 147,
                            xin_zhao: 148, yasuo: 149, yone: 150, yorick: 151, yuumi: 152, zac: 153, zed: 154, zeri: 155, ziggs: 156, zilean: 157, zoe: 158, zyra: 159 }, _prefix: true

  enum vc_status: { unavailable: 0, listening_only: 1, available: 2 }, _prefix: true

  enum rank: { unrank: 0, iron: 1, bronze: 2, silver: 3, gold: 4, platinum: 5, diamond: 6, master: 7, grand_master: 8, challenger: 9 }, _prefix: true

  validates :introduction, :active_time, presence: true
  validates :introduction, length: { maximum: 500 }
  validates :twitter, format: { with: /\A[a-zA-Z0-9_@-]+\z/ }

end
