module Stratosphere.SecurityHub.AutomationRule.AutomationRulesFindingFiltersProperty (
        module Exports, AutomationRulesFindingFiltersProperty(..),
        mkAutomationRulesFindingFiltersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.DateFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.MapFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.NumberFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.StringFilterProperty as Exports
import Stratosphere.ResourceProperties
data AutomationRulesFindingFiltersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html>
    AutomationRulesFindingFiltersProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-awsaccountid>
                                           awsAccountId :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-companyname>
                                           companyName :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-complianceassociatedstandardsid>
                                           complianceAssociatedStandardsId :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-compliancesecuritycontrolid>
                                           complianceSecurityControlId :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-compliancestatus>
                                           complianceStatus :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-confidence>
                                           confidence :: (Prelude.Maybe [NumberFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-createdat>
                                           createdAt :: (Prelude.Maybe [DateFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-criticality>
                                           criticality :: (Prelude.Maybe [NumberFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-description>
                                           description :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-firstobservedat>
                                           firstObservedAt :: (Prelude.Maybe [DateFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-generatorid>
                                           generatorId :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-id>
                                           id :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-lastobservedat>
                                           lastObservedAt :: (Prelude.Maybe [DateFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-notetext>
                                           noteText :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-noteupdatedat>
                                           noteUpdatedAt :: (Prelude.Maybe [DateFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-noteupdatedby>
                                           noteUpdatedBy :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-productarn>
                                           productArn :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-productname>
                                           productName :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-recordstate>
                                           recordState :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-relatedfindingsid>
                                           relatedFindingsId :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-relatedfindingsproductarn>
                                           relatedFindingsProductArn :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-resourcedetailsother>
                                           resourceDetailsOther :: (Prelude.Maybe [MapFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-resourceid>
                                           resourceId :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-resourcepartition>
                                           resourcePartition :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-resourceregion>
                                           resourceRegion :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-resourcetags>
                                           resourceTags :: (Prelude.Maybe [MapFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-resourcetype>
                                           resourceType :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-severitylabel>
                                           severityLabel :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-sourceurl>
                                           sourceUrl :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-title>
                                           title :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-type>
                                           type' :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-updatedat>
                                           updatedAt :: (Prelude.Maybe [DateFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-userdefinedfields>
                                           userDefinedFields :: (Prelude.Maybe [MapFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-verificationstate>
                                           verificationState :: (Prelude.Maybe [StringFilterProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfilters.html#cfn-securityhub-automationrule-automationrulesfindingfilters-workflowstatus>
                                           workflowStatus :: (Prelude.Maybe [StringFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomationRulesFindingFiltersProperty ::
  AutomationRulesFindingFiltersProperty
mkAutomationRulesFindingFiltersProperty
  = AutomationRulesFindingFiltersProperty
      {haddock_workaround_ = (), awsAccountId = Prelude.Nothing,
       companyName = Prelude.Nothing,
       complianceAssociatedStandardsId = Prelude.Nothing,
       complianceSecurityControlId = Prelude.Nothing,
       complianceStatus = Prelude.Nothing, confidence = Prelude.Nothing,
       createdAt = Prelude.Nothing, criticality = Prelude.Nothing,
       description = Prelude.Nothing, firstObservedAt = Prelude.Nothing,
       generatorId = Prelude.Nothing, id = Prelude.Nothing,
       lastObservedAt = Prelude.Nothing, noteText = Prelude.Nothing,
       noteUpdatedAt = Prelude.Nothing, noteUpdatedBy = Prelude.Nothing,
       productArn = Prelude.Nothing, productName = Prelude.Nothing,
       recordState = Prelude.Nothing, relatedFindingsId = Prelude.Nothing,
       relatedFindingsProductArn = Prelude.Nothing,
       resourceDetailsOther = Prelude.Nothing,
       resourceId = Prelude.Nothing, resourcePartition = Prelude.Nothing,
       resourceRegion = Prelude.Nothing, resourceTags = Prelude.Nothing,
       resourceType = Prelude.Nothing, severityLabel = Prelude.Nothing,
       sourceUrl = Prelude.Nothing, title = Prelude.Nothing,
       type' = Prelude.Nothing, updatedAt = Prelude.Nothing,
       userDefinedFields = Prelude.Nothing,
       verificationState = Prelude.Nothing,
       workflowStatus = Prelude.Nothing}
instance ToResourceProperties AutomationRulesFindingFiltersProperty where
  toResourceProperties AutomationRulesFindingFiltersProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule.AutomationRulesFindingFilters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "CompanyName" Prelude.<$> companyName,
                            (JSON..=) "ComplianceAssociatedStandardsId"
                              Prelude.<$> complianceAssociatedStandardsId,
                            (JSON..=) "ComplianceSecurityControlId"
                              Prelude.<$> complianceSecurityControlId,
                            (JSON..=) "ComplianceStatus" Prelude.<$> complianceStatus,
                            (JSON..=) "Confidence" Prelude.<$> confidence,
                            (JSON..=) "CreatedAt" Prelude.<$> createdAt,
                            (JSON..=) "Criticality" Prelude.<$> criticality,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "FirstObservedAt" Prelude.<$> firstObservedAt,
                            (JSON..=) "GeneratorId" Prelude.<$> generatorId,
                            (JSON..=) "Id" Prelude.<$> id,
                            (JSON..=) "LastObservedAt" Prelude.<$> lastObservedAt,
                            (JSON..=) "NoteText" Prelude.<$> noteText,
                            (JSON..=) "NoteUpdatedAt" Prelude.<$> noteUpdatedAt,
                            (JSON..=) "NoteUpdatedBy" Prelude.<$> noteUpdatedBy,
                            (JSON..=) "ProductArn" Prelude.<$> productArn,
                            (JSON..=) "ProductName" Prelude.<$> productName,
                            (JSON..=) "RecordState" Prelude.<$> recordState,
                            (JSON..=) "RelatedFindingsId" Prelude.<$> relatedFindingsId,
                            (JSON..=) "RelatedFindingsProductArn"
                              Prelude.<$> relatedFindingsProductArn,
                            (JSON..=) "ResourceDetailsOther" Prelude.<$> resourceDetailsOther,
                            (JSON..=) "ResourceId" Prelude.<$> resourceId,
                            (JSON..=) "ResourcePartition" Prelude.<$> resourcePartition,
                            (JSON..=) "ResourceRegion" Prelude.<$> resourceRegion,
                            (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                            (JSON..=) "ResourceType" Prelude.<$> resourceType,
                            (JSON..=) "SeverityLabel" Prelude.<$> severityLabel,
                            (JSON..=) "SourceUrl" Prelude.<$> sourceUrl,
                            (JSON..=) "Title" Prelude.<$> title,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "UpdatedAt" Prelude.<$> updatedAt,
                            (JSON..=) "UserDefinedFields" Prelude.<$> userDefinedFields,
                            (JSON..=) "VerificationState" Prelude.<$> verificationState,
                            (JSON..=) "WorkflowStatus" Prelude.<$> workflowStatus])}
instance JSON.ToJSON AutomationRulesFindingFiltersProperty where
  toJSON AutomationRulesFindingFiltersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "CompanyName" Prelude.<$> companyName,
               (JSON..=) "ComplianceAssociatedStandardsId"
                 Prelude.<$> complianceAssociatedStandardsId,
               (JSON..=) "ComplianceSecurityControlId"
                 Prelude.<$> complianceSecurityControlId,
               (JSON..=) "ComplianceStatus" Prelude.<$> complianceStatus,
               (JSON..=) "Confidence" Prelude.<$> confidence,
               (JSON..=) "CreatedAt" Prelude.<$> createdAt,
               (JSON..=) "Criticality" Prelude.<$> criticality,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "FirstObservedAt" Prelude.<$> firstObservedAt,
               (JSON..=) "GeneratorId" Prelude.<$> generatorId,
               (JSON..=) "Id" Prelude.<$> id,
               (JSON..=) "LastObservedAt" Prelude.<$> lastObservedAt,
               (JSON..=) "NoteText" Prelude.<$> noteText,
               (JSON..=) "NoteUpdatedAt" Prelude.<$> noteUpdatedAt,
               (JSON..=) "NoteUpdatedBy" Prelude.<$> noteUpdatedBy,
               (JSON..=) "ProductArn" Prelude.<$> productArn,
               (JSON..=) "ProductName" Prelude.<$> productName,
               (JSON..=) "RecordState" Prelude.<$> recordState,
               (JSON..=) "RelatedFindingsId" Prelude.<$> relatedFindingsId,
               (JSON..=) "RelatedFindingsProductArn"
                 Prelude.<$> relatedFindingsProductArn,
               (JSON..=) "ResourceDetailsOther" Prelude.<$> resourceDetailsOther,
               (JSON..=) "ResourceId" Prelude.<$> resourceId,
               (JSON..=) "ResourcePartition" Prelude.<$> resourcePartition,
               (JSON..=) "ResourceRegion" Prelude.<$> resourceRegion,
               (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
               (JSON..=) "ResourceType" Prelude.<$> resourceType,
               (JSON..=) "SeverityLabel" Prelude.<$> severityLabel,
               (JSON..=) "SourceUrl" Prelude.<$> sourceUrl,
               (JSON..=) "Title" Prelude.<$> title,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "UpdatedAt" Prelude.<$> updatedAt,
               (JSON..=) "UserDefinedFields" Prelude.<$> userDefinedFields,
               (JSON..=) "VerificationState" Prelude.<$> verificationState,
               (JSON..=) "WorkflowStatus" Prelude.<$> workflowStatus]))
instance Property "AwsAccountId" AutomationRulesFindingFiltersProperty where
  type PropertyType "AwsAccountId" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {awsAccountId = Prelude.pure newValue, ..}
instance Property "CompanyName" AutomationRulesFindingFiltersProperty where
  type PropertyType "CompanyName" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {companyName = Prelude.pure newValue, ..}
instance Property "ComplianceAssociatedStandardsId" AutomationRulesFindingFiltersProperty where
  type PropertyType "ComplianceAssociatedStandardsId" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {complianceAssociatedStandardsId = Prelude.pure newValue, ..}
instance Property "ComplianceSecurityControlId" AutomationRulesFindingFiltersProperty where
  type PropertyType "ComplianceSecurityControlId" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {complianceSecurityControlId = Prelude.pure newValue, ..}
instance Property "ComplianceStatus" AutomationRulesFindingFiltersProperty where
  type PropertyType "ComplianceStatus" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {complianceStatus = Prelude.pure newValue, ..}
instance Property "Confidence" AutomationRulesFindingFiltersProperty where
  type PropertyType "Confidence" AutomationRulesFindingFiltersProperty = [NumberFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {confidence = Prelude.pure newValue, ..}
instance Property "CreatedAt" AutomationRulesFindingFiltersProperty where
  type PropertyType "CreatedAt" AutomationRulesFindingFiltersProperty = [DateFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {createdAt = Prelude.pure newValue, ..}
instance Property "Criticality" AutomationRulesFindingFiltersProperty where
  type PropertyType "Criticality" AutomationRulesFindingFiltersProperty = [NumberFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {criticality = Prelude.pure newValue, ..}
instance Property "Description" AutomationRulesFindingFiltersProperty where
  type PropertyType "Description" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {description = Prelude.pure newValue, ..}
instance Property "FirstObservedAt" AutomationRulesFindingFiltersProperty where
  type PropertyType "FirstObservedAt" AutomationRulesFindingFiltersProperty = [DateFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {firstObservedAt = Prelude.pure newValue, ..}
instance Property "GeneratorId" AutomationRulesFindingFiltersProperty where
  type PropertyType "GeneratorId" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {generatorId = Prelude.pure newValue, ..}
instance Property "Id" AutomationRulesFindingFiltersProperty where
  type PropertyType "Id" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {id = Prelude.pure newValue, ..}
instance Property "LastObservedAt" AutomationRulesFindingFiltersProperty where
  type PropertyType "LastObservedAt" AutomationRulesFindingFiltersProperty = [DateFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {lastObservedAt = Prelude.pure newValue, ..}
instance Property "NoteText" AutomationRulesFindingFiltersProperty where
  type PropertyType "NoteText" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {noteText = Prelude.pure newValue, ..}
instance Property "NoteUpdatedAt" AutomationRulesFindingFiltersProperty where
  type PropertyType "NoteUpdatedAt" AutomationRulesFindingFiltersProperty = [DateFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {noteUpdatedAt = Prelude.pure newValue, ..}
instance Property "NoteUpdatedBy" AutomationRulesFindingFiltersProperty where
  type PropertyType "NoteUpdatedBy" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {noteUpdatedBy = Prelude.pure newValue, ..}
instance Property "ProductArn" AutomationRulesFindingFiltersProperty where
  type PropertyType "ProductArn" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {productArn = Prelude.pure newValue, ..}
instance Property "ProductName" AutomationRulesFindingFiltersProperty where
  type PropertyType "ProductName" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {productName = Prelude.pure newValue, ..}
instance Property "RecordState" AutomationRulesFindingFiltersProperty where
  type PropertyType "RecordState" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {recordState = Prelude.pure newValue, ..}
instance Property "RelatedFindingsId" AutomationRulesFindingFiltersProperty where
  type PropertyType "RelatedFindingsId" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {relatedFindingsId = Prelude.pure newValue, ..}
instance Property "RelatedFindingsProductArn" AutomationRulesFindingFiltersProperty where
  type PropertyType "RelatedFindingsProductArn" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {relatedFindingsProductArn = Prelude.pure newValue, ..}
instance Property "ResourceDetailsOther" AutomationRulesFindingFiltersProperty where
  type PropertyType "ResourceDetailsOther" AutomationRulesFindingFiltersProperty = [MapFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {resourceDetailsOther = Prelude.pure newValue, ..}
instance Property "ResourceId" AutomationRulesFindingFiltersProperty where
  type PropertyType "ResourceId" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {resourceId = Prelude.pure newValue, ..}
instance Property "ResourcePartition" AutomationRulesFindingFiltersProperty where
  type PropertyType "ResourcePartition" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {resourcePartition = Prelude.pure newValue, ..}
instance Property "ResourceRegion" AutomationRulesFindingFiltersProperty where
  type PropertyType "ResourceRegion" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {resourceRegion = Prelude.pure newValue, ..}
instance Property "ResourceTags" AutomationRulesFindingFiltersProperty where
  type PropertyType "ResourceTags" AutomationRulesFindingFiltersProperty = [MapFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {resourceTags = Prelude.pure newValue, ..}
instance Property "ResourceType" AutomationRulesFindingFiltersProperty where
  type PropertyType "ResourceType" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {resourceType = Prelude.pure newValue, ..}
instance Property "SeverityLabel" AutomationRulesFindingFiltersProperty where
  type PropertyType "SeverityLabel" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {severityLabel = Prelude.pure newValue, ..}
instance Property "SourceUrl" AutomationRulesFindingFiltersProperty where
  type PropertyType "SourceUrl" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {sourceUrl = Prelude.pure newValue, ..}
instance Property "Title" AutomationRulesFindingFiltersProperty where
  type PropertyType "Title" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {title = Prelude.pure newValue, ..}
instance Property "Type" AutomationRulesFindingFiltersProperty where
  type PropertyType "Type" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {type' = Prelude.pure newValue, ..}
instance Property "UpdatedAt" AutomationRulesFindingFiltersProperty where
  type PropertyType "UpdatedAt" AutomationRulesFindingFiltersProperty = [DateFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {updatedAt = Prelude.pure newValue, ..}
instance Property "UserDefinedFields" AutomationRulesFindingFiltersProperty where
  type PropertyType "UserDefinedFields" AutomationRulesFindingFiltersProperty = [MapFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {userDefinedFields = Prelude.pure newValue, ..}
instance Property "VerificationState" AutomationRulesFindingFiltersProperty where
  type PropertyType "VerificationState" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {verificationState = Prelude.pure newValue, ..}
instance Property "WorkflowStatus" AutomationRulesFindingFiltersProperty where
  type PropertyType "WorkflowStatus" AutomationRulesFindingFiltersProperty = [StringFilterProperty]
  set newValue AutomationRulesFindingFiltersProperty {..}
    = AutomationRulesFindingFiltersProperty
        {workflowStatus = Prelude.pure newValue, ..}