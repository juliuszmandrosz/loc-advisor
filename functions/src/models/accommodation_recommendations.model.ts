export interface AccommodationRecommendationsResponse {
    destination: string;
    locations: AccommodationRecommendation[];
    additionalNotes: string;
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
