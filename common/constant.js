/*
 * @Author: Rohan Wijesundara
 */
module.exports = {
   

    ENV: 'dev',
    PAGINATION_LIMIT: 20,
    LITTLE_PAGINATION_LIMIT: 10,
    INVOICE_LENGTH : 5,
    VERSION : 0,
    VAT : {
        PERCENTAGE: 0.25,
        TEXT : "25%"
    },
    AUTH: {
        SECRET: "In4567#LYNX@",
        EXPIRE: "5h"
    },
    DEFAULT_LANGUAGE : 'swe',
    NOTIFICATION_PROVIDER: {
        REST_API_KEY: 'Y2QwZjliYmItMmE0ZC00NDBlLThlMmEtZTM3YTA3N2M2NWI0',
        APP_ID: '5d0b9527-5b18-4e33-be92-1143ca778f75',
        DATE_DURATION: 14,
    },
    USER_ROLE: {
        ADMIN: 1,
        COMPANY_ADMIN: 2,
        USER: 3,
    },
    RECORD_STATUS: {
        PENDING : 0,
        ACTIVE  : 1,
        DELETED : -1
    },
    FOLDER : {
        DOCS : '/docs/',
        UPLOADS : '/uploads/',
        RESOURCES : '/resources/',
    },
    CONVERT_API : {
        API_SECRET : 'U5qj2dhZkuwdOnwq',
        FILE_TYPE : 'pdf',
        PAGE_ORIENTATION : 'portrait',
        PAGE_SIZE : 'a4',
        ZOOM :'0.8',
        CONTENT_TYPE : 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    },
    MAIL : {
        smtpAuth: {
            host: "dallas160.arvixeshared.com",
            port: 465,
            auth: {
                user: "invoiceapp@blogx.com",
                pass: "blogx@123"
            }
        },
        FROM : "no-reply@blogx.com",
        LOGO_URL : "",
        WELCOME: {
            SUBJECT : "Invitation email for Blogx App",
            BODY : "Welcome to the Blogx platform",
            ROUTE : "setpassword"
        },
       
    },
    API_MASSAGE : {
        SUCCESS : 'success',
        FAIL: 'fail',
        NOT_FOUND : 'Data Not Found',
        UNAUTHORIZED : 'Unauthorized Data access',
        REQUEST_TIMEOUT : 'Request timeout'
    },
    TIME_ZONE : 'Europe/Stockholm', 
    DEFAULT_EMAIL : 'rohan@crowderia.se',
    CRYPTO : {
        KEY  : 'Dt#957gSuLoSa',
        CODE : 'aes-128-cbc',
        HEX : 'hex',
        UTF8 : 'utf8',
    },
   
    GDPR: '',
}

