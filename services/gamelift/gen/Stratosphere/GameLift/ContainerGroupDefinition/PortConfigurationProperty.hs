module Stratosphere.GameLift.ContainerGroupDefinition.PortConfigurationProperty (
        module Exports, PortConfigurationProperty(..),
        mkPortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.ContainerPortRangeProperty as Exports
import Stratosphere.ResourceProperties
data PortConfigurationProperty
  = PortConfigurationProperty {containerPortRanges :: [ContainerPortRangeProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortConfigurationProperty ::
  [ContainerPortRangeProperty] -> PortConfigurationProperty
mkPortConfigurationProperty containerPortRanges
  = PortConfigurationProperty
      {containerPortRanges = containerPortRanges}
instance ToResourceProperties PortConfigurationProperty where
  toResourceProperties PortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerGroupDefinition.PortConfiguration",
         supportsTags = Prelude.False,
         properties = ["ContainerPortRanges" JSON..= containerPortRanges]}
instance JSON.ToJSON PortConfigurationProperty where
  toJSON PortConfigurationProperty {..}
    = JSON.object ["ContainerPortRanges" JSON..= containerPortRanges]
instance Property "ContainerPortRanges" PortConfigurationProperty where
  type PropertyType "ContainerPortRanges" PortConfigurationProperty = [ContainerPortRangeProperty]
  set newValue PortConfigurationProperty {}
    = PortConfigurationProperty {containerPortRanges = newValue, ..}