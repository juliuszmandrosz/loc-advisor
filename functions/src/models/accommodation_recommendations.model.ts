import {firestore} from "firebase-admin";
import Timestamp = firestore.Timestamp;

export interface AccommodationRequest {
    userId?: string | null;
    destination: string;
    locationPreferences: string[];
    budgetOption: string;
    atmosphereOption: string;
    additionalNotes: string;
    createdAt: Timestamp;
}

export interface AccommodationRecommendationsResponse {
    id: string;
    userId?: string | null;
    requestId: string;
    destination: string;
    destinationLowerCase: string;
    locations: AccommodationRecommendation[];
    additionalNotes: string;
    createdAt: Timestamp;
}

export interface AccommodationRecommendation {
    placeName: string;
    description: string;
    localVibe: string;
    safetyTips: string;
    transportTips: string;
    budgetTips: string;
}
