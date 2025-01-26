import {firestore} from "firebase-admin";
import Timestamp = firestore.Timestamp;

export interface ActivityRequest {
    userId?: string | null;
    destination: string;
    activityPreferences: string[];
    dateOption: string;
    budgetOption: string;
    atmosphereOption: string;
    additionalNotes: string;
    createdAt: Timestamp;
}

export interface ActivityRecommendationsResponse {
    id: string;
    userId?: string | null;
    requestId: string;
    destination: string;
    destinationLowerCase: string;
    recommendations: ActivityRecommendation[];
    additionalNotes: string;
    createdAt: Timestamp;
}

export interface ActivityRecommendation {
    placeName: string;
    description: string;
    bestTimeToVisit: string;
    imageUrl: string;
    safetyTips: string;
    combinationTips: string;
    priceRange: string;
}
