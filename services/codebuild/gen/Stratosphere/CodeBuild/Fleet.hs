module Stratosphere.CodeBuild.Fleet (
        module Exports, Fleet(..), mkFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Fleet.ComputeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Fleet.ProxyConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Fleet.ScalingConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Fleet.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Fleet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html>
    Fleet {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-basecapacity>
           baseCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-computeconfiguration>
           computeConfiguration :: (Prelude.Maybe ComputeConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-computetype>
           computeType :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-environmenttype>
           environmentType :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-fleetproxyconfiguration>
           fleetProxyConfiguration :: (Prelude.Maybe ProxyConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-fleetservicerole>
           fleetServiceRole :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-fleetvpcconfig>
           fleetVpcConfig :: (Prelude.Maybe VpcConfigProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-imageid>
           imageId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-name>
           name :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-overflowbehavior>
           overflowBehavior :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-scalingconfiguration>
           scalingConfiguration :: (Prelude.Maybe ScalingConfigurationInputProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-fleet.html#cfn-codebuild-fleet-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleet :: Fleet
mkFleet
  = Fleet
      {haddock_workaround_ = (), baseCapacity = Prelude.Nothing,
       computeConfiguration = Prelude.Nothing,
       computeType = Prelude.Nothing, environmentType = Prelude.Nothing,
       fleetProxyConfiguration = Prelude.Nothing,
       fleetServiceRole = Prelude.Nothing,
       fleetVpcConfig = Prelude.Nothing, imageId = Prelude.Nothing,
       name = Prelude.Nothing, overflowBehavior = Prelude.Nothing,
       scalingConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Fleet where
  toResourceProperties Fleet {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Fleet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
                            (JSON..=) "ComputeConfiguration" Prelude.<$> computeConfiguration,
                            (JSON..=) "ComputeType" Prelude.<$> computeType,
                            (JSON..=) "EnvironmentType" Prelude.<$> environmentType,
                            (JSON..=) "FleetProxyConfiguration"
                              Prelude.<$> fleetProxyConfiguration,
                            (JSON..=) "FleetServiceRole" Prelude.<$> fleetServiceRole,
                            (JSON..=) "FleetVpcConfig" Prelude.<$> fleetVpcConfig,
                            (JSON..=) "ImageId" Prelude.<$> imageId,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "OverflowBehavior" Prelude.<$> overflowBehavior,
                            (JSON..=) "ScalingConfiguration" Prelude.<$> scalingConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Fleet where
  toJSON Fleet {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
               (JSON..=) "ComputeConfiguration" Prelude.<$> computeConfiguration,
               (JSON..=) "ComputeType" Prelude.<$> computeType,
               (JSON..=) "EnvironmentType" Prelude.<$> environmentType,
               (JSON..=) "FleetProxyConfiguration"
                 Prelude.<$> fleetProxyConfiguration,
               (JSON..=) "FleetServiceRole" Prelude.<$> fleetServiceRole,
               (JSON..=) "FleetVpcConfig" Prelude.<$> fleetVpcConfig,
               (JSON..=) "ImageId" Prelude.<$> imageId,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "OverflowBehavior" Prelude.<$> overflowBehavior,
               (JSON..=) "ScalingConfiguration" Prelude.<$> scalingConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "BaseCapacity" Fleet where
  type PropertyType "BaseCapacity" Fleet = Value Prelude.Integer
  set newValue Fleet {..}
    = Fleet {baseCapacity = Prelude.pure newValue, ..}
instance Property "ComputeConfiguration" Fleet where
  type PropertyType "ComputeConfiguration" Fleet = ComputeConfigurationProperty
  set newValue Fleet {..}
    = Fleet {computeConfiguration = Prelude.pure newValue, ..}
instance Property "ComputeType" Fleet where
  type PropertyType "ComputeType" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {computeType = Prelude.pure newValue, ..}
instance Property "EnvironmentType" Fleet where
  type PropertyType "EnvironmentType" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {environmentType = Prelude.pure newValue, ..}
instance Property "FleetProxyConfiguration" Fleet where
  type PropertyType "FleetProxyConfiguration" Fleet = ProxyConfigurationProperty
  set newValue Fleet {..}
    = Fleet {fleetProxyConfiguration = Prelude.pure newValue, ..}
instance Property "FleetServiceRole" Fleet where
  type PropertyType "FleetServiceRole" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {fleetServiceRole = Prelude.pure newValue, ..}
instance Property "FleetVpcConfig" Fleet where
  type PropertyType "FleetVpcConfig" Fleet = VpcConfigProperty
  set newValue Fleet {..}
    = Fleet {fleetVpcConfig = Prelude.pure newValue, ..}
instance Property "ImageId" Fleet where
  type PropertyType "ImageId" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {imageId = Prelude.pure newValue, ..}
instance Property "Name" Fleet where
  type PropertyType "Name" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {name = Prelude.pure newValue, ..}
instance Property "OverflowBehavior" Fleet where
  type PropertyType "OverflowBehavior" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {overflowBehavior = Prelude.pure newValue, ..}
instance Property "ScalingConfiguration" Fleet where
  type PropertyType "ScalingConfiguration" Fleet = ScalingConfigurationInputProperty
  set newValue Fleet {..}
    = Fleet {scalingConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Fleet where
  type PropertyType "Tags" Fleet = [Tag]
  set newValue Fleet {..} = Fleet {tags = Prelude.pure newValue, ..}