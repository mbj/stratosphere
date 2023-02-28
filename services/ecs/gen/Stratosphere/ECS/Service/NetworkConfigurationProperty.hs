module Stratosphere.ECS.Service.NetworkConfigurationProperty (
        module Exports, NetworkConfigurationProperty(..),
        mkNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.AwsVpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NetworkConfigurationProperty
  = NetworkConfigurationProperty {awsvpcConfiguration :: (Prelude.Maybe AwsVpcConfigurationProperty)}
mkNetworkConfigurationProperty :: NetworkConfigurationProperty
mkNetworkConfigurationProperty
  = NetworkConfigurationProperty
      {awsvpcConfiguration = Prelude.Nothing}
instance ToResourceProperties NetworkConfigurationProperty where
  toResourceProperties NetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.NetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsvpcConfiguration" Prelude.<$> awsvpcConfiguration])}
instance JSON.ToJSON NetworkConfigurationProperty where
  toJSON NetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsvpcConfiguration" Prelude.<$> awsvpcConfiguration]))
instance Property "AwsvpcConfiguration" NetworkConfigurationProperty where
  type PropertyType "AwsvpcConfiguration" NetworkConfigurationProperty = AwsVpcConfigurationProperty
  set newValue NetworkConfigurationProperty {}
    = NetworkConfigurationProperty
        {awsvpcConfiguration = Prelude.pure newValue, ..}