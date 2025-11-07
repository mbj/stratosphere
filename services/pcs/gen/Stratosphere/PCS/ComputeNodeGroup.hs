module Stratosphere.PCS.ComputeNodeGroup (
        module Exports, ComputeNodeGroup(..), mkComputeNodeGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCS.ComputeNodeGroup.CustomLaunchTemplateProperty as Exports
import {-# SOURCE #-} Stratosphere.PCS.ComputeNodeGroup.InstanceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.PCS.ComputeNodeGroup.ScalingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.PCS.ComputeNodeGroup.SlurmConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.PCS.ComputeNodeGroup.SpotOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeNodeGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html>
    ComputeNodeGroup {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-amiid>
                      amiId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-clusterid>
                      clusterId :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-customlaunchtemplate>
                      customLaunchTemplate :: CustomLaunchTemplateProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-iaminstanceprofilearn>
                      iamInstanceProfileArn :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-instanceconfigs>
                      instanceConfigs :: [InstanceConfigProperty],
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-purchaseoption>
                      purchaseOption :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-scalingconfiguration>
                      scalingConfiguration :: ScalingConfigurationProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-slurmconfiguration>
                      slurmConfiguration :: (Prelude.Maybe SlurmConfigurationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-spotoptions>
                      spotOptions :: (Prelude.Maybe SpotOptionsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-subnetids>
                      subnetIds :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-computenodegroup.html#cfn-pcs-computenodegroup-tags>
                      tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeNodeGroup ::
  Value Prelude.Text
  -> CustomLaunchTemplateProperty
     -> Value Prelude.Text
        -> [InstanceConfigProperty]
           -> ScalingConfigurationProperty
              -> ValueList Prelude.Text -> ComputeNodeGroup
mkComputeNodeGroup
  clusterId
  customLaunchTemplate
  iamInstanceProfileArn
  instanceConfigs
  scalingConfiguration
  subnetIds
  = ComputeNodeGroup
      {haddock_workaround_ = (), clusterId = clusterId,
       customLaunchTemplate = customLaunchTemplate,
       iamInstanceProfileArn = iamInstanceProfileArn,
       instanceConfigs = instanceConfigs,
       scalingConfiguration = scalingConfiguration, subnetIds = subnetIds,
       amiId = Prelude.Nothing, name = Prelude.Nothing,
       purchaseOption = Prelude.Nothing,
       slurmConfiguration = Prelude.Nothing,
       spotOptions = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ComputeNodeGroup where
  toResourceProperties ComputeNodeGroup {..}
    = ResourceProperties
        {awsType = "AWS::PCS::ComputeNodeGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterId" JSON..= clusterId,
                            "CustomLaunchTemplate" JSON..= customLaunchTemplate,
                            "IamInstanceProfileArn" JSON..= iamInstanceProfileArn,
                            "InstanceConfigs" JSON..= instanceConfigs,
                            "ScalingConfiguration" JSON..= scalingConfiguration,
                            "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "AmiId" Prelude.<$> amiId,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PurchaseOption" Prelude.<$> purchaseOption,
                               (JSON..=) "SlurmConfiguration" Prelude.<$> slurmConfiguration,
                               (JSON..=) "SpotOptions" Prelude.<$> spotOptions,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ComputeNodeGroup where
  toJSON ComputeNodeGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterId" JSON..= clusterId,
               "CustomLaunchTemplate" JSON..= customLaunchTemplate,
               "IamInstanceProfileArn" JSON..= iamInstanceProfileArn,
               "InstanceConfigs" JSON..= instanceConfigs,
               "ScalingConfiguration" JSON..= scalingConfiguration,
               "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "AmiId" Prelude.<$> amiId,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PurchaseOption" Prelude.<$> purchaseOption,
                  (JSON..=) "SlurmConfiguration" Prelude.<$> slurmConfiguration,
                  (JSON..=) "SpotOptions" Prelude.<$> spotOptions,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AmiId" ComputeNodeGroup where
  type PropertyType "AmiId" ComputeNodeGroup = Value Prelude.Text
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {amiId = Prelude.pure newValue, ..}
instance Property "ClusterId" ComputeNodeGroup where
  type PropertyType "ClusterId" ComputeNodeGroup = Value Prelude.Text
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {clusterId = newValue, ..}
instance Property "CustomLaunchTemplate" ComputeNodeGroup where
  type PropertyType "CustomLaunchTemplate" ComputeNodeGroup = CustomLaunchTemplateProperty
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {customLaunchTemplate = newValue, ..}
instance Property "IamInstanceProfileArn" ComputeNodeGroup where
  type PropertyType "IamInstanceProfileArn" ComputeNodeGroup = Value Prelude.Text
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {iamInstanceProfileArn = newValue, ..}
instance Property "InstanceConfigs" ComputeNodeGroup where
  type PropertyType "InstanceConfigs" ComputeNodeGroup = [InstanceConfigProperty]
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {instanceConfigs = newValue, ..}
instance Property "Name" ComputeNodeGroup where
  type PropertyType "Name" ComputeNodeGroup = Value Prelude.Text
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {name = Prelude.pure newValue, ..}
instance Property "PurchaseOption" ComputeNodeGroup where
  type PropertyType "PurchaseOption" ComputeNodeGroup = Value Prelude.Text
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {purchaseOption = Prelude.pure newValue, ..}
instance Property "ScalingConfiguration" ComputeNodeGroup where
  type PropertyType "ScalingConfiguration" ComputeNodeGroup = ScalingConfigurationProperty
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {scalingConfiguration = newValue, ..}
instance Property "SlurmConfiguration" ComputeNodeGroup where
  type PropertyType "SlurmConfiguration" ComputeNodeGroup = SlurmConfigurationProperty
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {slurmConfiguration = Prelude.pure newValue, ..}
instance Property "SpotOptions" ComputeNodeGroup where
  type PropertyType "SpotOptions" ComputeNodeGroup = SpotOptionsProperty
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {spotOptions = Prelude.pure newValue, ..}
instance Property "SubnetIds" ComputeNodeGroup where
  type PropertyType "SubnetIds" ComputeNodeGroup = ValueList Prelude.Text
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {subnetIds = newValue, ..}
instance Property "Tags" ComputeNodeGroup where
  type PropertyType "Tags" ComputeNodeGroup = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ComputeNodeGroup {..}
    = ComputeNodeGroup {tags = Prelude.pure newValue, ..}