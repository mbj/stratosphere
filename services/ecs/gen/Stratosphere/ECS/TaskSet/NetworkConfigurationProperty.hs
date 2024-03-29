module Stratosphere.ECS.TaskSet.NetworkConfigurationProperty (
        module Exports, NetworkConfigurationProperty(..),
        mkNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.AwsVpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NetworkConfigurationProperty
  = NetworkConfigurationProperty {awsVpcConfiguration :: (Prelude.Maybe AwsVpcConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkConfigurationProperty :: NetworkConfigurationProperty
mkNetworkConfigurationProperty
  = NetworkConfigurationProperty
      {awsVpcConfiguration = Prelude.Nothing}
instance ToResourceProperties NetworkConfigurationProperty where
  toResourceProperties NetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskSet.NetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsVpcConfiguration" Prelude.<$> awsVpcConfiguration])}
instance JSON.ToJSON NetworkConfigurationProperty where
  toJSON NetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsVpcConfiguration" Prelude.<$> awsVpcConfiguration]))
instance Property "AwsVpcConfiguration" NetworkConfigurationProperty where
  type PropertyType "AwsVpcConfiguration" NetworkConfigurationProperty = AwsVpcConfigurationProperty
  set newValue NetworkConfigurationProperty {}
    = NetworkConfigurationProperty
        {awsVpcConfiguration = Prelude.pure newValue, ..}