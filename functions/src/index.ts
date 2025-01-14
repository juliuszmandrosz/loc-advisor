import OpenAI from "openai";
import {HttpsError, onCall} from "firebase-functions/https";

export const getLocalRecommendations =  onCall(
    {
        region: "europe-central2",
        secrets: ["OPEN_AI_KEY"],
    },
    async (request) => {
        const openai = new OpenAI({
            apiKey: process.env.OPEN_AI_KEY,
        });

        const { location, preferences } = request.data;

        if (!location) {
            throw new HttpsError(
                "invalid-argument",
                "Location is required in the request data."
            );
        }

        const systemPrompt = `
            Jesteś inteligentnym asystentem LocAdvisor, który pomaga użytkownikom odkrywać lokalne doświadczenia z perspektywy mieszkańców.
            Twoje odpowiedzi powinny:
            - Oferować rekomendacje unikalnych miejsc z dala od typowych turystycznych atrakcji,
            - Uwzględniać osiedla lub dzielnice, które mieszkańcy poleciliby na wynajem noclegów (np. Airbnb lub hotel),
            - Zawierać szczegóły dotyczące bezpieczeństwa, atmosfery dzielnicy i dostępności lokalnych atrakcji,
            - Być spersonalizowane w zależności od preferencji użytkownika.
       `;

        const generatePrompt = (location: string, preferences?: string) => {
            return `
                Użytkownik planuje podróż do ${location} i chce wiedzieć, gdzie warto wynająć Airbnb lub hotel z perspektywy mieszkańca.
                ${
                    preferences
                        ? `Preferencje użytkownika to: ${preferences}.`
                        : "brak"
                }

               Podaj rekomendacje:
                - 2-3 osiedla lub dzielnice w ${location}, które są idealne na wynajem noclegów (Airbnb lub hotel),
                - Czym charakteryzuje się każda z tych dzielnic (np. spokojna, artystyczna, pełna życia nocnego, blisko lokalnych restauracji itp.),
                - Lokalne wskazówki dotyczące bezpieczeństwa, transportu i dostępności atrakcji w okolicy.
            `;
        };

        const completion = await openai.chat.completions.create({
            model: "gpt-4o",
            messages: [
                { role: "system", content: systemPrompt },
                {
                    role: "user",
                    content: generatePrompt(location, preferences),
                },
            ],
            temperature: 0.8,
        });

        const response = completion.choices[0].message;

        return {
            location,
            recommendations: response,
        };
});
