module Stratosphere.Lambda.Alias.AliasRoutingConfigurationProperty (
        module Exports, AliasRoutingConfigurationProperty(..),
        mkAliasRoutingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.Alias.VersionWeightProperty as Exports
import Stratosphere.ResourceProperties
data AliasRoutingConfigurationProperty
  = AliasRoutingConfigurationProperty {additionalVersionWeights :: [VersionWeightProperty]}
mkAliasRoutingConfigurationProperty ::
  [VersionWeightProperty] -> AliasRoutingConfigurationProperty
mkAliasRoutingConfigurationProperty additionalVersionWeights
  = AliasRoutingConfigurationProperty
      {additionalVersionWeights = additionalVersionWeights}
instance ToResourceProperties AliasRoutingConfigurationProperty where
  toResourceProperties AliasRoutingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Alias.AliasRoutingConfiguration",
         properties = ["AdditionalVersionWeights"
                         JSON..= additionalVersionWeights]}
instance JSON.ToJSON AliasRoutingConfigurationProperty where
  toJSON AliasRoutingConfigurationProperty {..}
    = JSON.object
        ["AdditionalVersionWeights" JSON..= additionalVersionWeights]
instance Property "AdditionalVersionWeights" AliasRoutingConfigurationProperty where
  type PropertyType "AdditionalVersionWeights" AliasRoutingConfigurationProperty = [VersionWeightProperty]
  set newValue AliasRoutingConfigurationProperty {}
    = AliasRoutingConfigurationProperty
        {additionalVersionWeights = newValue, ..}