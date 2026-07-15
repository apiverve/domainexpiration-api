declare module '@apiverve/domainexpiration' {
  export interface domainexpirationOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface domainexpirationResponse {
    status: string;
    error: string | null;
    data: DomainExpirationData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface DomainExpirationData {
      domain:              null | string;
      expirationDate:      Date | null;
      daysToExpiration:    number | null;
      expirationStatus:    null | string;
      createdDate:         Date | null;
      lastUpdatedDate:     Date | null;
      daysSinceLastUpdate: number | null;
      domainAgeDays:       number | null;
      domainAgeYears:      number | null;
  }

  export default class domainexpirationWrapper {
    constructor(options: domainexpirationOptions);

    execute(callback: (error: any, data: domainexpirationResponse | null) => void): Promise<domainexpirationResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: domainexpirationResponse | null) => void): Promise<domainexpirationResponse>;
    execute(query?: Record<string, any>): Promise<domainexpirationResponse>;
  }
}
