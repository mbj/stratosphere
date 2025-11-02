module Stratosphere.EntityResolution.IdMappingWorkflow.ProviderPropertiesProperty (
        module Exports, ProviderPropertiesProperty(..),
        mkProviderPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.IntermediateSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProviderPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-providerproperties.html>
    ProviderPropertiesProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-providerproperties.html#cfn-entityresolution-idmappingworkflow-providerproperties-intermediatesourceconfiguration>
                                intermediateSourceConfiguration :: (Prelude.Maybe IntermediateSourceConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-providerproperties.html#cfn-entityresolution-idmappingworkflow-providerproperties-providerconfiguration>
                                providerConfiguration :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-providerproperties.html#cfn-entityresolution-idmappingworkflow-providerproperties-providerservicearn>
                                providerServiceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProviderPropertiesProperty ::
  Value Prelude.Text -> ProviderPropertiesProperty
mkProviderPropertiesProperty providerServiceArn
  = ProviderPropertiesProperty
      {haddock_workaround_ = (), providerServiceArn = providerServiceArn,
       intermediateSourceConfiguration = Prelude.Nothing,
       providerConfiguration = Prelude.Nothing}
instance ToResourceProperties ProviderPropertiesProperty where
  toResourceProperties ProviderPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdMappingWorkflow.ProviderProperties",
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