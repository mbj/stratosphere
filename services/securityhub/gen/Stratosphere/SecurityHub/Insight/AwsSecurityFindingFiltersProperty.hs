module Stratosphere.SecurityHub.Insight.AwsSecurityFindingFiltersProperty (
        module Exports, AwsSecurityFindingFiltersProperty(..),
        mkAwsSecurityFindingFiltersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.Insight.BooleanFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.Insight.DateFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.Insight.IpFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.Insight.MapFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.Insight.NumberFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.Insight.StringFilterProperty as Exports
import Stratosphere.ResourceProperties
data AwsSecurityFindingFiltersProperty
  = AwsSecurityFindingFiltersProperty {awsAccountId :: (Prelude.Maybe [StringFilterProperty]),
                                       awsAccountName :: (Prelude.Maybe [StringFilterProperty]),
                                       companyName :: (Prelude.Maybe [StringFilterProperty]),
                                       complianceAssociatedStandardsId :: (Prelude.Maybe [StringFilterProperty]),
                                       complianceSecurityControlId :: (Prelude.Maybe [StringFilterProperty]),
                                       complianceSecurityControlParametersName :: (Prelude.Maybe [StringFilterProperty]),
                                       complianceSecurityControlParametersValue :: (Prelude.Maybe [StringFilterProperty]),
                                       complianceStatus :: (Prelude.Maybe [StringFilterProperty]),
                                       confidence :: (Prelude.Maybe [NumberFilterProperty]),
                                       createdAt :: (Prelude.Maybe [DateFilterProperty]),
                                       criticality :: (Prelude.Maybe [NumberFilterProperty]),
                                       description :: (Prelude.Maybe [StringFilterProperty]),
                                       findingProviderFieldsConfidence :: (Prelude.Maybe [NumberFilterProperty]),
                                       findingProviderFieldsCriticality :: (Prelude.Maybe [NumberFilterProperty]),
                                       findingProviderFieldsRelatedFindingsId :: (Prelude.Maybe [StringFilterProperty]),
                                       findingProviderFieldsRelatedFindingsProductArn :: (Prelude.Maybe [StringFilterProperty]),
                                       findingProviderFieldsSeverityLabel :: (Prelude.Maybe [StringFilterProperty]),
                                       findingProviderFieldsSeverityOriginal :: (Prelude.Maybe [StringFilterProperty]),
                                       findingProviderFieldsTypes :: (Prelude.Maybe [StringFilterProperty]),
                                       firstObservedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       generatorId :: (Prelude.Maybe [StringFilterProperty]),
                                       id :: (Prelude.Maybe [StringFilterProperty]),
                                       lastObservedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       malwareName :: (Prelude.Maybe [StringFilterProperty]),
                                       malwarePath :: (Prelude.Maybe [StringFilterProperty]),
                                       malwareState :: (Prelude.Maybe [StringFilterProperty]),
                                       malwareType :: (Prelude.Maybe [StringFilterProperty]),
                                       networkDestinationDomain :: (Prelude.Maybe [StringFilterProperty]),
                                       networkDestinationIpV4 :: (Prelude.Maybe [IpFilterProperty]),
                                       networkDestinationIpV6 :: (Prelude.Maybe [IpFilterProperty]),
                                       networkDestinationPort :: (Prelude.Maybe [NumberFilterProperty]),
                                       networkDirection :: (Prelude.Maybe [StringFilterProperty]),
                                       networkProtocol :: (Prelude.Maybe [StringFilterProperty]),
                                       networkSourceDomain :: (Prelude.Maybe [StringFilterProperty]),
                                       networkSourceIpV4 :: (Prelude.Maybe [IpFilterProperty]),
                                       networkSourceIpV6 :: (Prelude.Maybe [IpFilterProperty]),
                                       networkSourceMac :: (Prelude.Maybe [StringFilterProperty]),
                                       networkSourcePort :: (Prelude.Maybe [NumberFilterProperty]),
                                       noteText :: (Prelude.Maybe [StringFilterProperty]),
                                       noteUpdatedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       noteUpdatedBy :: (Prelude.Maybe [StringFilterProperty]),
                                       processLaunchedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       processName :: (Prelude.Maybe [StringFilterProperty]),
                                       processParentPid :: (Prelude.Maybe [NumberFilterProperty]),
                                       processPath :: (Prelude.Maybe [StringFilterProperty]),
                                       processPid :: (Prelude.Maybe [NumberFilterProperty]),
                                       processTerminatedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       productArn :: (Prelude.Maybe [StringFilterProperty]),
                                       productFields :: (Prelude.Maybe [MapFilterProperty]),
                                       productName :: (Prelude.Maybe [StringFilterProperty]),
                                       recommendationText :: (Prelude.Maybe [StringFilterProperty]),
                                       recordState :: (Prelude.Maybe [StringFilterProperty]),
                                       region :: (Prelude.Maybe [StringFilterProperty]),
                                       relatedFindingsId :: (Prelude.Maybe [StringFilterProperty]),
                                       relatedFindingsProductArn :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceApplicationArn :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceApplicationName :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsEc2InstanceIamInstanceProfileArn :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsEc2InstanceImageId :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsEc2InstanceIpV4Addresses :: (Prelude.Maybe [IpFilterProperty]),
                                       resourceAwsEc2InstanceIpV6Addresses :: (Prelude.Maybe [IpFilterProperty]),
                                       resourceAwsEc2InstanceKeyName :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsEc2InstanceLaunchedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       resourceAwsEc2InstanceSubnetId :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsEc2InstanceType :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsEc2InstanceVpcId :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsIamAccessKeyCreatedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       resourceAwsIamAccessKeyPrincipalName :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsIamAccessKeyStatus :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsIamUserUserName :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsS3BucketOwnerId :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceAwsS3BucketOwnerName :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceContainerImageId :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceContainerImageName :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceContainerLaunchedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       resourceContainerName :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceDetailsOther :: (Prelude.Maybe [MapFilterProperty]),
                                       resourceId :: (Prelude.Maybe [StringFilterProperty]),
                                       resourcePartition :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceRegion :: (Prelude.Maybe [StringFilterProperty]),
                                       resourceTags :: (Prelude.Maybe [MapFilterProperty]),
                                       resourceType :: (Prelude.Maybe [StringFilterProperty]),
                                       sample :: (Prelude.Maybe [BooleanFilterProperty]),
                                       severityLabel :: (Prelude.Maybe [StringFilterProperty]),
                                       sourceUrl :: (Prelude.Maybe [StringFilterProperty]),
                                       threatIntelIndicatorCategory :: (Prelude.Maybe [StringFilterProperty]),
                                       threatIntelIndicatorLastObservedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       threatIntelIndicatorSource :: (Prelude.Maybe [StringFilterProperty]),
                                       threatIntelIndicatorSourceUrl :: (Prelude.Maybe [StringFilterProperty]),
                                       threatIntelIndicatorType :: (Prelude.Maybe [StringFilterProperty]),
                                       threatIntelIndicatorValue :: (Prelude.Maybe [StringFilterProperty]),
                                       title :: (Prelude.Maybe [StringFilterProperty]),
                                       type' :: (Prelude.Maybe [StringFilterProperty]),
                                       updatedAt :: (Prelude.Maybe [DateFilterProperty]),
                                       userDefinedFields :: (Prelude.Maybe [MapFilterProperty]),
                                       verificationState :: (Prelude.Maybe [StringFilterProperty]),
                                       vulnerabilitiesExploitAvailable :: (Prelude.Maybe [StringFilterProperty]),
                                       vulnerabilitiesFixAvailable :: (Prelude.Maybe [StringFilterProperty]),
                                       workflowState :: (Prelude.Maybe [StringFilterProperty]),
                                       workflowStatus :: (Prelude.Maybe [StringFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsSecurityFindingFiltersProperty ::
  AwsSecurityFindingFiltersProperty
mkAwsSecurityFindingFiltersProperty
  = AwsSecurityFindingFiltersProperty
      {awsAccountId = Prelude.Nothing, awsAccountName = Prelude.Nothing,
       companyName = Prelude.Nothing,
       complianceAssociatedStandardsId = Prelude.Nothing,
       complianceSecurityControlId = Prelude.Nothing,
       complianceSecurityControlParametersName = Prelude.Nothing,
       complianceSecurityControlParametersValue = Prelude.Nothing,
       complianceStatus = Prelude.Nothing, confidence = Prelude.Nothing,
       createdAt = Prelude.Nothing, criticality = Prelude.Nothing,
       description = Prelude.Nothing,
       findingProviderFieldsConfidence = Prelude.Nothing,
       findingProviderFieldsCriticality = Prelude.Nothing,
       findingProviderFieldsRelatedFindingsId = Prelude.Nothing,
       findingProviderFieldsRelatedFindingsProductArn = Prelude.Nothing,
       findingProviderFieldsSeverityLabel = Prelude.Nothing,
       findingProviderFieldsSeverityOriginal = Prelude.Nothing,
       findingProviderFieldsTypes = Prelude.Nothing,
       firstObservedAt = Prelude.Nothing, generatorId = Prelude.Nothing,
       id = Prelude.Nothing, lastObservedAt = Prelude.Nothing,
       malwareName = Prelude.Nothing, malwarePath = Prelude.Nothing,
       malwareState = Prelude.Nothing, malwareType = Prelude.Nothing,
       networkDestinationDomain = Prelude.Nothing,
       networkDestinationIpV4 = Prelude.Nothing,
       networkDestinationIpV6 = Prelude.Nothing,
       networkDestinationPort = Prelude.Nothing,
       networkDirection = Prelude.Nothing,
       networkProtocol = Prelude.Nothing,
       networkSourceDomain = Prelude.Nothing,
       networkSourceIpV4 = Prelude.Nothing,
       networkSourceIpV6 = Prelude.Nothing,
       networkSourceMac = Prelude.Nothing,
       networkSourcePort = Prelude.Nothing, noteText = Prelude.Nothing,
       noteUpdatedAt = Prelude.Nothing, noteUpdatedBy = Prelude.Nothing,
       processLaunchedAt = Prelude.Nothing, processName = Prelude.Nothing,
       processParentPid = Prelude.Nothing, processPath = Prelude.Nothing,
       processPid = Prelude.Nothing,
       processTerminatedAt = Prelude.Nothing,
       productArn = Prelude.Nothing, productFields = Prelude.Nothing,
       productName = Prelude.Nothing,
       recommendationText = Prelude.Nothing,
       recordState = Prelude.Nothing, region = Prelude.Nothing,
       relatedFindingsId = Prelude.Nothing,
       relatedFindingsProductArn = Prelude.Nothing,
       resourceApplicationArn = Prelude.Nothing,
       resourceApplicationName = Prelude.Nothing,
       resourceAwsEc2InstanceIamInstanceProfileArn = Prelude.Nothing,
       resourceAwsEc2InstanceImageId = Prelude.Nothing,
       resourceAwsEc2InstanceIpV4Addresses = Prelude.Nothing,
       resourceAwsEc2InstanceIpV6Addresses = Prelude.Nothing,
       resourceAwsEc2InstanceKeyName = Prelude.Nothing,
       resourceAwsEc2InstanceLaunchedAt = Prelude.Nothing,
       resourceAwsEc2InstanceSubnetId = Prelude.Nothing,
       resourceAwsEc2InstanceType = Prelude.Nothing,
       resourceAwsEc2InstanceVpcId = Prelude.Nothing,
       resourceAwsIamAccessKeyCreatedAt = Prelude.Nothing,
       resourceAwsIamAccessKeyPrincipalName = Prelude.Nothing,
       resourceAwsIamAccessKeyStatus = Prelude.Nothing,
       resourceAwsIamUserUserName = Prelude.Nothing,
       resourceAwsS3BucketOwnerId = Prelude.Nothing,
       resourceAwsS3BucketOwnerName = Prelude.Nothing,
       resourceContainerImageId = Prelude.Nothing,
       resourceContainerImageName = Prelude.Nothing,
       resourceContainerLaunchedAt = Prelude.Nothing,
       resourceContainerName = Prelude.Nothing,
       resourceDetailsOther = Prelude.Nothing,
       resourceId = Prelude.Nothing, resourcePartition = Prelude.Nothing,
       resourceRegion = Prelude.Nothing, resourceTags = Prelude.Nothing,
       resourceType = Prelude.Nothing, sample = Prelude.Nothing,
       severityLabel = Prelude.Nothing, sourceUrl = Prelude.Nothing,
       threatIntelIndicatorCategory = Prelude.Nothing,
       threatIntelIndicatorLastObservedAt = Prelude.Nothing,
       threatIntelIndicatorSource = Prelude.Nothing,
       threatIntelIndicatorSourceUrl = Prelude.Nothing,
       threatIntelIndicatorType = Prelude.Nothing,
       threatIntelIndicatorValue = Prelude.Nothing,
       title = Prelude.Nothing, type' = Prelude.Nothing,
       updatedAt = Prelude.Nothing, userDefinedFields = Prelude.Nothing,
       verificationState = Prelude.Nothing,
       vulnerabilitiesExploitAvailable = Prelude.Nothing,
       vulnerabilitiesFixAvailable = Prelude.Nothing,
       workflowState = Prelude.Nothing, workflowStatus = Prelude.Nothing}
instance ToResourceProperties AwsSecurityFindingFiltersProperty where
  toResourceProperties AwsSecurityFindingFiltersProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Insight.AwsSecurityFindingFilters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "AwsAccountName" Prelude.<$> awsAccountName,
                            (JSON..=) "CompanyName" Prelude.<$> companyName,
                            (JSON..=) "ComplianceAssociatedStandardsId"
                              Prelude.<$> complianceAssociatedStandardsId,
                            (JSON..=) "ComplianceSecurityControlId"
                              Prelude.<$> complianceSecurityControlId,
                            (JSON..=) "ComplianceSecurityControlParametersName"
                              Prelude.<$> complianceSecurityControlParametersName,
                            (JSON..=) "ComplianceSecurityControlParametersValue"
                              Prelude.<$> complianceSecurityControlParametersValue,
                            (JSON..=) "ComplianceStatus" Prelude.<$> complianceStatus,
                            (JSON..=) "Confidence" Prelude.<$> confidence,
                            (JSON..=) "CreatedAt" Prelude.<$> createdAt,
                            (JSON..=) "Criticality" Prelude.<$> criticality,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "FindingProviderFieldsConfidence"
                              Prelude.<$> findingProviderFieldsConfidence,
                            (JSON..=) "FindingProviderFieldsCriticality"
                              Prelude.<$> findingProviderFieldsCriticality,
                            (JSON..=) "FindingProviderFieldsRelatedFindingsId"
                              Prelude.<$> findingProviderFieldsRelatedFindingsId,
                            (JSON..=) "FindingProviderFieldsRelatedFindingsProductArn"
                              Prelude.<$> findingProviderFieldsRelatedFindingsProductArn,
                            (JSON..=) "FindingProviderFieldsSeverityLabel"
                              Prelude.<$> findingProviderFieldsSeverityLabel,
                            (JSON..=) "FindingProviderFieldsSeverityOriginal"
                              Prelude.<$> findingProviderFieldsSeverityOriginal,
                            (JSON..=) "FindingProviderFieldsTypes"
                              Prelude.<$> findingProviderFieldsTypes,
                            (JSON..=) "FirstObservedAt" Prelude.<$> firstObservedAt,
                            (JSON..=) "GeneratorId" Prelude.<$> generatorId,
                            (JSON..=) "Id" Prelude.<$> id,
                            (JSON..=) "LastObservedAt" Prelude.<$> lastObservedAt,
                            (JSON..=) "MalwareName" Prelude.<$> malwareName,
                            (JSON..=) "MalwarePath" Prelude.<$> malwarePath,
                            (JSON..=) "MalwareState" Prelude.<$> malwareState,
                            (JSON..=) "MalwareType" Prelude.<$> malwareType,
                            (JSON..=) "NetworkDestinationDomain"
                              Prelude.<$> networkDestinationDomain,
                            (JSON..=) "NetworkDestinationIpV4"
                              Prelude.<$> networkDestinationIpV4,
                            (JSON..=) "NetworkDestinationIpV6"
                              Prelude.<$> networkDestinationIpV6,
                            (JSON..=) "NetworkDestinationPort"
                              Prelude.<$> networkDestinationPort,
                            (JSON..=) "NetworkDirection" Prelude.<$> networkDirection,
                            (JSON..=) "NetworkProtocol" Prelude.<$> networkProtocol,
                            (JSON..=) "NetworkSourceDomain" Prelude.<$> networkSourceDomain,
                            (JSON..=) "NetworkSourceIpV4" Prelude.<$> networkSourceIpV4,
                            (JSON..=) "NetworkSourceIpV6" Prelude.<$> networkSourceIpV6,
                            (JSON..=) "NetworkSourceMac" Prelude.<$> networkSourceMac,
                            (JSON..=) "NetworkSourcePort" Prelude.<$> networkSourcePort,
                            (JSON..=) "NoteText" Prelude.<$> noteText,
                            (JSON..=) "NoteUpdatedAt" Prelude.<$> noteUpdatedAt,
                            (JSON..=) "NoteUpdatedBy" Prelude.<$> noteUpdatedBy,
                            (JSON..=) "ProcessLaunchedAt" Prelude.<$> processLaunchedAt,
                            (JSON..=) "ProcessName" Prelude.<$> processName,
                            (JSON..=) "ProcessParentPid" Prelude.<$> processParentPid,
                            (JSON..=) "ProcessPath" Prelude.<$> processPath,
                            (JSON..=) "ProcessPid" Prelude.<$> processPid,
                            (JSON..=) "ProcessTerminatedAt" Prelude.<$> processTerminatedAt,
                            (JSON..=) "ProductArn" Prelude.<$> productArn,
                            (JSON..=) "ProductFields" Prelude.<$> productFields,
                            (JSON..=) "ProductName" Prelude.<$> productName,
                            (JSON..=) "RecommendationText" Prelude.<$> recommendationText,
                            (JSON..=) "RecordState" Prelude.<$> recordState,
                            (JSON..=) "Region" Prelude.<$> region,
                            (JSON..=) "RelatedFindingsId" Prelude.<$> relatedFindingsId,
                            (JSON..=) "RelatedFindingsProductArn"
                              Prelude.<$> relatedFindingsProductArn,
                            (JSON..=) "ResourceApplicationArn"
                              Prelude.<$> resourceApplicationArn,
                            (JSON..=) "ResourceApplicationName"
                              Prelude.<$> resourceApplicationName,
                            (JSON..=) "ResourceAwsEc2InstanceIamInstanceProfileArn"
                              Prelude.<$> resourceAwsEc2InstanceIamInstanceProfileArn,
                            (JSON..=) "ResourceAwsEc2InstanceImageId"
                              Prelude.<$> resourceAwsEc2InstanceImageId,
                            (JSON..=) "ResourceAwsEc2InstanceIpV4Addresses"
                              Prelude.<$> resourceAwsEc2InstanceIpV4Addresses,
                            (JSON..=) "ResourceAwsEc2InstanceIpV6Addresses"
                              Prelude.<$> resourceAwsEc2InstanceIpV6Addresses,
                            (JSON..=) "ResourceAwsEc2InstanceKeyName"
                              Prelude.<$> resourceAwsEc2InstanceKeyName,
                            (JSON..=) "ResourceAwsEc2InstanceLaunchedAt"
                              Prelude.<$> resourceAwsEc2InstanceLaunchedAt,
                            (JSON..=) "ResourceAwsEc2InstanceSubnetId"
                              Prelude.<$> resourceAwsEc2InstanceSubnetId,
                            (JSON..=) "ResourceAwsEc2InstanceType"
                              Prelude.<$> resourceAwsEc2InstanceType,
                            (JSON..=) "ResourceAwsEc2InstanceVpcId"
                              Prelude.<$> resourceAwsEc2InstanceVpcId,
                            (JSON..=) "ResourceAwsIamAccessKeyCreatedAt"
                              Prelude.<$> resourceAwsIamAccessKeyCreatedAt,
                            (JSON..=) "ResourceAwsIamAccessKeyPrincipalName"
                              Prelude.<$> resourceAwsIamAccessKeyPrincipalName,
                            (JSON..=) "ResourceAwsIamAccessKeyStatus"
                              Prelude.<$> resourceAwsIamAccessKeyStatus,
                            (JSON..=) "ResourceAwsIamUserUserName"
                              Prelude.<$> resourceAwsIamUserUserName,
                            (JSON..=) "ResourceAwsS3BucketOwnerId"
                              Prelude.<$> resourceAwsS3BucketOwnerId,
                            (JSON..=) "ResourceAwsS3BucketOwnerName"
                              Prelude.<$> resourceAwsS3BucketOwnerName,
                            (JSON..=) "ResourceContainerImageId"
                              Prelude.<$> resourceContainerImageId,
                            (JSON..=) "ResourceContainerImageName"
                              Prelude.<$> resourceContainerImageName,
                            (JSON..=) "ResourceContainerLaunchedAt"
                              Prelude.<$> resourceContainerLaunchedAt,
                            (JSON..=) "ResourceContainerName"
                              Prelude.<$> resourceContainerName,
                            (JSON..=) "ResourceDetailsOther" Prelude.<$> resourceDetailsOther,
                            (JSON..=) "ResourceId" Prelude.<$> resourceId,
                            (JSON..=) "ResourcePartition" Prelude.<$> resourcePartition,
                            (JSON..=) "ResourceRegion" Prelude.<$> resourceRegion,
                            (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                            (JSON..=) "ResourceType" Prelude.<$> resourceType,
                            (JSON..=) "Sample" Prelude.<$> sample,
                            (JSON..=) "SeverityLabel" Prelude.<$> severityLabel,
                            (JSON..=) "SourceUrl" Prelude.<$> sourceUrl,
                            (JSON..=) "ThreatIntelIndicatorCategory"
                              Prelude.<$> threatIntelIndicatorCategory,
                            (JSON..=) "ThreatIntelIndicatorLastObservedAt"
                              Prelude.<$> threatIntelIndicatorLastObservedAt,
                            (JSON..=) "ThreatIntelIndicatorSource"
                              Prelude.<$> threatIntelIndicatorSource,
                            (JSON..=) "ThreatIntelIndicatorSourceUrl"
                              Prelude.<$> threatIntelIndicatorSourceUrl,
                            (JSON..=) "ThreatIntelIndicatorType"
                              Prelude.<$> threatIntelIndicatorType,
                            (JSON..=) "ThreatIntelIndicatorValue"
                              Prelude.<$> threatIntelIndicatorValue,
                            (JSON..=) "Title" Prelude.<$> title,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "UpdatedAt" Prelude.<$> updatedAt,
                            (JSON..=) "UserDefinedFields" Prelude.<$> userDefinedFields,
                            (JSON..=) "VerificationState" Prelude.<$> verificationState,
                            (JSON..=) "VulnerabilitiesExploitAvailable"
                              Prelude.<$> vulnerabilitiesExploitAvailable,
                            (JSON..=) "VulnerabilitiesFixAvailable"
                              Prelude.<$> vulnerabilitiesFixAvailable,
                            (JSON..=) "WorkflowState" Prelude.<$> workflowState,
                            (JSON..=) "WorkflowStatus" Prelude.<$> workflowStatus])}
instance JSON.ToJSON AwsSecurityFindingFiltersProperty where
  toJSON AwsSecurityFindingFiltersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "AwsAccountName" Prelude.<$> awsAccountName,
               (JSON..=) "CompanyName" Prelude.<$> companyName,
               (JSON..=) "ComplianceAssociatedStandardsId"
                 Prelude.<$> complianceAssociatedStandardsId,
               (JSON..=) "ComplianceSecurityControlId"
                 Prelude.<$> complianceSecurityControlId,
               (JSON..=) "ComplianceSecurityControlParametersName"
                 Prelude.<$> complianceSecurityControlParametersName,
               (JSON..=) "ComplianceSecurityControlParametersValue"
                 Prelude.<$> complianceSecurityControlParametersValue,
               (JSON..=) "ComplianceStatus" Prelude.<$> complianceStatus,
               (JSON..=) "Confidence" Prelude.<$> confidence,
               (JSON..=) "CreatedAt" Prelude.<$> createdAt,
               (JSON..=) "Criticality" Prelude.<$> criticality,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "FindingProviderFieldsConfidence"
                 Prelude.<$> findingProviderFieldsConfidence,
               (JSON..=) "FindingProviderFieldsCriticality"
                 Prelude.<$> findingProviderFieldsCriticality,
               (JSON..=) "FindingProviderFieldsRelatedFindingsId"
                 Prelude.<$> findingProviderFieldsRelatedFindingsId,
               (JSON..=) "FindingProviderFieldsRelatedFindingsProductArn"
                 Prelude.<$> findingProviderFieldsRelatedFindingsProductArn,
               (JSON..=) "FindingProviderFieldsSeverityLabel"
                 Prelude.<$> findingProviderFieldsSeverityLabel,
               (JSON..=) "FindingProviderFieldsSeverityOriginal"
                 Prelude.<$> findingProviderFieldsSeverityOriginal,
               (JSON..=) "FindingProviderFieldsTypes"
                 Prelude.<$> findingProviderFieldsTypes,
               (JSON..=) "FirstObservedAt" Prelude.<$> firstObservedAt,
               (JSON..=) "GeneratorId" Prelude.<$> generatorId,
               (JSON..=) "Id" Prelude.<$> id,
               (JSON..=) "LastObservedAt" Prelude.<$> lastObservedAt,
               (JSON..=) "MalwareName" Prelude.<$> malwareName,
               (JSON..=) "MalwarePath" Prelude.<$> malwarePath,
               (JSON..=) "MalwareState" Prelude.<$> malwareState,
               (JSON..=) "MalwareType" Prelude.<$> malwareType,
               (JSON..=) "NetworkDestinationDomain"
                 Prelude.<$> networkDestinationDomain,
               (JSON..=) "NetworkDestinationIpV4"
                 Prelude.<$> networkDestinationIpV4,
               (JSON..=) "NetworkDestinationIpV6"
                 Prelude.<$> networkDestinationIpV6,
               (JSON..=) "NetworkDestinationPort"
                 Prelude.<$> networkDestinationPort,
               (JSON..=) "NetworkDirection" Prelude.<$> networkDirection,
               (JSON..=) "NetworkProtocol" Prelude.<$> networkProtocol,
               (JSON..=) "NetworkSourceDomain" Prelude.<$> networkSourceDomain,
               (JSON..=) "NetworkSourceIpV4" Prelude.<$> networkSourceIpV4,
               (JSON..=) "NetworkSourceIpV6" Prelude.<$> networkSourceIpV6,
               (JSON..=) "NetworkSourceMac" Prelude.<$> networkSourceMac,
               (JSON..=) "NetworkSourcePort" Prelude.<$> networkSourcePort,
               (JSON..=) "NoteText" Prelude.<$> noteText,
               (JSON..=) "NoteUpdatedAt" Prelude.<$> noteUpdatedAt,
               (JSON..=) "NoteUpdatedBy" Prelude.<$> noteUpdatedBy,
               (JSON..=) "ProcessLaunchedAt" Prelude.<$> processLaunchedAt,
               (JSON..=) "ProcessName" Prelude.<$> processName,
               (JSON..=) "ProcessParentPid" Prelude.<$> processParentPid,
               (JSON..=) "ProcessPath" Prelude.<$> processPath,
               (JSON..=) "ProcessPid" Prelude.<$> processPid,
               (JSON..=) "ProcessTerminatedAt" Prelude.<$> processTerminatedAt,
               (JSON..=) "ProductArn" Prelude.<$> productArn,
               (JSON..=) "ProductFields" Prelude.<$> productFields,
               (JSON..=) "ProductName" Prelude.<$> productName,
               (JSON..=) "RecommendationText" Prelude.<$> recommendationText,
               (JSON..=) "RecordState" Prelude.<$> recordState,
               (JSON..=) "Region" Prelude.<$> region,
               (JSON..=) "RelatedFindingsId" Prelude.<$> relatedFindingsId,
               (JSON..=) "RelatedFindingsProductArn"
                 Prelude.<$> relatedFindingsProductArn,
               (JSON..=) "ResourceApplicationArn"
                 Prelude.<$> resourceApplicationArn,
               (JSON..=) "ResourceApplicationName"
                 Prelude.<$> resourceApplicationName,
               (JSON..=) "ResourceAwsEc2InstanceIamInstanceProfileArn"
                 Prelude.<$> resourceAwsEc2InstanceIamInstanceProfileArn,
               (JSON..=) "ResourceAwsEc2InstanceImageId"
                 Prelude.<$> resourceAwsEc2InstanceImageId,
               (JSON..=) "ResourceAwsEc2InstanceIpV4Addresses"
                 Prelude.<$> resourceAwsEc2InstanceIpV4Addresses,
               (JSON..=) "ResourceAwsEc2InstanceIpV6Addresses"
                 Prelude.<$> resourceAwsEc2InstanceIpV6Addresses,
               (JSON..=) "ResourceAwsEc2InstanceKeyName"
                 Prelude.<$> resourceAwsEc2InstanceKeyName,
               (JSON..=) "ResourceAwsEc2InstanceLaunchedAt"
                 Prelude.<$> resourceAwsEc2InstanceLaunchedAt,
               (JSON..=) "ResourceAwsEc2InstanceSubnetId"
                 Prelude.<$> resourceAwsEc2InstanceSubnetId,
               (JSON..=) "ResourceAwsEc2InstanceType"
                 Prelude.<$> resourceAwsEc2InstanceType,
               (JSON..=) "ResourceAwsEc2InstanceVpcId"
                 Prelude.<$> resourceAwsEc2InstanceVpcId,
               (JSON..=) "ResourceAwsIamAccessKeyCreatedAt"
                 Prelude.<$> resourceAwsIamAccessKeyCreatedAt,
               (JSON..=) "ResourceAwsIamAccessKeyPrincipalName"
                 Prelude.<$> resourceAwsIamAccessKeyPrincipalName,
               (JSON..=) "ResourceAwsIamAccessKeyStatus"
                 Prelude.<$> resourceAwsIamAccessKeyStatus,
               (JSON..=) "ResourceAwsIamUserUserName"
                 Prelude.<$> resourceAwsIamUserUserName,
               (JSON..=) "ResourceAwsS3BucketOwnerId"
                 Prelude.<$> resourceAwsS3BucketOwnerId,
               (JSON..=) "ResourceAwsS3BucketOwnerName"
                 Prelude.<$> resourceAwsS3BucketOwnerName,
               (JSON..=) "ResourceContainerImageId"
                 Prelude.<$> resourceContainerImageId,
               (JSON..=) "ResourceContainerImageName"
                 Prelude.<$> resourceContainerImageName,
               (JSON..=) "ResourceContainerLaunchedAt"
                 Prelude.<$> resourceContainerLaunchedAt,
               (JSON..=) "ResourceContainerName"
                 Prelude.<$> resourceContainerName,
               (JSON..=) "ResourceDetailsOther" Prelude.<$> resourceDetailsOther,
               (JSON..=) "ResourceId" Prelude.<$> resourceId,
               (JSON..=) "ResourcePartition" Prelude.<$> resourcePartition,
               (JSON..=) "ResourceRegion" Prelude.<$> resourceRegion,
               (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
               (JSON..=) "ResourceType" Prelude.<$> resourceType,
               (JSON..=) "Sample" Prelude.<$> sample,
               (JSON..=) "SeverityLabel" Prelude.<$> severityLabel,
               (JSON..=) "SourceUrl" Prelude.<$> sourceUrl,
               (JSON..=) "ThreatIntelIndicatorCategory"
                 Prelude.<$> threatIntelIndicatorCategory,
               (JSON..=) "ThreatIntelIndicatorLastObservedAt"
                 Prelude.<$> threatIntelIndicatorLastObservedAt,
               (JSON..=) "ThreatIntelIndicatorSource"
                 Prelude.<$> threatIntelIndicatorSource,
               (JSON..=) "ThreatIntelIndicatorSourceUrl"
                 Prelude.<$> threatIntelIndicatorSourceUrl,
               (JSON..=) "ThreatIntelIndicatorType"
                 Prelude.<$> threatIntelIndicatorType,
               (JSON..=) "ThreatIntelIndicatorValue"
                 Prelude.<$> threatIntelIndicatorValue,
               (JSON..=) "Title" Prelude.<$> title,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "UpdatedAt" Prelude.<$> updatedAt,
               (JSON..=) "UserDefinedFields" Prelude.<$> userDefinedFields,
               (JSON..=) "VerificationState" Prelude.<$> verificationState,
               (JSON..=) "VulnerabilitiesExploitAvailable"
                 Prelude.<$> vulnerabilitiesExploitAvailable,
               (JSON..=) "VulnerabilitiesFixAvailable"
                 Prelude.<$> vulnerabilitiesFixAvailable,
               (JSON..=) "WorkflowState" Prelude.<$> workflowState,
               (JSON..=) "WorkflowStatus" Prelude.<$> workflowStatus]))
instance Property "AwsAccountId" AwsSecurityFindingFiltersProperty where
  type PropertyType "AwsAccountId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {awsAccountId = Prelude.pure newValue, ..}
instance Property "AwsAccountName" AwsSecurityFindingFiltersProperty where
  type PropertyType "AwsAccountName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {awsAccountName = Prelude.pure newValue, ..}
instance Property "CompanyName" AwsSecurityFindingFiltersProperty where
  type PropertyType "CompanyName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {companyName = Prelude.pure newValue, ..}
instance Property "ComplianceAssociatedStandardsId" AwsSecurityFindingFiltersProperty where
  type PropertyType "ComplianceAssociatedStandardsId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {complianceAssociatedStandardsId = Prelude.pure newValue, ..}
instance Property "ComplianceSecurityControlId" AwsSecurityFindingFiltersProperty where
  type PropertyType "ComplianceSecurityControlId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {complianceSecurityControlId = Prelude.pure newValue, ..}
instance Property "ComplianceSecurityControlParametersName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ComplianceSecurityControlParametersName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {complianceSecurityControlParametersName = Prelude.pure newValue,
         ..}
instance Property "ComplianceSecurityControlParametersValue" AwsSecurityFindingFiltersProperty where
  type PropertyType "ComplianceSecurityControlParametersValue" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {complianceSecurityControlParametersValue = Prelude.pure newValue,
         ..}
instance Property "ComplianceStatus" AwsSecurityFindingFiltersProperty where
  type PropertyType "ComplianceStatus" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {complianceStatus = Prelude.pure newValue, ..}
instance Property "Confidence" AwsSecurityFindingFiltersProperty where
  type PropertyType "Confidence" AwsSecurityFindingFiltersProperty = [NumberFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {confidence = Prelude.pure newValue, ..}
instance Property "CreatedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "CreatedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {createdAt = Prelude.pure newValue, ..}
instance Property "Criticality" AwsSecurityFindingFiltersProperty where
  type PropertyType "Criticality" AwsSecurityFindingFiltersProperty = [NumberFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {criticality = Prelude.pure newValue, ..}
instance Property "Description" AwsSecurityFindingFiltersProperty where
  type PropertyType "Description" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {description = Prelude.pure newValue, ..}
instance Property "FindingProviderFieldsConfidence" AwsSecurityFindingFiltersProperty where
  type PropertyType "FindingProviderFieldsConfidence" AwsSecurityFindingFiltersProperty = [NumberFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {findingProviderFieldsConfidence = Prelude.pure newValue, ..}
instance Property "FindingProviderFieldsCriticality" AwsSecurityFindingFiltersProperty where
  type PropertyType "FindingProviderFieldsCriticality" AwsSecurityFindingFiltersProperty = [NumberFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {findingProviderFieldsCriticality = Prelude.pure newValue, ..}
instance Property "FindingProviderFieldsRelatedFindingsId" AwsSecurityFindingFiltersProperty where
  type PropertyType "FindingProviderFieldsRelatedFindingsId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {findingProviderFieldsRelatedFindingsId = Prelude.pure newValue,
         ..}
instance Property "FindingProviderFieldsRelatedFindingsProductArn" AwsSecurityFindingFiltersProperty where
  type PropertyType "FindingProviderFieldsRelatedFindingsProductArn" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {findingProviderFieldsRelatedFindingsProductArn = Prelude.pure
                                                            newValue,
         ..}
instance Property "FindingProviderFieldsSeverityLabel" AwsSecurityFindingFiltersProperty where
  type PropertyType "FindingProviderFieldsSeverityLabel" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {findingProviderFieldsSeverityLabel = Prelude.pure newValue, ..}
instance Property "FindingProviderFieldsSeverityOriginal" AwsSecurityFindingFiltersProperty where
  type PropertyType "FindingProviderFieldsSeverityOriginal" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {findingProviderFieldsSeverityOriginal = Prelude.pure newValue, ..}
instance Property "FindingProviderFieldsTypes" AwsSecurityFindingFiltersProperty where
  type PropertyType "FindingProviderFieldsTypes" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {findingProviderFieldsTypes = Prelude.pure newValue, ..}
instance Property "FirstObservedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "FirstObservedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {firstObservedAt = Prelude.pure newValue, ..}
instance Property "GeneratorId" AwsSecurityFindingFiltersProperty where
  type PropertyType "GeneratorId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {generatorId = Prelude.pure newValue, ..}
instance Property "Id" AwsSecurityFindingFiltersProperty where
  type PropertyType "Id" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {id = Prelude.pure newValue, ..}
instance Property "LastObservedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "LastObservedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {lastObservedAt = Prelude.pure newValue, ..}
instance Property "MalwareName" AwsSecurityFindingFiltersProperty where
  type PropertyType "MalwareName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {malwareName = Prelude.pure newValue, ..}
instance Property "MalwarePath" AwsSecurityFindingFiltersProperty where
  type PropertyType "MalwarePath" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {malwarePath = Prelude.pure newValue, ..}
instance Property "MalwareState" AwsSecurityFindingFiltersProperty where
  type PropertyType "MalwareState" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {malwareState = Prelude.pure newValue, ..}
instance Property "MalwareType" AwsSecurityFindingFiltersProperty where
  type PropertyType "MalwareType" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {malwareType = Prelude.pure newValue, ..}
instance Property "NetworkDestinationDomain" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkDestinationDomain" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkDestinationDomain = Prelude.pure newValue, ..}
instance Property "NetworkDestinationIpV4" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkDestinationIpV4" AwsSecurityFindingFiltersProperty = [IpFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkDestinationIpV4 = Prelude.pure newValue, ..}
instance Property "NetworkDestinationIpV6" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkDestinationIpV6" AwsSecurityFindingFiltersProperty = [IpFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkDestinationIpV6 = Prelude.pure newValue, ..}
instance Property "NetworkDestinationPort" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkDestinationPort" AwsSecurityFindingFiltersProperty = [NumberFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkDestinationPort = Prelude.pure newValue, ..}
instance Property "NetworkDirection" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkDirection" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkDirection = Prelude.pure newValue, ..}
instance Property "NetworkProtocol" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkProtocol" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkProtocol = Prelude.pure newValue, ..}
instance Property "NetworkSourceDomain" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkSourceDomain" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkSourceDomain = Prelude.pure newValue, ..}
instance Property "NetworkSourceIpV4" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkSourceIpV4" AwsSecurityFindingFiltersProperty = [IpFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkSourceIpV4 = Prelude.pure newValue, ..}
instance Property "NetworkSourceIpV6" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkSourceIpV6" AwsSecurityFindingFiltersProperty = [IpFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkSourceIpV6 = Prelude.pure newValue, ..}
instance Property "NetworkSourceMac" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkSourceMac" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkSourceMac = Prelude.pure newValue, ..}
instance Property "NetworkSourcePort" AwsSecurityFindingFiltersProperty where
  type PropertyType "NetworkSourcePort" AwsSecurityFindingFiltersProperty = [NumberFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {networkSourcePort = Prelude.pure newValue, ..}
instance Property "NoteText" AwsSecurityFindingFiltersProperty where
  type PropertyType "NoteText" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {noteText = Prelude.pure newValue, ..}
instance Property "NoteUpdatedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "NoteUpdatedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {noteUpdatedAt = Prelude.pure newValue, ..}
instance Property "NoteUpdatedBy" AwsSecurityFindingFiltersProperty where
  type PropertyType "NoteUpdatedBy" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {noteUpdatedBy = Prelude.pure newValue, ..}
instance Property "ProcessLaunchedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "ProcessLaunchedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {processLaunchedAt = Prelude.pure newValue, ..}
instance Property "ProcessName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ProcessName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {processName = Prelude.pure newValue, ..}
instance Property "ProcessParentPid" AwsSecurityFindingFiltersProperty where
  type PropertyType "ProcessParentPid" AwsSecurityFindingFiltersProperty = [NumberFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {processParentPid = Prelude.pure newValue, ..}
instance Property "ProcessPath" AwsSecurityFindingFiltersProperty where
  type PropertyType "ProcessPath" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {processPath = Prelude.pure newValue, ..}
instance Property "ProcessPid" AwsSecurityFindingFiltersProperty where
  type PropertyType "ProcessPid" AwsSecurityFindingFiltersProperty = [NumberFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {processPid = Prelude.pure newValue, ..}
instance Property "ProcessTerminatedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "ProcessTerminatedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {processTerminatedAt = Prelude.pure newValue, ..}
instance Property "ProductArn" AwsSecurityFindingFiltersProperty where
  type PropertyType "ProductArn" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {productArn = Prelude.pure newValue, ..}
instance Property "ProductFields" AwsSecurityFindingFiltersProperty where
  type PropertyType "ProductFields" AwsSecurityFindingFiltersProperty = [MapFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {productFields = Prelude.pure newValue, ..}
instance Property "ProductName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ProductName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {productName = Prelude.pure newValue, ..}
instance Property "RecommendationText" AwsSecurityFindingFiltersProperty where
  type PropertyType "RecommendationText" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {recommendationText = Prelude.pure newValue, ..}
instance Property "RecordState" AwsSecurityFindingFiltersProperty where
  type PropertyType "RecordState" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {recordState = Prelude.pure newValue, ..}
instance Property "Region" AwsSecurityFindingFiltersProperty where
  type PropertyType "Region" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {region = Prelude.pure newValue, ..}
instance Property "RelatedFindingsId" AwsSecurityFindingFiltersProperty where
  type PropertyType "RelatedFindingsId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {relatedFindingsId = Prelude.pure newValue, ..}
instance Property "RelatedFindingsProductArn" AwsSecurityFindingFiltersProperty where
  type PropertyType "RelatedFindingsProductArn" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {relatedFindingsProductArn = Prelude.pure newValue, ..}
instance Property "ResourceApplicationArn" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceApplicationArn" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceApplicationArn = Prelude.pure newValue, ..}
instance Property "ResourceApplicationName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceApplicationName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceApplicationName = Prelude.pure newValue, ..}
instance Property "ResourceAwsEc2InstanceIamInstanceProfileArn" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsEc2InstanceIamInstanceProfileArn" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsEc2InstanceIamInstanceProfileArn = Prelude.pure
                                                         newValue,
         ..}
instance Property "ResourceAwsEc2InstanceImageId" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsEc2InstanceImageId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsEc2InstanceImageId = Prelude.pure newValue, ..}
instance Property "ResourceAwsEc2InstanceIpV4Addresses" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsEc2InstanceIpV4Addresses" AwsSecurityFindingFiltersProperty = [IpFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsEc2InstanceIpV4Addresses = Prelude.pure newValue, ..}
instance Property "ResourceAwsEc2InstanceIpV6Addresses" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsEc2InstanceIpV6Addresses" AwsSecurityFindingFiltersProperty = [IpFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsEc2InstanceIpV6Addresses = Prelude.pure newValue, ..}
instance Property "ResourceAwsEc2InstanceKeyName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsEc2InstanceKeyName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsEc2InstanceKeyName = Prelude.pure newValue, ..}
instance Property "ResourceAwsEc2InstanceLaunchedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsEc2InstanceLaunchedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsEc2InstanceLaunchedAt = Prelude.pure newValue, ..}
instance Property "ResourceAwsEc2InstanceSubnetId" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsEc2InstanceSubnetId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsEc2InstanceSubnetId = Prelude.pure newValue, ..}
instance Property "ResourceAwsEc2InstanceType" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsEc2InstanceType" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsEc2InstanceType = Prelude.pure newValue, ..}
instance Property "ResourceAwsEc2InstanceVpcId" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsEc2InstanceVpcId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsEc2InstanceVpcId = Prelude.pure newValue, ..}
instance Property "ResourceAwsIamAccessKeyCreatedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsIamAccessKeyCreatedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsIamAccessKeyCreatedAt = Prelude.pure newValue, ..}
instance Property "ResourceAwsIamAccessKeyPrincipalName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsIamAccessKeyPrincipalName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsIamAccessKeyPrincipalName = Prelude.pure newValue, ..}
instance Property "ResourceAwsIamAccessKeyStatus" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsIamAccessKeyStatus" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsIamAccessKeyStatus = Prelude.pure newValue, ..}
instance Property "ResourceAwsIamUserUserName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsIamUserUserName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsIamUserUserName = Prelude.pure newValue, ..}
instance Property "ResourceAwsS3BucketOwnerId" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsS3BucketOwnerId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsS3BucketOwnerId = Prelude.pure newValue, ..}
instance Property "ResourceAwsS3BucketOwnerName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceAwsS3BucketOwnerName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceAwsS3BucketOwnerName = Prelude.pure newValue, ..}
instance Property "ResourceContainerImageId" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceContainerImageId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceContainerImageId = Prelude.pure newValue, ..}
instance Property "ResourceContainerImageName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceContainerImageName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceContainerImageName = Prelude.pure newValue, ..}
instance Property "ResourceContainerLaunchedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceContainerLaunchedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceContainerLaunchedAt = Prelude.pure newValue, ..}
instance Property "ResourceContainerName" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceContainerName" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceContainerName = Prelude.pure newValue, ..}
instance Property "ResourceDetailsOther" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceDetailsOther" AwsSecurityFindingFiltersProperty = [MapFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceDetailsOther = Prelude.pure newValue, ..}
instance Property "ResourceId" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceId" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceId = Prelude.pure newValue, ..}
instance Property "ResourcePartition" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourcePartition" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourcePartition = Prelude.pure newValue, ..}
instance Property "ResourceRegion" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceRegion" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceRegion = Prelude.pure newValue, ..}
instance Property "ResourceTags" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceTags" AwsSecurityFindingFiltersProperty = [MapFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceTags = Prelude.pure newValue, ..}
instance Property "ResourceType" AwsSecurityFindingFiltersProperty where
  type PropertyType "ResourceType" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {resourceType = Prelude.pure newValue, ..}
instance Property "Sample" AwsSecurityFindingFiltersProperty where
  type PropertyType "Sample" AwsSecurityFindingFiltersProperty = [BooleanFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {sample = Prelude.pure newValue, ..}
instance Property "SeverityLabel" AwsSecurityFindingFiltersProperty where
  type PropertyType "SeverityLabel" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {severityLabel = Prelude.pure newValue, ..}
instance Property "SourceUrl" AwsSecurityFindingFiltersProperty where
  type PropertyType "SourceUrl" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {sourceUrl = Prelude.pure newValue, ..}
instance Property "ThreatIntelIndicatorCategory" AwsSecurityFindingFiltersProperty where
  type PropertyType "ThreatIntelIndicatorCategory" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {threatIntelIndicatorCategory = Prelude.pure newValue, ..}
instance Property "ThreatIntelIndicatorLastObservedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "ThreatIntelIndicatorLastObservedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {threatIntelIndicatorLastObservedAt = Prelude.pure newValue, ..}
instance Property "ThreatIntelIndicatorSource" AwsSecurityFindingFiltersProperty where
  type PropertyType "ThreatIntelIndicatorSource" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {threatIntelIndicatorSource = Prelude.pure newValue, ..}
instance Property "ThreatIntelIndicatorSourceUrl" AwsSecurityFindingFiltersProperty where
  type PropertyType "ThreatIntelIndicatorSourceUrl" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {threatIntelIndicatorSourceUrl = Prelude.pure newValue, ..}
instance Property "ThreatIntelIndicatorType" AwsSecurityFindingFiltersProperty where
  type PropertyType "ThreatIntelIndicatorType" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {threatIntelIndicatorType = Prelude.pure newValue, ..}
instance Property "ThreatIntelIndicatorValue" AwsSecurityFindingFiltersProperty where
  type PropertyType "ThreatIntelIndicatorValue" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {threatIntelIndicatorValue = Prelude.pure newValue, ..}
instance Property "Title" AwsSecurityFindingFiltersProperty where
  type PropertyType "Title" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {title = Prelude.pure newValue, ..}
instance Property "Type" AwsSecurityFindingFiltersProperty where
  type PropertyType "Type" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {type' = Prelude.pure newValue, ..}
instance Property "UpdatedAt" AwsSecurityFindingFiltersProperty where
  type PropertyType "UpdatedAt" AwsSecurityFindingFiltersProperty = [DateFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {updatedAt = Prelude.pure newValue, ..}
instance Property "UserDefinedFields" AwsSecurityFindingFiltersProperty where
  type PropertyType "UserDefinedFields" AwsSecurityFindingFiltersProperty = [MapFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {userDefinedFields = Prelude.pure newValue, ..}
instance Property "VerificationState" AwsSecurityFindingFiltersProperty where
  type PropertyType "VerificationState" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {verificationState = Prelude.pure newValue, ..}
instance Property "VulnerabilitiesExploitAvailable" AwsSecurityFindingFiltersProperty where
  type PropertyType "VulnerabilitiesExploitAvailable" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {vulnerabilitiesExploitAvailable = Prelude.pure newValue, ..}
instance Property "VulnerabilitiesFixAvailable" AwsSecurityFindingFiltersProperty where
  type PropertyType "VulnerabilitiesFixAvailable" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {vulnerabilitiesFixAvailable = Prelude.pure newValue, ..}
instance Property "WorkflowState" AwsSecurityFindingFiltersProperty where
  type PropertyType "WorkflowState" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {workflowState = Prelude.pure newValue, ..}
instance Property "WorkflowStatus" AwsSecurityFindingFiltersProperty where
  type PropertyType "WorkflowStatus" AwsSecurityFindingFiltersProperty = [StringFilterProperty]
  set newValue AwsSecurityFindingFiltersProperty {..}
    = AwsSecurityFindingFiltersProperty
        {workflowStatus = Prelude.pure newValue, ..}