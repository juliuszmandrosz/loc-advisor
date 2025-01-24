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
    userId?: string | null;
    accommodationRequestId: string;
    destination: string;
    locations: AccommodationRecommendation[];
    additionalNotes: string;
    createdAt: Timestamp;
}

export interface AccommodationRecommendation {
    placeName: string;
    description: string;
    localVibe: string;
    imageUrl: string;
    safetyTips: string;
    transportTips: string;
    budgetTips: string;
}
