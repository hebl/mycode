/**
 * 基本天文常数
 *
 * Author HE Boliang <hebl@hebl.org>
 * Date 2012-09-12
 */

#ifndef _ASTRO_H_
#define _ASTRO_H_

#define M_PI_2          1.5707963267948966192313216916398
#define M_PI_4          0.78539816339744830961566084581988
#define M_PI            3.1415926535897932384626433832795

#define M_PI	3.1415926535897932384626433832795028841971693993751

#define M_2PI	6.2831853071795864769252867665590057683943387987502

#define M_PI_2	0.15915494309189533576888376337251436203445964574046

#define M_4PI	12.566370614359172953850573533118011536788677597500

#define M_PI_4 0.079577471545947667884441881686257181017229822870228

/* pi^2 */
#define DPISQ 9.8696044010893586188344909998761511353136994072408

/* sqrt(pi) */
#define DSQRPI 1.7724538509055160272981674833411451827975494561224

/* pi/2:  90 degrees in radians */
#define DPIBY2 1.5707963267948966192313216916397514420985846996876

/* pi/180:  degrees to radians */
#define M_D2R	0.017453292519943295769236907684886127134428718885417

/* 180/pi:  radians to degrees */
#define M_R2D 57.295779513082320876798154814105170332405472466564

/* pi/(180*3600):  arcseconds to radians */
#define M_AS2R 4.8481368110953599358991410235794797595635330237270e-6

/* 180*3600/pi :  radians to arcseconds */
#define M_R2AS 2.0626480624709635515647335733077861319665970087963e5

/* pi/12:  hours to radians */
#define M_H2R 0.26179938779914943653855361527329190701643078328126

/* 12/pi:  radians to hours */
#define M_R2H 3.8197186342054880584532103209403446888270314977709

/* pi/(12*3600):  seconds of time to radians */
#define M_S2R 7.2722052166430399038487115353692196393452995355905e-5

/* 12*3600/pi:  radians to seconds of time */
#define M_R2S 1.3750987083139757010431557155385240879777313391975e4

/* 15/(2pi):  hours to degrees x radians to turns */
#define M_15B2P 2.3873241463784300365332564505877154305168946861068


#define JD2000          2451545.0
#define JD2050          2469807.50

#define JD1970		2440587.50
#define MJD1970		40587.50

#define B1900           2415020.3135
#define B1950           2433282.4235

#endif
