import ../src/nimsimd
import ../src/nimsimd/sse2
import ../src/nimsimd/avx2

# !!! Not working yet !!!

var gradX = [
    1'f32,-1'f32, 1'f32,-1'f32,
    1'f32,-1'f32, 1'f32,-1'f32,
    0'f32, 0'f32, 0'f32, 0'f32]    

var gradY = [    
    1'f32, 1'f32,-1'f32,-1'f32,
    0'f32, 0'f32, 0'f32, 0'f32,
    1'f32,-1'f32, 1'f32,-1'f32]


var gradZ = [    
    0'f32, 0'f32, 0'f32, 0'f32,
    1'f32, 1'f32,-1'f32,-1'f32,
    1'f32, 1'f32,-1'f32,-1'f32]

var perm = [        
    151'i32,160'i32,137'i32,91'i32,90'i32,15'i32,
    131'i32,13'i32,201'i32,95'i32,96'i32,53'i32,194'i32,233'i32,7'i32,225'i32,140'i32,36'i32,103'i32,30'i32,69'i32,142'i32,8'i32,99'i32,37'i32,240'i32,21'i32,10'i32,23'i32,
    190'i32, 6'i32,148'i32,247'i32,120'i32,234'i32,75'i32,0'i32,26'i32,197'i32,62'i32,94'i32,252'i32,219'i32,203'i32,117'i32,35'i32,11'i32,32'i32,57'i32,177'i32,33'i32,
    88'i32,237'i32,149'i32,56'i32,87'i32,174'i32,20'i32,125'i32,136'i32,171'i32,168'i32, 68'i32,175'i32,74'i32,165'i32,71'i32,134'i32,139'i32,48'i32,27'i32,166'i32,
    77'i32,146'i32,158'i32,231'i32,83'i32,111'i32,229'i32,122'i32,60'i32,211'i32,133'i32,230'i32,220'i32,105'i32,92'i32,41'i32,55'i32,46'i32,245'i32,40'i32,244'i32,
    102'i32,143'i32,54'i32, 65'i32,25'i32,63'i32,161'i32, 1'i32,216'i32,80'i32,73'i32,209'i32,76'i32,132'i32,187'i32,208'i32, 89'i32,18'i32,169'i32,200'i32,196'i32,
    135'i32,130'i32,116'i32,188'i32,159'i32,86'i32,164'i32,100'i32,109'i32,198'i32,173'i32,186'i32, 3'i32,64'i32,52'i32,217'i32,226'i32,250'i32,124'i32,123'i32,
    5'i32,202'i32,38'i32,147'i32,118'i32,126'i32,255'i32,82'i32,85'i32,212'i32,207'i32,206'i32,59'i32,227'i32,47'i32,16'i32,58'i32,17'i32,182'i32,189'i32,28'i32,42'i32,
    223'i32,183'i32,170'i32,213'i32,119'i32,248'i32,152'i32, 2'i32,44'i32,154'i32,163'i32, 70'i32,221'i32,153'i32,101'i32,155'i32,167'i32, 43'i32,172'i32,9'i32,
    129'i32,22'i32,39'i32,253'i32, 19'i32,98'i32,108'i32,110'i32,79'i32,113'i32,224'i32,232'i32,178'i32,185'i32, 112'i32,104'i32,218'i32,246'i32,97'i32,228'i32,
    251'i32,34'i32,242'i32,193'i32,238'i32,210'i32,144'i32,12'i32,191'i32,179'i32,162'i32,241'i32, 81'i32,51'i32,145'i32,235'i32,249'i32,14'i32,239'i32,107'i32,
    49'i32,192'i32,214'i32, 31'i32,181'i32,199'i32,106'i32,157'i32,184'i32, 84'i32,204'i32,176'i32,115'i32,121'i32,50'i32,45'i32,127'i32, 4'i32,150'i32,254'i32,
    138'i32,236'i32,205'i32,93'i32,222'i32,114'i32,67'i32,29'i32,24'i32,72'i32,243'i32,141'i32,128'i32,195'i32,78'i32,66'i32,215'i32,61'i32,156'i32,180'i32,
    151'i32,160'i32,137'i32,91'i32,90'i32,15'i32,
    131'i32,13'i32,201'i32,95'i32,96'i32,53'i32,194'i32,233'i32,7'i32,225'i32,140'i32,36'i32,103'i32,30'i32,69'i32,142'i32,8'i32,99'i32,37'i32,240'i32,21'i32,10'i32,23'i32,
    190'i32, 6'i32,148'i32,247'i32,120'i32,234'i32,75'i32,0'i32,26'i32,197'i32,62'i32,94'i32,252'i32,219'i32,203'i32,117'i32,35'i32,11'i32,32'i32,57'i32,177'i32,33'i32,
    88'i32,237'i32,149'i32,56'i32,87'i32,174'i32,20'i32,125'i32,136'i32,171'i32,168'i32, 68'i32,175'i32,74'i32,165'i32,71'i32,134'i32,139'i32,48'i32,27'i32,166'i32,
    77'i32,146'i32,158'i32,231'i32,83'i32,111'i32,229'i32,122'i32,60'i32,211'i32,133'i32,230'i32,220'i32,105'i32,92'i32,41'i32,55'i32,46'i32,245'i32,40'i32,244'i32,
    102'i32,143'i32,54'i32, 65'i32,25'i32,63'i32,161'i32, 1'i32,216'i32,80'i32,73'i32,209'i32,76'i32,132'i32,187'i32,208'i32, 89'i32,18'i32,169'i32,200'i32,196'i32,
    135'i32,130'i32,116'i32,188'i32,159'i32,86'i32,164'i32,100'i32,109'i32,198'i32,173'i32,186'i32, 3'i32,64'i32,52'i32,217'i32,226'i32,250'i32,124'i32,123'i32,
    5'i32,202'i32,38'i32,147'i32,118'i32,126'i32,255'i32,82'i32,85'i32,212'i32,207'i32,206'i32,59'i32,227'i32,47'i32,16'i32,58'i32,17'i32,182'i32,189'i32,28'i32,42'i32,
    223'i32,183'i32,170'i32,213'i32,119'i32,248'i32,152'i32, 2'i32,44'i32,154'i32,163'i32, 70'i32,221'i32,153'i32,101'i32,155'i32,167'i32, 43'i32,172'i32,9'i32,
    129'i32,22'i32,39'i32,253'i32, 19'i32,98'i32,108'i32,110'i32,79'i32,113'i32,224'i32,232'i32,178'i32,185'i32, 112'i32,104'i32,218'i32,246'i32,97'i32,228'i32,
    251'i32,34'i32,242'i32,193'i32,238'i32,210'i32,144'i32,12'i32,191'i32,179'i32,162'i32,241'i32, 81'i32,51'i32,145'i32,235'i32,249'i32,14'i32,239'i32,107'i32,
    49'i32,192'i32,214'i32, 31'i32,181'i32,199'i32,106'i32,157'i32,184'i32, 84'i32,204'i32,176'i32,115'i32,121'i32,50'i32,45'i32,127'i32, 4'i32,150'i32,254'i32,
    138'i32,236'i32,205'i32,93'i32,222'i32,114'i32,67'i32,29'i32,24'i32,72'i32,243'i32,141'i32,128'i32,195'i32,78'i32,66'i32,215'i32,61'i32,156'i32,180'i32]

var permMOD12 = [        
    7'i32, 4'i32, 5'i32, 7'i32, 6'i32, 3'i32, 11'i32, 1'i32, 9'i32, 11'i32, 0'i32, 5'i32, 2'i32, 5'i32, 7'i32, 9'i32, 8'i32, 0'i32, 7'i32, 6'i32, 9'i32, 10'i32, 8'i32, 3'i32,
    1'i32, 0'i32, 9'i32, 10'i32, 11'i32, 10'i32, 6'i32, 4'i32, 7'i32, 0'i32, 6'i32, 3'i32, 0'i32, 2'i32, 5'i32, 2'i32, 10'i32, 0'i32, 3'i32, 11'i32, 9'i32, 11'i32, 11'i32,
    8'i32, 9'i32, 9'i32, 9'i32, 4'i32, 9'i32, 5'i32, 8'i32, 3'i32, 6'i32, 8'i32, 5'i32, 4'i32, 3'i32, 0'i32, 8'i32, 7'i32, 2'i32, 9'i32, 11'i32, 2'i32, 7'i32, 0'i32, 3'i32, 10'i32,
    5'i32, 2'i32, 2'i32, 3'i32, 11'i32, 3'i32, 1'i32, 2'i32, 0'i32, 7'i32, 1'i32, 2'i32, 4'i32, 9'i32, 8'i32, 5'i32, 7'i32, 10'i32, 5'i32, 4'i32, 4'i32, 6'i32, 11'i32, 6'i32,
    5'i32, 1'i32, 3'i32, 5'i32, 1'i32, 0'i32, 8'i32, 1'i32, 5'i32, 4'i32, 0'i32, 7'i32, 4'i32, 5'i32, 6'i32, 1'i32, 8'i32, 4'i32, 3'i32, 10'i32, 8'i32, 8'i32, 3'i32, 2'i32, 8'i32,
    4'i32, 1'i32, 6'i32, 5'i32, 6'i32, 3'i32, 4'i32, 4'i32, 1'i32, 10'i32, 10'i32, 4'i32, 3'i32, 5'i32, 10'i32, 2'i32, 3'i32, 10'i32, 6'i32, 3'i32, 10'i32, 1'i32, 8'i32, 3'i32,
    2'i32, 11'i32, 11'i32, 11'i32, 4'i32, 10'i32, 5'i32, 2'i32, 9'i32, 4'i32, 6'i32, 7'i32, 3'i32, 2'i32, 9'i32, 11'i32, 8'i32, 8'i32, 2'i32, 8'i32, 10'i32, 7'i32, 10'i32, 5'i32,
    9'i32, 5'i32, 11'i32, 11'i32, 7'i32, 4'i32, 9'i32, 9'i32, 10'i32, 3'i32, 1'i32, 7'i32, 2'i32, 0'i32, 2'i32, 7'i32, 5'i32, 8'i32, 4'i32, 10'i32, 5'i32, 4'i32, 8'i32, 2'i32, 6'i32,
    1'i32, 0'i32, 11'i32, 10'i32, 2'i32, 1'i32, 10'i32, 6'i32, 0'i32, 0'i32, 11'i32, 11'i32, 6'i32, 1'i32, 9'i32, 3'i32, 1'i32, 7'i32, 9'i32, 2'i32, 11'i32, 11'i32, 1'i32, 0'i32,
    10'i32, 7'i32, 1'i32, 7'i32, 10'i32, 1'i32, 4'i32, 0'i32, 0'i32, 8'i32, 7'i32, 1'i32, 2'i32, 9'i32, 7'i32, 4'i32, 6'i32, 2'i32, 6'i32, 8'i32, 1'i32, 9'i32, 6'i32, 6'i32, 7'i32, 5'i32,
    0'i32, 0'i32, 3'i32, 9'i32, 8'i32, 3'i32, 6'i32, 6'i32, 11'i32, 1'i32, 0'i32, 0'i32,
    7'i32, 4'i32, 5'i32, 7'i32, 6'i32, 3'i32, 11'i32, 1'i32, 9'i32, 11'i32, 0'i32, 5'i32, 2'i32, 5'i32, 7'i32, 9'i32, 8'i32, 0'i32, 7'i32, 6'i32, 9'i32, 10'i32, 8'i32, 3'i32,
    1'i32, 0'i32, 9'i32, 10'i32, 11'i32, 10'i32, 6'i32, 4'i32, 7'i32, 0'i32, 6'i32, 3'i32, 0'i32, 2'i32, 5'i32, 2'i32, 10'i32, 0'i32, 3'i32, 11'i32, 9'i32, 11'i32, 11'i32,
    8'i32, 9'i32, 9'i32, 9'i32, 4'i32, 9'i32, 5'i32, 8'i32, 3'i32, 6'i32, 8'i32, 5'i32, 4'i32, 3'i32, 0'i32, 8'i32, 7'i32, 2'i32, 9'i32, 11'i32, 2'i32, 7'i32, 0'i32, 3'i32, 10'i32,
    5'i32, 2'i32, 2'i32, 3'i32, 11'i32, 3'i32, 1'i32, 2'i32, 0'i32, 7'i32, 1'i32, 2'i32, 4'i32, 9'i32, 8'i32, 5'i32, 7'i32, 10'i32, 5'i32, 4'i32, 4'i32, 6'i32, 11'i32, 6'i32,
    5'i32, 1'i32, 3'i32, 5'i32, 1'i32, 0'i32, 8'i32, 1'i32, 5'i32, 4'i32, 0'i32, 7'i32, 4'i32, 5'i32, 6'i32, 1'i32, 8'i32, 4'i32, 3'i32, 10'i32, 8'i32, 8'i32, 3'i32, 2'i32, 8'i32,
    4'i32, 1'i32, 6'i32, 5'i32, 6'i32, 3'i32, 4'i32, 4'i32, 1'i32, 10'i32, 10'i32, 4'i32, 3'i32, 5'i32, 10'i32, 2'i32, 3'i32, 10'i32, 6'i32, 3'i32, 10'i32, 1'i32, 8'i32, 3'i32,
    2'i32, 11'i32, 11'i32, 11'i32, 4'i32, 10'i32, 5'i32, 2'i32, 9'i32, 4'i32, 6'i32, 7'i32, 3'i32, 2'i32, 9'i32, 11'i32, 8'i32, 8'i32, 2'i32, 8'i32, 10'i32, 7'i32, 10'i32, 5'i32,
    9'i32, 5'i32, 11'i32, 11'i32, 7'i32, 4'i32, 9'i32, 9'i32, 10'i32, 3'i32, 1'i32, 7'i32, 2'i32, 0'i32, 2'i32, 7'i32, 5'i32, 8'i32, 4'i32, 10'i32, 5'i32, 4'i32, 8'i32, 2'i32, 6'i32,
    1'i32, 0'i32, 11'i32, 10'i32, 2'i32, 1'i32, 10'i32, 6'i32, 0'i32, 0'i32, 11'i32, 11'i32, 6'i32, 1'i32, 9'i32, 3'i32, 1'i32, 7'i32, 9'i32, 2'i32, 11'i32, 11'i32, 1'i32, 0'i32,
    10'i32, 7'i32, 1'i32, 7'i32, 10'i32, 1'i32, 4'i32, 0'i32, 0'i32, 8'i32, 7'i32, 1'i32, 2'i32, 9'i32, 7'i32, 4'i32, 6'i32, 2'i32, 6'i32, 8'i32, 1'i32, 9'i32, 6'i32, 6'i32, 7'i32, 5'i32,
    0'i32, 0'i32, 3'i32, 9'i32, 8'i32, 3'i32, 6'i32, 6'i32, 11'i32, 1'i32, 0'i32, 0'i32
]

SIMD:
    let F3 = simd.set1_ps(1.0'f32/3.0'f32)    
    let G3 = simd.set1_ps(1.0'f32 / 6.0'f32)
    let G32 = simd.set1_ps((1.0'f32 / 6.0'f32) * 2.0'f32)
    let G33 = simd.set1_ps((1.0'f32 / 6.0'f32) * 3.0'f32)
    let ONE = simd.set1_epi32(1)
    let FF = simd.set1_epi32(0xff)
    let ONEF = simd.set1_ps(1.0'f32)
    let PSIX = simd.set1_ps(0.6'f32)
    let ZERO = simd.set1_ps(0'f32)
    let THIRTY_TWO = simd.set1_ps(32.0'f32)

    proc dotSIMD(x1,y1,z1,x2,y2,z2: var simd.mf32) : simd.mf32 =         
        let xx = simd.mul_ps(x1, x2)
        let yy = simd.mul_ps(y1, y2)
        let zz = simd.mul_ps(z1, z2)           
        return simd.add_ps(xx,simd.add_ps(yy,zz))
        
                                                                
    proc simplexNoise(x,y,z: var simd.mf32) : simd.mf32 = 
        echo "a"
        let s = simd.mul_ps(F3,simd.add_ps(x,simd.add_ps(y,z)))
        let i = simd.floor_ps_epi32(simd.add_ps(x,s))
        let j = simd.floor_ps_epi32(simd.add_ps(y,s))
        let k = simd.floor_ps_epi32(simd.add_ps(z,s))
     
        echo "b"
        let t = simd.mul_ps(simd.cvtepi32_ps(simd.add_epi32(i,simd.add_epi32(j,k))),G3)
        let X0 = simd.sub_ps(simd.cvtepi32_ps(i),t)
        let Y0 = simd.sub_ps(simd.cvtepi32_ps(j),t)
        let Z0 = simd.sub_ps(simd.cvtepi32_ps(k),t)
        var x0 = simd.sub_ps(x,X0)
        var y0 = simd.sub_ps(y,Y0)
        var z0 = simd.sub_ps(z,Z0) 

        echo "b"
        let i1 = simd.and_si(ONE,simd.and_si(simd.castps_si(simd.cmpge_ps(x0,y0)),simd.castps_si(simd.cmpge_ps(x0,z0))))
        let j1 = simd.and_si(ONE,simd.and_si(simd.castps_si(simd.cmpgt_ps(y0,x0)),simd.castps_si(simd.cmpgt_ps(y0,z0))))
        let k1 = simd.and_si(ONE,simd.and_si(simd.castps_si(simd.cmpgt_ps(z0,x0)),simd.castps_si(simd.cmpgt_ps(z0,y0))))

        echo "c"
        let yx_xz = simd.and_si(simd.castps_si(simd.cmpge_ps(x0,y0)),simd.castps_si(simd.cmplt_ps(x0,z0)))
        let zx_xy = simd.and_si(simd.castps_si(simd.cmpge_ps(x0,z0)),simd.castps_si(simd.cmplt_ps(x0,y0)))

        let xy_yz = simd.and_si(simd.castps_si(simd.cmplt_ps(x0,y0)),simd.castps_si(simd.cmplt_ps(y0,z0)))
        let zy_yx = simd.and_si(simd.castps_si(simd.cmpge_ps(y0,z0)),simd.castps_si(simd.cmpge_ps(x0,y0)))

        let yz_zx = simd.and_si(simd.castps_si(simd.cmplt_ps(y0,z0)),simd.castps_si(simd.cmpge_ps(x0,z0)))
        let xz_zy = simd.and_si(simd.castps_si(simd.cmplt_ps(x0,z0)),simd.castps_si(simd.cmpge_ps(y0,z0)))

        let i2 = simd.and_si(ONE,simd.or_si(i1,simd.or_si(yx_xz,zx_xy)))
        let j2 = simd.and_si(ONE,simd.or_si(j1,simd.or_si(xy_yz,zy_yx)))
        let k2 = simd.and_si(ONE,simd.or_si(k1,simd.or_si(yz_zx,xz_zy)))

        var x1 = simd.add_ps(simd.sub_ps(x0,simd.cvtepi32_ps(i1)),G3)
        var y1 = simd.add_ps(simd.sub_ps(y0,simd.cvtepi32_ps(j1)),G3)
        var z1 = simd.add_ps(simd.sub_ps(z0,simd.cvtepi32_ps(k1)),G3)
        var x2 = simd.add_ps(simd.sub_ps(x0,simd.cvtepi32_ps(i2)),G32)
        var y2 = simd.add_ps(simd.sub_ps(y0,simd.cvtepi32_ps(j2)),G32)
        var z2 = simd.add_ps(simd.sub_ps(z0,simd.cvtepi32_ps(k2)),G32)
        var x3 = simd.add_ps(simd.sub_ps(x0,ONEF),G33)
        var y3 = simd.add_ps(simd.sub_ps(y0,ONEF),G33)
        var z3 = simd.add_ps(simd.sub_ps(z0,ONEF),G33)

        let ii = simd.and_si(i,FF)
        let jj = simd.and_si(j,FF)
        let kk = simd.and_si(k,FF) 
         
        let pkk = simd.i32gather_epi32(perm[0].unsafeAddr,kk,4)
        let pkkk1 = simd.i32gather_epi32(perm[0].unsafeAddr,simd.add_epi32(kk,k1),4)
        let pkkk2 = simd.i32gather_Epi32(perm[0].unsafeAddr,simd.add_epi32(kk,k2),4)
        let pkk1 = simd.i32gather_epi32(perm[0].unsafeAddr,simd.add_epi32(kk,ONE),4)

        let pjj = simd.i32gather_epi32(perm[0].unsafeAddr,simd.add_epi32(jj,pkk),4)
        let pjjj1 = simd.i32gather_epi32(perm[0].unsafeAddr,simd.add_epi32(jj,simd.add_epi32(j1,pkkk1)),4)
        let pjjj2 = simd.i32gather_epi32(perm[0].unsafeAddr,simd.add_epi32(jj,simd.add_epi32(j2,pkkk2)),4)
        let pjj1 = simd.i32gather_epi32(perm[0].unsafeAddr,simd.add_epi32(jj,simd.add_epi32(ONE,pkk1)),4)

        let gi0 = simd.i32gather_epi32(permMOD12[0].unsafeAddr,simd.add_epi32(ii,pjj),4)
        let gi1 = simd.i32gather_epi32(permMOD12[0].unsafeAddr,simd.add_epi32(i1,simd.add_epi32(ii,pjjj1)),4)
        let gi2 = simd.i32gather_epi32(permMOD12[0].unsafeAddr,simd.add_epi32(i2,simd.add_epi32(ii,pjjj2)),4)
        let gi3 = simd.i32gather_epi32(permMOD12[0].unsafeAddr,simd.add_epi32(ONE,simd.add_epi32(ii,pjj1)),4)

        var gi0x = simd.i32gather_ps(gradX[0].unsafeAddr,gi0,4)
        var gi0y = simd.i32gather_ps(gradY[0].unsafeAddr,gi0,4)
        var gi0z = simd.i32gather_ps(gradZ[0].unsafeAddr,gi0,4)

        var gi1x = simd.i32gather_ps(gradX[0].unsafeAddr,gi1,4)
        var gi1y = simd.i32gather_ps(gradY[0].unsafeAddr,gi1,4)
        var gi1z = simd.i32gather_ps(gradZ[0].unsafeAddr,gi1,4)

        var gi2x = simd.i32gather_ps(gradX[0].unsafeAddr,gi2,4)
        var gi2y = simd.i32gather_ps(gradY[0].unsafeAddr,gi2,4)
        var gi2z = simd.i32gather_ps(gradZ[0].unsafeAddr,gi2,4)

        var gi3x = simd.i32gather_ps(gradX[0].unsafeAddr,gi3,4)
        var gi3y = simd.i32gather_ps(gradY[0].unsafeAddr,gi3,4)
        var gi3z = simd.i32gather_ps(gradZ[0].unsafeAddr,gi3,4)

        let t0 = simd.sub_ps(simd.sub_ps(simd.sub_ps(PSIX,simd.mul_ps(x0,x0)),simd.mul_ps(y0,y0)),simd.mul_ps(z0,z0))
        let t1 = simd.sub_ps(simd.sub_ps(simd.sub_ps(PSIX,simd.mul_ps(x1,x1)),simd.mul_ps(y1,y1)),simd.mul_ps(z1,z1))
        let t2 = simd.sub_ps(simd.sub_ps(simd.sub_ps(PSIX,simd.mul_ps(x2,x2)),simd.mul_ps(y2,y2)),simd.mul_ps(z2,z2))
        let t3 = simd.sub_ps(simd.sub_ps(simd.sub_ps(PSIX,simd.mul_ps(x3,x3)),simd.mul_ps(y3,y3)),simd.mul_ps(z3,z3))

        var t0q = simd.mul_ps(t0,t0)
        t0q = simd.mul_ps(t0q,t0q)
        var t1q = simd.mul_ps(t1,t1)
        t1q = simd.mul_ps(t1q,t1q) 
        var t2q = simd.mul_ps(t2,t2)
        t2q = simd.mul_ps(t2q,t2q)
        var t3q = simd.mul_ps(t3,t3)
        t3q = simd.mul_ps(t3q,t3q)

        echo "test"
        var xxx = dotSIMD(gi0x,gi0y,gi0z,x0,y0,z0)
        echo "end test"
        var n0 = simd.mul_ps(t0q,dotSIMD(gi0x,gi0y,gi0z,x0,y0,z0))
        var n1 = simd.mul_ps(t1q,dotSIMD(gi1x,gi1y,gi1z,x1,y1,z1))
        var n2 = simd.mul_ps(t2q,dotSIMD(gi2x,gi2y,gi2z,x2,y2,z2))
        var n3 = simd.mul_ps(t3q,dotSIMD(gi3x,gi3y,gi3z,x3,y3,z3))

        var cond = simd.cmplt_ps(t0,ZERO)
        n0 = simd.blendv_ps(n0,ZERO,cond)  
        cond = simd.cmplt_ps(t1,ZERO)
        n1 = simd.blendv_ps(n1,ZERO,cond)
        cond = simd.cmplt_ps(t2,ZERO)
        n2 = simd.blendv_ps(n2,ZERO,cond)
        cond = simd.cmplt_ps(t3,ZERO)
        n3 = simd.blendv_ps(n3,ZERO,cond)
        echo "z"
        return simd.mul_ps(THIRTY_TWO,simd.add_ps(n0,simd.add_ps(n1,simd.add_ps(n2,n3))))

    
              
