module Stratosphere.EntityResolution.IdNamespace.NamespaceProviderPropertiesProperty (
        NamespaceProviderPropertiesProperty(..),
        mkNamespaceProviderPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NamespaceProviderPropertiesProperty
  = NamespaceProviderPropertiesProperty {providerConfiguration :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                         providerServiceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamespaceProviderPropertiesProperty ::
  Value Prelude.Text -> NamespaceProviderPropertiesProperty
mkNamespaceProviderPropertiesProperty providerServiceArn
  = NamespaceProviderPropertiesProperty
      {providerServiceArn = providerServiceArn,
       providerConfiguration = Prelude.Nothing}
instance ToResourceProperties NamespaceProviderPropertiesProperty where
  toResourceProperties NamespaceProviderPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdNamespace.NamespaceProviderProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProviderServiceArn" JSON..= providerServiceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ProviderConfiguration"
                                 Prelude.<$> providerConfiguration]))}
instance JSON.ToJSON NamespaceProviderPropertiesProperty where
  toJSON NamespaceProviderPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProviderServiceArn" JSON..= providerServiceArn]
              (Prelude.catMaybes
                 [(JSON..=) "ProviderConfiguration"
                    Prelude.<$> providerConfiguration])))
instance Property "ProviderConfiguration" NamespaceProviderPropertiesProperty where
  type PropertyType "ProviderConfiguration" NamespaceProviderPropertiesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue NamespaceProviderPropertiesProperty {..}
    = NamespaceProviderPropertiesProperty
        {providerConfiguration = Prelude.pure newValue, ..}
instance Property "ProviderServiceArn" NamespaceProviderPropertiesProperty where
  type PropertyType "ProviderServiceArn" NamespaceProviderPropertiesProperty = Value Prelude.Text
  set newValue NamespaceProviderPropertiesProperty {..}
    = NamespaceProviderPropertiesProperty
        {providerServiceArn = newValue, ..}