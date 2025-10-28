module Stratosphere.Batch.ComputeEnvironment.ComputeResourcesProperty (
        module Exports, ComputeResourcesProperty(..),
        mkComputeResourcesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.ComputeEnvironment.Ec2ConfigurationObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.ComputeEnvironment.LaunchTemplateSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeResourcesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html>
    ComputeResourcesProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-allocationstrategy>
                              allocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-bidpercentage>
                              bidPercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-desiredvcpus>
                              desiredvCpus :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-ec2configuration>
                              ec2Configuration :: (Prelude.Maybe [Ec2ConfigurationObjectProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-ec2keypair>
                              ec2KeyPair :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-imageid>
                              imageId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-instancerole>
                              instanceRole :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-instancetypes>
                              instanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-launchtemplate>
                              launchTemplate :: (Prelude.Maybe LaunchTemplateSpecificationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-maxvcpus>
                              maxvCpus :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-minvcpus>
                              minvCpus :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-placementgroup>
                              placementGroup :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-securitygroupids>
                              securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-spotiamfleetrole>
                              spotIamFleetRole :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-subnets>
                              subnets :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-tags>
                              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-type>
                              type' :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-updatetolatestimageversion>
                              updateToLatestImageVersion :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeResourcesProperty ::
  Value Prelude.Integer
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> ComputeResourcesProperty
mkComputeResourcesProperty maxvCpus subnets type'
  = ComputeResourcesProperty
      {haddock_workaround_ = (), maxvCpus = maxvCpus, subnets = subnets,
       type' = type', allocationStrategy = Prelude.Nothing,
       bidPercentage = Prelude.Nothing, desiredvCpus = Prelude.Nothing,
       ec2Configuration = Prelude.Nothing, ec2KeyPair = Prelude.Nothing,
       imageId = Prelude.Nothing, instanceRole = Prelude.Nothing,
       instanceTypes = Prelude.Nothing, launchTemplate = Prelude.Nothing,
       minvCpus = Prelude.Nothing, placementGroup = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing,
       spotIamFleetRole = Prelude.Nothing, tags = Prelude.Nothing,
       updateToLatestImageVersion = Prelude.Nothing}
instance ToResourceProperties ComputeResourcesProperty where
  toResourceProperties ComputeResourcesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ComputeEnvironment.ComputeResources",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxvCpus" JSON..= maxvCpus, "Subnets" JSON..= subnets,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                               (JSON..=) "BidPercentage" Prelude.<$> bidPercentage,
                               (JSON..=) "DesiredvCpus" Prelude.<$> desiredvCpus,
                               (JSON..=) "Ec2Configuration" Prelude.<$> ec2Configuration,
                               (JSON..=) "Ec2KeyPair" Prelude.<$> ec2KeyPair,
                               (JSON..=) "ImageId" Prelude.<$> imageId,
                               (JSON..=) "InstanceRole" Prelude.<$> instanceRole,
                               (JSON..=) "InstanceTypes" Prelude.<$> instanceTypes,
                               (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
                               (JSON..=) "MinvCpus" Prelude.<$> minvCpus,
                               (JSON..=) "PlacementGroup" Prelude.<$> placementGroup,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SpotIamFleetRole" Prelude.<$> spotIamFleetRole,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UpdateToLatestImageVersion"
                                 Prelude.<$> updateToLatestImageVersion]))}
instance JSON.ToJSON ComputeResourcesProperty where
  toJSON ComputeResourcesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxvCpus" JSON..= maxvCpus, "Subnets" JSON..= subnets,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                  (JSON..=) "BidPercentage" Prelude.<$> bidPercentage,
                  (JSON..=) "DesiredvCpus" Prelude.<$> desiredvCpus,
                  (JSON..=) "Ec2Configuration" Prelude.<$> ec2Configuration,
                  (JSON..=) "Ec2KeyPair" Prelude.<$> ec2KeyPair,
                  (JSON..=) "ImageId" Prelude.<$> imageId,
                  (JSON..=) "InstanceRole" Prelude.<$> instanceRole,
                  (JSON..=) "InstanceTypes" Prelude.<$> instanceTypes,
                  (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
                  (JSON..=) "MinvCpus" Prelude.<$> minvCpus,
                  (JSON..=) "PlacementGroup" Prelude.<$> placementGroup,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SpotIamFleetRole" Prelude.<$> spotIamFleetRole,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UpdateToLatestImageVersion"
                    Prelude.<$> updateToLatestImageVersion])))
instance Property "AllocationStrategy" ComputeResourcesProperty where
  type PropertyType "AllocationStrategy" ComputeResourcesProperty = Value Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {allocationStrategy = Prelude.pure newValue, ..}
instance Property "BidPercentage" ComputeResourcesProperty where
  type PropertyType "BidPercentage" ComputeResourcesProperty = Value Prelude.Integer
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {bidPercentage = Prelude.pure newValue, ..}
instance Property "DesiredvCpus" ComputeResourcesProperty where
  type PropertyType "DesiredvCpus" ComputeResourcesProperty = Value Prelude.Integer
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {desiredvCpus = Prelude.pure newValue, ..}
instance Property "Ec2Configuration" ComputeResourcesProperty where
  type PropertyType "Ec2Configuration" ComputeResourcesProperty = [Ec2ConfigurationObjectProperty]
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {ec2Configuration = Prelude.pure newValue, ..}
instance Property "Ec2KeyPair" ComputeResourcesProperty where
  type PropertyType "Ec2KeyPair" ComputeResourcesProperty = Value Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty {ec2KeyPair = Prelude.pure newValue, ..}
instance Property "ImageId" ComputeResourcesProperty where
  type PropertyType "ImageId" ComputeResourcesProperty = Value Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty {imageId = Prelude.pure newValue, ..}
instance Property "InstanceRole" ComputeResourcesProperty where
  type PropertyType "InstanceRole" ComputeResourcesProperty = Value Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {instanceRole = Prelude.pure newValue, ..}
instance Property "InstanceTypes" ComputeResourcesProperty where
  type PropertyType "InstanceTypes" ComputeResourcesProperty = ValueList Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {instanceTypes = Prelude.pure newValue, ..}
instance Property "LaunchTemplate" ComputeResourcesProperty where
  type PropertyType "LaunchTemplate" ComputeResourcesProperty = LaunchTemplateSpecificationProperty
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {launchTemplate = Prelude.pure newValue, ..}
instance Property "MaxvCpus" ComputeResourcesProperty where
  type PropertyType "MaxvCpus" ComputeResourcesProperty = Value Prelude.Integer
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty {maxvCpus = newValue, ..}
instance Property "MinvCpus" ComputeResourcesProperty where
  type PropertyType "MinvCpus" ComputeResourcesProperty = Value Prelude.Integer
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty {minvCpus = Prelude.pure newValue, ..}
instance Property "PlacementGroup" ComputeResourcesProperty where
  type PropertyType "PlacementGroup" ComputeResourcesProperty = Value Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {placementGroup = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" ComputeResourcesProperty where
  type PropertyType "SecurityGroupIds" ComputeResourcesProperty = ValueList Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SpotIamFleetRole" ComputeResourcesProperty where
  type PropertyType "SpotIamFleetRole" ComputeResourcesProperty = Value Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {spotIamFleetRole = Prelude.pure newValue, ..}
instance Property "Subnets" ComputeResourcesProperty where
  type PropertyType "Subnets" ComputeResourcesProperty = ValueList Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty {subnets = newValue, ..}
instance Property "Tags" ComputeResourcesProperty where
  type PropertyType "Tags" ComputeResourcesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty {tags = Prelude.pure newValue, ..}
instance Property "Type" ComputeResourcesProperty where
  type PropertyType "Type" ComputeResourcesProperty = Value Prelude.Text
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty {type' = newValue, ..}
instance Property "UpdateToLatestImageVersion" ComputeResourcesProperty where
  type PropertyType "UpdateToLatestImageVersion" ComputeResourcesProperty = Value Prelude.Bool
  set newValue ComputeResourcesProperty {..}
    = ComputeResourcesProperty
        {updateToLatestImageVersion = Prelude.pure newValue, ..}