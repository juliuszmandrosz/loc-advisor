export interface ActivityRecommendationsResponse {
    destination: string;
    recommendations: ActivityRecommendation[];
    additionalNotes: string;
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
