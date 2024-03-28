module Stratosphere.EntityResolution.MatchingWorkflow.ProviderPropertiesProperty (
        module Exports, ProviderPropertiesProperty(..),
        mkProviderPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.IntermediateSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProviderPropertiesProperty
  = ProviderPropertiesProperty {intermediateSourceConfiguration :: (Prelude.Maybe IntermediateSourceConfigurationProperty),
                                providerConfiguration :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                providerServiceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProviderPropertiesProperty ::
  Value Prelude.Text -> ProviderPropertiesProperty
mkProviderPropertiesProperty providerServiceArn
  = ProviderPropertiesProperty
      {providerServiceArn = providerServiceArn,
       intermediateSourceConfiguration = Prelude.Nothing,
       providerConfiguration = Prelude.Nothing}
instance ToResourceProperties ProviderPropertiesProperty where
  toResourceProperties ProviderPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.ProviderProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProviderServiceArn" JSON..= providerServiceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "IntermediateSourceConfiguration"
                                 Prelude.<$> intermediateSourceConfiguration,
                               (JSON..=) "ProviderConfiguration"
                                 Prelude.<$> providerConfiguration]))}
instance JSON.ToJSON ProviderPropertiesProperty where
  toJSON ProviderPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProviderServiceArn" JSON..= providerServiceArn]
              (Prelude.catMaybes
                 [(JSON..=) "IntermediateSourceConfiguration"
                    Prelude.<$> intermediateSourceConfiguration,
                  (JSON..=) "ProviderConfiguration"
                    Prelude.<$> providerConfiguration])))
instance Property "IntermediateSourceConfiguration" ProviderPropertiesProperty where
  type PropertyType "IntermediateSourceConfiguration" ProviderPropertiesProperty = IntermediateSourceConfigurationProperty
  set newValue ProviderPropertiesProperty {..}
    = ProviderPropertiesProperty
        {intermediateSourceConfiguration = Prelude.pure newValue, ..}
instance Property "ProviderConfiguration" ProviderPropertiesProperty where
  type PropertyType "ProviderConfiguration" ProviderPropertiesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ProviderPropertiesProperty {..}
    = ProviderPropertiesProperty
        {providerConfiguration = Prelude.pure newValue, ..}
instance Property "ProviderServiceArn" ProviderPropertiesProperty where
  type PropertyType "ProviderServiceArn" ProviderPropertiesProperty = Value Prelude.Text
  set newValue ProviderPropertiesProperty {..}
    = ProviderPropertiesProperty {providerServiceArn = newValue, ..}