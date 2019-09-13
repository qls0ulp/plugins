import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';const SET_TIMER_REGX=/^set (?:(.*) )?timer (?:for )?(\d+) (seconds|minutes?|hours?)(?:(?: and)? (?:(?:(\d+) (seconds|minutes?))|(?:(?:a (?:(half)|(quarter))))))?/,PARTIAL_SET_TIMER_REGX=/^set\b(.* )?(timer)?/;var Timer={...PluginBase,niceName:"Timer",languages:{},description:"Tools for setting timers.",version:"2.7.1",match:/.*/,authors:"Miko",commands:[{name:"Set Timer",description:'Shows a notification and speaks "timer elapsed" (audio) after the specified duration.',global:!0,match:{description:'Say "set [timer name (optional)] timer for x seconds/minutes/hours"',fn:transcript=>{let fullMatch=transcript.match(SET_TIMER_REGX);return fullMatch||!PARTIAL_SET_TIMER_REGX.test(transcript)&&void 0}},fn:async(transcript,fullMatch,timerName,quantity,unit,quantity2,unit2,half,quarter)=>{let seconds=Number(quantity);unit.startsWith("minute")?seconds*=60:unit.startsWith("hour")&&(seconds*=3600);let seconds2=Number(quantity2);!isNaN(seconds2)&&seconds2&&(unit2.startsWith("minute")&&(seconds2*=60),seconds+=seconds2),half?unit.startsWith("minute")?seconds+=30:seconds+=1800:quarter&&(unit.startsWith("minute")?seconds+=15:seconds+=900),setTimeout(()=>{let title=`${timerName||""} timer elapsed.`.trimLeft();title=title[0].toUpperCase()+title.slice(1,title.length),chrome.notifications.create({type:"basic",title:title,message:`"${transcript}"`,iconUrl:"assets/icon-timer-48.png",requireInteraction:!0}),chrome.tts.speak(title);},1e3*seconds);}}]};Timer.languages.ru={niceName:"Таймер",description:"Поиск в Google",authors:"Hanna",commands:{"Set Timer":{name:"Установить таймер",description:'Показывает уведомление и говорит "Таймер установлен" после того, как назван промежуток времени.',match:{description:'Скажите "Установить таймер [имя таймера (не обязательно)] на x секунд/минут/часов"',fn:transcript=>{let regxMatch=transcript.match(/^установить (?:(.*) )?таймер (?:на )?(полчаса|полтора часа|(\d+) ?(секунд(?:у|ы)?|минут(?:у|ы)?|час(?:а|ов)?)(?:(?: и)? (?:(?:(\d+) (секунд(?:у|ы)?|минут(?:у|ы)?))))?)/);if(regxMatch){let quarter=null,timerName=regxMatch[1],half=regxMatch[2]&&regxMatch[2].startsWith("пол")?"half":null,quantity=regxMatch[3],unit=regxMatch[4]?regxMatch[4].startsWith("секунд")?"second":regxMatch[4].startsWith("минут")?"minute":"hour":"",quantity2=regxMatch[5],unit2=regxMatch[6]?regxMatch[6].startsWith("секунд")?"second":regxMatch[6].startsWith("минут")?"minute":"hour":"";return [regxMatch[0],timerName,quantity,unit,quantity2,unit2,half,quarter]}if(/^установить (?:(.*) )?(?:таймер)? (?:на )?/.test(transcript))return !1}}}}};

export default Timer;LS-SPLITallPlugins.Timer = (() => { const SET_TIMER_REGX=/^set (?:(.*) )?timer (?:for )?(\d+) (seconds|minutes?|hours?)(?:(?: and)? (?:(?:(\d+) (seconds|minutes?))|(?:(?:a (?:(half)|(quarter))))))?/,PARTIAL_SET_TIMER_REGX=/^set\b(.* )?(timer)?/;var Timer_271_0_matching_cs_resolved = {...PluginBase,commands:{"Set Timer":{match:{en:transcript=>{let fullMatch=transcript.match(SET_TIMER_REGX);return fullMatch||!PARTIAL_SET_TIMER_REGX.test(transcript)&&void 0},ru:transcript=>{let regxMatch=transcript.match(/^установить (?:(.*) )?таймер (?:на )?(полчаса|полтора часа|(\d+) ?(секунд(?:у|ы)?|минут(?:у|ы)?|час(?:а|ов)?)(?:(?: и)? (?:(?:(\d+) (секунд(?:у|ы)?|минут(?:у|ы)?))))?)/);if(regxMatch){let quarter=null,timerName=regxMatch[1],half=regxMatch[2]&&regxMatch[2].startsWith("пол")?"half":null,quantity=regxMatch[3],unit=regxMatch[4]?regxMatch[4].startsWith("секунд")?"second":regxMatch[4].startsWith("минут")?"minute":"hour":"",quantity2=regxMatch[5],unit2=regxMatch[6]?regxMatch[6].startsWith("секунд")?"second":regxMatch[6].startsWith("минут")?"minute":"hour":"";return [regxMatch[0],timerName,quantity,unit,quantity2,unit2,half,quarter]}if(/^установить (?:(.*) )?(?:таймер)? (?:на )?/.test(transcript))return !1}}}}};

return Timer_271_0_matching_cs_resolved;
 })()LS-SPLITallPlugins.Timer = (() => { const SET_TIMER_REGX=/^set (?:(.*) )?timer (?:for )?(\d+) (seconds|minutes?|hours?)(?:(?: and)? (?:(?:(\d+) (seconds|minutes?))|(?:(?:a (?:(half)|(quarter))))))?/,PARTIAL_SET_TIMER_REGX=/^set\b(.* )?(timer)?/;var Timer_271_0_nonmatching_cs_resolved = {...PluginBase,commands:{"Set Timer":{match:{en:transcript=>{let fullMatch=transcript.match(SET_TIMER_REGX);return fullMatch||!PARTIAL_SET_TIMER_REGX.test(transcript)&&void 0},ru:transcript=>{let regxMatch=transcript.match(/^установить (?:(.*) )?таймер (?:на )?(полчаса|полтора часа|(\d+) ?(секунд(?:у|ы)?|минут(?:у|ы)?|час(?:а|ов)?)(?:(?: и)? (?:(?:(\d+) (секунд(?:у|ы)?|минут(?:у|ы)?))))?)/);if(regxMatch){let quarter=null,timerName=regxMatch[1],half=regxMatch[2]&&regxMatch[2].startsWith("пол")?"half":null,quantity=regxMatch[3],unit=regxMatch[4]?regxMatch[4].startsWith("секунд")?"second":regxMatch[4].startsWith("минут")?"minute":"hour":"",quantity2=regxMatch[5],unit2=regxMatch[6]?regxMatch[6].startsWith("секунд")?"second":regxMatch[6].startsWith("минут")?"minute":"hour":"";return [regxMatch[0],timerName,quantity,unit,quantity2,unit2,half,quarter]}if(/^установить (?:(.*) )?(?:таймер)? (?:на )?/.test(transcript))return !1}}}}};

return Timer_271_0_nonmatching_cs_resolved;
 })()