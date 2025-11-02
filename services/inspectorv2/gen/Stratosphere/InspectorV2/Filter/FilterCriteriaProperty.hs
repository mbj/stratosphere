module Stratosphere.InspectorV2.Filter.FilterCriteriaProperty (
        module Exports, FilterCriteriaProperty(..),
        mkFilterCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.Filter.DateFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.Filter.MapFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.Filter.NumberFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.Filter.PackageFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.Filter.PortRangeFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.Filter.StringFilterProperty as Exports
import Stratosphere.ResourceProperties
data FilterCriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html>
    FilterCriteriaProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-awsaccountid>
                            awsAccountId :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-componentid>
                            componentId :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-componenttype>
                            componentType :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-ec2instanceimageid>
                            ec2InstanceImageId :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-ec2instancesubnetid>
                            ec2InstanceSubnetId :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-ec2instancevpcid>
                            ec2InstanceVpcId :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-ecrimagearchitecture>
                            ecrImageArchitecture :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-ecrimagehash>
                            ecrImageHash :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-ecrimagepushedat>
                            ecrImagePushedAt :: (Prelude.Maybe [DateFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-ecrimageregistry>
                            ecrImageRegistry :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-ecrimagerepositoryname>
                            ecrImageRepositoryName :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-ecrimagetags>
                            ecrImageTags :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-findingarn>
                            findingArn :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-findingstatus>
                            findingStatus :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-findingtype>
                            findingType :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-firstobservedat>
                            firstObservedAt :: (Prelude.Maybe [DateFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-inspectorscore>
                            inspectorScore :: (Prelude.Maybe [NumberFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-lastobservedat>
                            lastObservedAt :: (Prelude.Maybe [DateFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-networkprotocol>
                            networkProtocol :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-portrange>
                            portRange :: (Prelude.Maybe [PortRangeFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-relatedvulnerabilities>
                            relatedVulnerabilities :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-resourceid>
                            resourceId :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-resourcetags>
                            resourceTags :: (Prelude.Maybe [MapFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-resourcetype>
                            resourceType :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-severity>
                            severity :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-title>
                            title :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-updatedat>
                            updatedAt :: (Prelude.Maybe [DateFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-vendorseverity>
                            vendorSeverity :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-vulnerabilityid>
                            vulnerabilityId :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-vulnerabilitysource>
                            vulnerabilitySource :: (Prelude.Maybe [StringFilterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-filtercriteria.html#cfn-inspectorv2-filter-filtercriteria-vulnerablepackages>
                            vulnerablePackages :: (Prelude.Maybe [PackageFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterCriteriaProperty :: FilterCriteriaProperty
mkFilterCriteriaProperty
  = FilterCriteriaProperty
      {haddock_workaround_ = (), awsAccountId = Prelude.Nothing,
       componentId = Prelude.Nothing, componentType = Prelude.Nothing,
       ec2InstanceImageId = Prelude.Nothing,
       ec2InstanceSubnetId = Prelude.Nothing,
       ec2InstanceVpcId = Prelude.Nothing,
       ecrImageArchitecture = Prelude.Nothing,
       ecrImageHash = Prelude.Nothing, ecrImagePushedAt = Prelude.Nothing,
       ecrImageRegistry = Prelude.Nothing,
       ecrImageRepositoryName = Prelude.Nothing,
       ecrImageTags = Prelude.Nothing, findingArn = Prelude.Nothing,
       findingStatus = Prelude.Nothing, findingType = Prelude.Nothing,
       firstObservedAt = Prelude.Nothing,
       inspectorScore = Prelude.Nothing, lastObservedAt = Prelude.Nothing,
       networkProtocol = Prelude.Nothing, portRange = Prelude.Nothing,
       relatedVulnerabilities = Prelude.Nothing,
       resourceId = Prelude.Nothing, resourceTags = Prelude.Nothing,
       resourceType = Prelude.Nothing, severity = Prelude.Nothing,
       title = Prelude.Nothing, updatedAt = Prelude.Nothing,
       vendorSeverity = Prelude.Nothing,
       vulnerabilityId = Prelude.Nothing,
       vulnerabilitySource = Prelude.Nothing,
       vulnerablePackages = Prelude.Nothing}
instance ToResourceProperties FilterCriteriaProperty where
  toResourceProperties FilterCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::Filter.FilterCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "ComponentId" Prelude.<$> componentId,
                            (JSON..=) "ComponentType" Prelude.<$> componentType,
                            (JSON..=) "Ec2InstanceImageId" Prelude.<$> ec2InstanceImageId,
                            (JSON..=) "Ec2InstanceSubnetId" Prelude.<$> ec2InstanceSubnetId,
                            (JSON..=) "Ec2InstanceVpcId" Prelude.<$> ec2InstanceVpcId,
                            (JSON..=) "EcrImageArchitecture" Prelude.<$> ecrImageArchitecture,
                            (JSON..=) "EcrImageHash" Prelude.<$> ecrImageHash,
                            (JSON..=) "EcrImagePushedAt" Prelude.<$> ecrImagePushedAt,
                            (JSON..=) "EcrImageRegistry" Prelude.<$> ecrImageRegistry,
                            (JSON..=) "EcrImageRepositoryName"
                              Prelude.<$> ecrImageRepositoryName,
                            (JSON..=) "EcrImageTags" Prelude.<$> ecrImageTags,
                            (JSON..=) "FindingArn" Prelude.<$> findingArn,
                            (JSON..=) "FindingStatus" Prelude.<$> findingStatus,
                            (JSON..=) "FindingType" Prelude.<$> findingType,
                            (JSON..=) "FirstObservedAt" Prelude.<$> firstObservedAt,
                            (JSON..=) "InspectorScore" Prelude.<$> inspectorScore,
                            (JSON..=) "LastObservedAt" Prelude.<$> lastObservedAt,
                            (JSON..=) "NetworkProtocol" Prelude.<$> networkProtocol,
                            (JSON..=) "PortRange" Prelude.<$> portRange,
                            (JSON..=) "RelatedVulnerabilities"
                              Prelude.<$> relatedVulnerabilities,
                            (JSON..=) "ResourceId" Prelude.<$> resourceId,
                            (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                            (JSON..=) "ResourceType" Prelude.<$> resourceType,
                            (JSON..=) "Severity" Prelude.<$> severity,
                            (JSON..=) "Title" Prelude.<$> title,
                            (JSON..=) "UpdatedAt" Prelude.<$> updatedAt,
                            (JSON..=) "VendorSeverity" Prelude.<$> vendorSeverity,
                            (JSON..=) "VulnerabilityId" Prelude.<$> vulnerabilityId,
                            (JSON..=) "VulnerabilitySource" Prelude.<$> vulnerabilitySource,
                            (JSON..=) "VulnerablePackages" Prelude.<$> vulnerablePackages])}
instance JSON.ToJSON FilterCriteriaProperty where
  toJSON FilterCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "ComponentId" Prelude.<$> componentId,
               (JSON..=) "ComponentType" Prelude.<$> componentType,
               (JSON..=) "Ec2InstanceImageId" Prelude.<$> ec2InstanceImageId,
               (JSON..=) "Ec2InstanceSubnetId" Prelude.<$> ec2InstanceSubnetId,
               (JSON..=) "Ec2InstanceVpcId" Prelude.<$> ec2InstanceVpcId,
               (JSON..=) "EcrImageArchitecture" Prelude.<$> ecrImageArchitecture,
               (JSON..=) "EcrImageHash" Prelude.<$> ecrImageHash,
               (JSON..=) "EcrImagePushedAt" Prelude.<$> ecrImagePushedAt,
               (JSON..=) "EcrImageRegistry" Prelude.<$> ecrImageRegistry,
               (JSON..=) "EcrImageRepositoryName"
                 Prelude.<$> ecrImageRepositoryName,
               (JSON..=) "EcrImageTags" Prelude.<$> ecrImageTags,
               (JSON..=) "FindingArn" Prelude.<$> findingArn,
               (JSON..=) "FindingStatus" Prelude.<$> findingStatus,
               (JSON..=) "FindingType" Prelude.<$> findingType,
               (JSON..=) "FirstObservedAt" Prelude.<$> firstObservedAt,
               (JSON..=) "InspectorScore" Prelude.<$> inspectorScore,
               (JSON..=) "LastObservedAt" Prelude.<$> lastObservedAt,
               (JSON..=) "NetworkProtocol" Prelude.<$> networkProtocol,
               (JSON..=) "PortRange" Prelude.<$> portRange,
               (JSON..=) "RelatedVulnerabilities"
                 Prelude.<$> relatedVulnerabilities,
               (JSON..=) "ResourceId" Prelude.<$> resourceId,
               (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
               (JSON..=) "ResourceType" Prelude.<$> resourceType,
               (JSON..=) "Severity" Prelude.<$> severity,
               (JSON..=) "Title" Prelude.<$> title,
               (JSON..=) "UpdatedAt" Prelude.<$> updatedAt,
               (JSON..=) "VendorSeverity" Prelude.<$> vendorSeverity,
               (JSON..=) "VulnerabilityId" Prelude.<$> vulnerabilityId,
               (JSON..=) "VulnerabilitySource" Prelude.<$> vulnerabilitySource,
               (JSON..=) "VulnerablePackages" Prelude.<$> vulnerablePackages]))
instance Property "AwsAccountId" FilterCriteriaProperty where
  type PropertyType "AwsAccountId" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {awsAccountId = Prelude.pure newValue, ..}
instance Property "ComponentId" FilterCriteriaProperty where
  type PropertyType "ComponentId" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {componentId = Prelude.pure newValue, ..}
instance Property "ComponentType" FilterCriteriaProperty where
  type PropertyType "ComponentType" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {componentType = Prelude.pure newValue, ..}
instance Property "Ec2InstanceImageId" FilterCriteriaProperty where
  type PropertyType "Ec2InstanceImageId" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {ec2InstanceImageId = Prelude.pure newValue, ..}
instance Property "Ec2InstanceSubnetId" FilterCriteriaProperty where
  type PropertyType "Ec2InstanceSubnetId" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {ec2InstanceSubnetId = Prelude.pure newValue, ..}
instance Property "Ec2InstanceVpcId" FilterCriteriaProperty where
  type PropertyType "Ec2InstanceVpcId" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {ec2InstanceVpcId = Prelude.pure newValue, ..}
instance Property "EcrImageArchitecture" FilterCriteriaProperty where
  type PropertyType "EcrImageArchitecture" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {ecrImageArchitecture = Prelude.pure newValue, ..}
instance Property "EcrImageHash" FilterCriteriaProperty where
  type PropertyType "EcrImageHash" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {ecrImageHash = Prelude.pure newValue, ..}
instance Property "EcrImagePushedAt" FilterCriteriaProperty where
  type PropertyType "EcrImagePushedAt" FilterCriteriaProperty = [DateFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {ecrImagePushedAt = Prelude.pure newValue, ..}
instance Property "EcrImageRegistry" FilterCriteriaProperty where
  type PropertyType "EcrImageRegistry" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {ecrImageRegistry = Prelude.pure newValue, ..}
instance Property "EcrImageRepositoryName" FilterCriteriaProperty where
  type PropertyType "EcrImageRepositoryName" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {ecrImageRepositoryName = Prelude.pure newValue, ..}
instance Property "EcrImageTags" FilterCriteriaProperty where
  type PropertyType "EcrImageTags" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {ecrImageTags = Prelude.pure newValue, ..}
instance Property "FindingArn" FilterCriteriaProperty where
  type PropertyType "FindingArn" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {findingArn = Prelude.pure newValue, ..}
instance Property "FindingStatus" FilterCriteriaProperty where
  type PropertyType "FindingStatus" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {findingStatus = Prelude.pure newValue, ..}
instance Property "FindingType" FilterCriteriaProperty where
  type PropertyType "FindingType" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {findingType = Prelude.pure newValue, ..}
instance Property "FirstObservedAt" FilterCriteriaProperty where
  type PropertyType "FirstObservedAt" FilterCriteriaProperty = [DateFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {firstObservedAt = Prelude.pure newValue, ..}
instance Property "InspectorScore" FilterCriteriaProperty where
  type PropertyType "InspectorScore" FilterCriteriaProperty = [NumberFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {inspectorScore = Prelude.pure newValue, ..}
instance Property "LastObservedAt" FilterCriteriaProperty where
  type PropertyType "LastObservedAt" FilterCriteriaProperty = [DateFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {lastObservedAt = Prelude.pure newValue, ..}
instance Property "NetworkProtocol" FilterCriteriaProperty where
  type PropertyType "NetworkProtocol" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {networkProtocol = Prelude.pure newValue, ..}
instance Property "PortRange" FilterCriteriaProperty where
  type PropertyType "PortRange" FilterCriteriaProperty = [PortRangeFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {portRange = Prelude.pure newValue, ..}
instance Property "RelatedVulnerabilities" FilterCriteriaProperty where
  type PropertyType "RelatedVulnerabilities" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {relatedVulnerabilities = Prelude.pure newValue, ..}
instance Property "ResourceId" FilterCriteriaProperty where
  type PropertyType "ResourceId" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {resourceId = Prelude.pure newValue, ..}
instance Property "ResourceTags" FilterCriteriaProperty where
  type PropertyType "ResourceTags" FilterCriteriaProperty = [MapFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {resourceTags = Prelude.pure newValue, ..}
instance Property "ResourceType" FilterCriteriaProperty where
  type PropertyType "ResourceType" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {resourceType = Prelude.pure newValue, ..}
instance Property "Severity" FilterCriteriaProperty where
  type PropertyType "Severity" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {severity = Prelude.pure newValue, ..}
instance Property "Title" FilterCriteriaProperty where
  type PropertyType "Title" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {title = Prelude.pure newValue, ..}
instance Property "UpdatedAt" FilterCriteriaProperty where
  type PropertyType "UpdatedAt" FilterCriteriaProperty = [DateFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty {updatedAt = Prelude.pure newValue, ..}
instance Property "VendorSeverity" FilterCriteriaProperty where
  type PropertyType "VendorSeverity" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {vendorSeverity = Prelude.pure newValue, ..}
instance Property "VulnerabilityId" FilterCriteriaProperty where
  type PropertyType "VulnerabilityId" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {vulnerabilityId = Prelude.pure newValue, ..}
instance Property "VulnerabilitySource" FilterCriteriaProperty where
  type PropertyType "VulnerabilitySource" FilterCriteriaProperty = [StringFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {vulnerabilitySource = Prelude.pure newValue, ..}
instance Property "VulnerablePackages" FilterCriteriaProperty where
  type PropertyType "VulnerablePackages" FilterCriteriaProperty = [PackageFilterProperty]
  set newValue FilterCriteriaProperty {..}
    = FilterCriteriaProperty
        {vulnerablePackages = Prelude.pure newValue, ..}