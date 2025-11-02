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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-namespaceproviderproperties.html>
    NamespaceProviderPropertiesProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-namespaceproviderproperties.html#cfn-entityresolution-idnamespace-namespaceproviderproperties-providerconfiguration>
                                         providerConfiguration :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-namespaceproviderproperties.html#cfn-entityresolution-idnamespace-namespaceproviderproperties-providerservicearn>
                                         providerServiceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamespaceProviderPropertiesProperty ::
  Value Prelude.Text -> NamespaceProviderPropertiesProperty
mkNamespaceProviderPropertiesProperty providerServiceArn
  = NamespaceProviderPropertiesProperty
      {haddock_workaround_ = (), providerServiceArn = providerServiceArn,
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