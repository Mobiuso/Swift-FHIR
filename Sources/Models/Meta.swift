//
//  Meta.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Meta) on 2019-05-21.
//  2019, SMART Health IT.
//

import Foundation


/**
Metadata about a resource.

The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the
content might not always be associated with version changes to the resource.
*/
open class Meta: Element {
	override open class var resourceType: String {
		get { return "Meta" }
	}
	
	/// When the resource version last changed.
	public var lastUpdated: Instant?
	
	/// Profiles this resource claims to conform to.
	public var profile: [FHIRCanonical]?
	
	/// Security Labels applied to this resource.
	public var security: [Coding]?
	
	/// Identifies where the resource comes from.
	public var source: FHIRURL?
	
	/// Tags applied to this resource.
	public var tag: [Coding]?
	
	/// Version specific identifier.
	public var versionId: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		lastUpdated = createInstance(type: Instant.self, for: "lastUpdated", in: json, context: &instCtx, owner: self) ?? lastUpdated
		profile = createInstances(of: FHIRCanonical.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		security = createInstances(of: Coding.self, for: "security", in: json, context: &instCtx, owner: self) ?? security
		source = createInstance(type: FHIRURL.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		tag = createInstances(of: Coding.self, for: "tag", in: json, context: &instCtx, owner: self) ?? tag
		versionId = createInstance(type: FHIRString.self, for: "versionId", in: json, context: &instCtx, owner: self) ?? versionId
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.lastUpdated?.decorate(json: &json, withKey: "lastUpdated", errors: &errors)
		arrayDecorate(json: &json, withKey: "profile", using: self.profile, errors: &errors)
		arrayDecorate(json: &json, withKey: "security", using: self.security, errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		arrayDecorate(json: &json, withKey: "tag", using: self.tag, errors: &errors)
		self.versionId?.decorate(json: &json, withKey: "versionId", errors: &errors)
	}
}

