import OpenAI from "openai";
import {HttpsError, onCall} from "firebase-functions/https";
import {AccommodationRecommendationsResponse, AccommodationRequest} from "./models/accommodation_recommendations.model";
import {ActivityRecommendationsResponse} from "./models/activity_recommendations.model";
import {getFirestore} from "firebase-admin/firestore";
import * as admin from 'firebase-admin'


admin.initializeApp();
const db = getFirestore();

export const getAccommodationRecommendations = onCall(
    {
        region: "europe-central2",
        secrets: ["OPEN_AI_KEY"],
    },
    async (request) => {
        const openai = new OpenAI({apiKey: process.env.OPEN_AI_KEY});
        const accommodationRequest = request.data as AccommodationRequest;
        if (!accommodationRequest.destination) {
            throw new HttpsError("invalid-argument", "Destination is required.");
        }
        const systemPrompt = `
            Jesteś inteligentnym asystentem podróżniczym „LocAdvisor”, skoncentrowanym na autentycznym, lokalnym klimacie danego miejsca. 
            Twoim priorytetem jest zapewnienie użytkownikowi autentycznych, lokalnych doświadczeń, unikając typowych turystycznych pułapek, biorąc pod uwagę 
            następujące wagi preferencji lokalizacyjnych użytkownika:

            Podczas generowania rekomendacji przestrzegaj następujących zasad:
                1. **Spójność preferencji:** Wszystkie rekomendacje muszą spełniać WSZYSTKIE wybrane preferencje użytkownika (np. lokalizacja, atmosfera, budżet).
                2. **Unikaj konfliktów:** Jeśli użytkownik wybiera "tętniące życiem", unikaj rekomendowania miejsc, które są spokojne lub odizolowane (np. Key Biscayne).
                3. **Wagę preferencji lokalizacji:** Jeśli użytkownik wybiera wiele lokalizacji, daj pierwszeństwo priorytetowi "Blisko plaży lub natury".
                4. **Atmosfera:** Dopasuj atmosferę miejsca do preferencji użytkownika. 
                   - "Tętniące życiem" = miejsca z bogatą ofertą wydarzeń, klubów, koncertów.
                   - "Spokojne" = miejsca ciche, relaksujące.
                5. **Autentyczny vibe:** Skup się na lokalnych miejscach, omijając typowe turystyczne atrakcje.
                6. **Bezpieczeństwo:** Podaj szczegółowe wskazówki dotyczące bezpieczeństwa dla każdej lokalizacji.
                7. **Filtry budżetowe:** Dopasuj rekomendacje do zakresu finansowego użytkownika, unikając miejsc zbyt drogich lub zbyt tanich.  

            Jeśli użytkownik wybiera wiele preferencji, połącz je w taki sposób, aby rekomendacje były możliwie najbardziej zrównoważone i dopasowane 
            do oczekiwań. Unikaj typowych pułapek turystycznych, bazuj na wiedzy o miejscach polecanych przez lokalnych mieszkańców. 
            Kładź duży nacisk na bezpieczeństwo – wskaż, jakie zagrożenia mogą wystąpić w danej okolicy oraz zachowania, których lepiej unikać.
            
            Twoje odpowiedzi MUSZĄ:
            - Uwzględniać preferencję „blisko plaży”, jeśli została zaznaczona.
            - Łączyć preferencje „tętniące życiem” z lokalnymi miejscówkami znanymi z życia nocnego.
            - Być zgodne z budżetem i priorytetami użytkownika.
            
            ### Przykład zapytania i odpowiedzi:

            **Zapytanie:**
            Użytkownik planuje wyjazd do: Miami.
            Preferencje użytkownika:
            - Lokalizacja: Blisko plaży lub natury, Blisko centrum, Blisko knajpek i kawiarni.
            - Atmosfera: Spokojne.
            - Budżet: Średnie.
            
            **Idealna odpowiedź:**
            {
              "destination": "Miami",
              "locations": [
                {
                  "placeName": "North Beach",
                  "description": "North Beach to spokojna okolica w Miami, idealna dla osób szukających relaksu blisko plaży. Znajdują się tu lokalne restauracje i kawiarnie oferujące autentyczne smaki.",
                  "localVibe": "Autentyczny klimat Miami, z dala od tłumów South Beach. Popularne wśród lokalnych mieszkańców.",
                  "safetyTips": "Bezpieczna okolica, ale unikaj spacerów w mniej oświetlonych miejscach w nocy.",
                  "budgetTips": "Ceny zakwaterowania są średnie, z dużą liczbą opcji Airbnb. Lokalne restauracje oferują przystępne ceny w porównaniu do turystycznych miejsc w South Beach.",
                  "transportTips": "Najlepiej poruszać się rowerem lub korzystać z usług Uber/Lyft. W okolicy kursują również autobusy miejskie, które łączą North Beach z centrum Miami."
                },
                {
                  "placeName": "Coconut Grove",
                  "description": "Coconut Grove to zielona i spokojna dzielnica Miami, znana z licznych parków, butików i lokalnych restauracji. Idealna dla osób ceniących kontakt z naturą i relaksującą atmosferą.",
                  "localVibe": "Artystyczna atmosfera z domieszką historii. Często organizowane są lokalne festiwale i wydarzenia.",
                  "safetyTips": "Bezpieczna okolica, jednak warto unikać mniej oświetlonych ulic w nocy.",
                  "budgetTips": "Średni przedział cenowy, ale można znaleźć tańsze opcje zakwaterowania, jeśli zarezerwuje się z wyprzedzeniem. Lokalne restauracje oferują happy hours i promocje.",
                  "transportTips": "Dzielnica jest dobrze skomunikowana z centrum Miami przez Metrorail. Warto też korzystać z wypożyczalni rowerów do zwiedzania okolicy."
                }
              ],
              "additionalNotes": "Miami oferuje wiele autentycznych miejsc, ale warto unikać turystycznych pułapek, takich jak Ocean Drive na South Beach."
            }
            
            Twoje odpowiedzi mają być zgodne z powyższymi wagami i preferencjami, a jednocześnie przedstawiać lokalny vibe, 
            autentyczne miejscówki i minimalizować ryzyko „przereklamowanych” atrakcji turystycznych.
        `;
        const userPrompt = `
            Użytkownik planuje wyjazd do: ${accommodationRequest.destination}
            Preferencje użytkownika:
                - Lokalizacja: ${accommodationRequest.locationPreferences.join(", ")}.
                - Atmosfera: ${accommodationRequest.atmosphereOption}.
                - Budżet: ${accommodationRequest.budgetOption}.
                - Dodatkowe uwagi: ${accommodationRequest.additionalNotes}.

            Wygeneruj proszę rekomendacje, gdzie najlepiej zatrzymać się w ${accommodationRequest.destination} zgodnie z powyższymi preferencjami. 
            Podaj szczegółowe wskazówki dotyczące bezpieczeństwa, klimatu okolicy oraz ewentualnych porad, 
            czego unikać, aby nie wpaść w pułapki turystyczne.
            Skup się na autentycznym klimacie lokalnym oraz na unikaniu pułapek turystycznych.
            
            Uwagi do generowania rekomendacji:
                1. Jeśli użytkownik wybrał „Blisko plaży lub natury”, przynajmniej jedna rekomendacja MUSI spełniać tę preferencję.
                2. Unikaj konfliktów preferencji – np. „spokojne” i „tętniące życiem” są wzajemnie wykluczające się.
                3. Wszystkie rekomendacje muszą być zgodne z wybranym budżetem.
                4. Podaj szczegółowe wskazówki bezpieczeństwa oraz informacje o lokalnym klimacie każdej lokalizacji.
                5. Uwzględnij wyłącznie miejsca, które reprezentują autentyczny lokalny vibe.
            
            Na koniec zwróć odpowiedź WYŁĄCZNIE w formacie JSON o strukturze:
              {
                "destination": "string",
                "locations": [
                  {
                    "placeName": "string",
                    "description": "string",
                    "localVibe": "string",
                    "safetyTips": "string",
                    "transportTips": "string",
                    "budgetTips": "string"
                  }
                ],
                "additionalNotes": "string"
              }
        `;

        const completion = await openai.chat.completions.create({
            model: "gpt-4",
            messages: [
                {role: "system", content: systemPrompt},
                {role: "user", content: userPrompt},
            ],
            temperature: 0.7,
        });
        const response = completion.choices[0].message;

        if (!response.content) {
            throw new HttpsError("internal", "Failed to generate response.");
        }

        const recommendations: AccommodationRecommendationsResponse = JSON.parse(response.content);
        const userId = request.auth ? request.auth.uid : null;
        const now = admin.firestore.Timestamp.now();

        accommodationRequest.userId = userId;
        accommodationRequest.createdAt = now;

        recommendations.userId = userId;
        recommendations.createdAt = now;


        const requestDoc = await db
            .collection("accommodation_requests")
            .add({accommodationRequest});

        recommendations.accommodationRequestId = requestDoc.id;

        await db
            .collection("accommodation_recommendations")
            .add({recommendations});

        return recommendations;
    }
);

export const getActivityRecommendations = onCall(
    {
        region: "europe-central2",
        secrets: ["OPEN_AI_KEY"],
    },
    async (request) => {
        const openai = new OpenAI({apiKey: process.env.OPEN_AI_KEY});
        const {
            destination,
            dateOption,
            activityPreferences,
            budgetOption,
            atmosphereOption,
            additionalNotes
        } = request.data;
        if (!destination) {
            throw new HttpsError("invalid-argument", "Destination is required.");
        }
        const systemPrompt = `
            Jesteś inteligentnym asystentem „LocAdvisor”, którego zadaniem jest sugerowanie lokalnych aktywności i atrakcji z uwzględnieniem priorytetów użytkownika. 
            Twoje rekomendacje powinny być maksymalnie dopasowane do podanych preferencji i unikać typowych pułapek turystycznych.

            Podczas generowania rekomendacji przestrzegaj następujących zasad:
                1. Główne preferencje aktywności: np. jedzenie, życie nocne, relaks, ukryte perełki, natura, sport
                2. Termin: „Na dzisiaj” (jeśli aktywności mają być realizowane w ciągu najbliższych kilku–kilkunastu godzin) lub „Na później”
                3. Łączenie aktywności: jeśli użytkownik wybiera kilka jednocześnie (np. „Jedzenie” i „Życie nocne”), 
                   połącz je w spójny plan (np. wizyta w pobliskiej restauracji, a następnie wyjście do klubu w okolicy)
                4. Lokalna perspektywa: unikaj komercyjnych pułapek turystycznych, stawiaj na lokalny klimat
                5. Bezpieczeństwo: zawsze wskaż potencjalne zagrożenia, porady dot. zachowań i godziny funkcjonowania miejsc
                6. Dodatkowe wskazówki: jeśli użytkownik wybiera „Na dzisiaj”, rekomendacje powinny obejmować miejsca aktualnie czynne, 
                   z uwzględnieniem typowych godzin szczytu i zwyczajów lokalnych (np. kluby zaczynają tętnić życiem po północy)
                   
                1. **Główne preferencje aktywności**: Uwzględnij priorytety użytkownika, takie jak jedzenie, życie nocne, relaks, ukryte perełki, natura czy sport.
                2. **Termin**: 
                   - Jeśli użytkownik wybiera „Na dzisiaj”, rekomenduj miejsca aktualnie otwarte, uwzględniając godziny szczytu i lokalne zwyczaje (np. kluby zaczynają tętnić życiem po północy).
                   - Jeśli wybiera „Na później”, wskaż miejsca, które warto zarezerwować lub odwiedzić w konkretnych porach.
                3. **Łączenie aktywności**: Jeśli użytkownik wybiera kilka preferencji jednocześnie (np. „Jedzenie” i „Życie nocne”), połącz je w spójny plan (np. restauracja, potem pub, a na końcu klub w tej samej okolicy).
                4. **Lokalna perspektywa**: Unikaj komercyjnych pułapek turystycznych. Stawiaj na lokalny klimat i rekomendacje popularne wśród mieszkańców.
                5. **Bezpieczeństwo**: Zawsze wskaż potencjalne zagrożenia i praktyczne porady dotyczące zachowania (np. unikaj samotnych spacerów w nocy w określonych dzielnicach).
                6. **Budżet**: Uwzględnij zakres finansowy użytkownika, rekomendując miejsca zgodne z jego budżetem.
                7. **Dodatkowe wskazówki**: Jeśli użytkownik wybiera „Na dzisiaj”, rekomendacje powinny obejmować miejsca aktualnie czynne oraz uwzględniać typowe godziny funkcjonowania i zwyczaje (np. kolacje w restauracjach w danej kulturze zaczynają się później).
            
            Twoje rekomendacje powinny być szczegółowe, a jednocześnie zwięzłe, zawierać:
            - Dokładną nazwę miejsc lub atrakcji,
            - Informację o najlepszej porze na odwiedzenie danego miejsca (np. w przypadku klubów często po północy),
            - Przybliżone lokalizacje/okolicę i wskazówki dotyczące łączenia atrakcji w jeden plan,
            - Porady odnośnie bezpieczeństwa i rozsądnych zachowań (np. w niektórych dzielnicach lepiej nie chodzić samemu w nocy / nie robić tam zdjęć),
            - Pomocne tipy: np. co zamówić w danej knajpie, czy trzeba robić rezerwacje z wyprzedzeniem itp.
            
            Każda rekomendacja musi również zawierać link do zdjęcia, które można użyć do wizualizacji
        `;

        const userPrompt = `
            Użytkownik jest w: ${destination}
            Termin: ${dateOption}
            Preferowane aktywności: ${activityPreferences.join(", ")}
            Budżet: ${budgetOption}
            Atmosfera: ${atmosphereOption}
            Dodatkowe informacje: ${additionalNotes}
            
            Przygotuj rekomendacje ciekawych miejsc i atrakcji w ${destination}, które można połączyć w jeden wypad, uwzględniając:
            - Lokalne wskazówki i autentyczny klimat,
            - Bezpieczeństwo i godziny otwarcia,
            - Możliwość odwiedzenia kilku miejsc w trakcie jednego wyjścia (np. restauracja, potem pub, a na końcu klub),
            - Ewentualne porady dotyczące zachowania i unikania pułapek turystycznych.

            Na koniec zwróć odpowiedź WYŁĄCZNIE w formacie JSON o strukturze:
              {
                "destination": "string",
                "recommendations": [
                  {
                    "placeName": "string",
                    "description": "string",
                    "bestTimeToVisit": "string",
                    "imageUrl": "string",
                    "safetyTips": "string",
                    "combinationTips": "string",
                    "priceRange": "string"
                  }
                ],
                "additionalNotes": "string"
              }
        `;

        const completion = await openai.chat.completions.create({
            model: "gpt-4",
            messages: [
                {role: "system", content: systemPrompt},
                {role: "user", content: userPrompt},
            ],
            temperature: 0.7,
        });

        const response = completion.choices[0].message;

        if (!response.content) {
            throw new HttpsError("internal", "Failed to generate response.");
        }

        const parsedResponse: ActivityRecommendationsResponse = JSON.parse(response.content);

        // for (const recommendation of parsedResponse.recommendations) {
        //     const fileName = `${destination}_${recommendation.placeName.replace(/\s+/g, "_").toLowerCase()}.jpg`;
        //     recommendation.imageUrl = await downloadAndUploadImage(recommendation.imageUrl, fileName);
        // }

        return {recommendations: parsedResponse};
    }
);


// async function downloadAndUploadImage(imageUrl: string, fileName: string): Promise<string> {
//     const response = await axios.get(imageUrl, { responseType: "stream" });
//     const contentType = response.headers["content-type"];
//
//     if (!contentType) {
//         throw new HttpsError("internal", "Content-Type is missing in the response headers.");
//     }
//
//     const bucket = getStorage().bucket();
//     const file = bucket.file(fileName);
//
//     const writeStream = file.createWriteStream({
//         metadata: { contentType },
//     });
//
//     response.data.pipe(writeStream);
//     await finished(writeStream);
//
//     await file.makePublic();
//     return file.publicUrl();
// }
