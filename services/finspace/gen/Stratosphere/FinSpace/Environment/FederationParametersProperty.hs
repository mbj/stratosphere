module Stratosphere.FinSpace.Environment.FederationParametersProperty (
        FederationParametersProperty(..), mkFederationParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FederationParametersProperty
  = FederationParametersProperty {applicationCallBackURL :: (Prelude.Maybe (Value Prelude.Text)),
                                  attributeMap :: (Prelude.Maybe JSON.Object),
                                  federationProviderName :: (Prelude.Maybe (Value Prelude.Text)),
                                  federationURN :: (Prelude.Maybe (Value Prelude.Text)),
                                  samlMetadataDocument :: (Prelude.Maybe (Value Prelude.Text)),
                                  samlMetadataURL :: (Prelude.Maybe (Value Prelude.Text))}
mkFederationParametersProperty :: FederationParametersProperty
mkFederationParametersProperty
  = FederationParametersProperty
      {applicationCallBackURL = Prelude.Nothing,
       attributeMap = Prelude.Nothing,
       federationProviderName = Prelude.Nothing,
       federationURN = Prelude.Nothing,
       samlMetadataDocument = Prelude.Nothing,
       samlMetadataURL = Prelude.Nothing}
instance ToResourceProperties FederationParametersProperty where
  toResourceProperties FederationParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::FinSpace::Environment.FederationParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationCallBackURL"
                              Prelude.<$> applicationCallBackURL,
                            (JSON..=) "AttributeMap" Prelude.<$> attributeMap,
                            (JSON..=) "FederationProviderName"
                              Prelude.<$> federationProviderName,
                            (JSON..=) "FederationURN" Prelude.<$> federationURN,
                            (JSON..=) "SamlMetadataDocument" Prelude.<$> samlMetadataDocument,
                            (JSON..=) "SamlMetadataURL" Prelude.<$> samlMetadataURL])}
instance JSON.ToJSON FederationParametersProperty where
  toJSON FederationParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationCallBackURL"
                 Prelude.<$> applicationCallBackURL,
               (JSON..=) "AttributeMap" Prelude.<$> attributeMap,
               (JSON..=) "FederationProviderName"
                 Prelude.<$> federationProviderName,
               (JSON..=) "FederationURN" Prelude.<$> federationURN,
               (JSON..=) "SamlMetadataDocument" Prelude.<$> samlMetadataDocument,
               (JSON..=) "SamlMetadataURL" Prelude.<$> samlMetadataURL]))
instance Property "ApplicationCallBackURL" FederationParametersProperty where
  type PropertyType "ApplicationCallBackURL" FederationParametersProperty = Value Prelude.Text
  set newValue FederationParametersProperty {..}
    = FederationParametersProperty
        {applicationCallBackURL = Prelude.pure newValue, ..}
instance Property "AttributeMap" FederationParametersProperty where
  type PropertyType "AttributeMap" FederationParametersProperty = JSON.Object
  set newValue FederationParametersProperty {..}
    = FederationParametersProperty
        {attributeMap = Prelude.pure newValue, ..}
instance Property "FederationProviderName" FederationParametersProperty where
  type PropertyType "FederationProviderName" FederationParametersProperty = Value Prelude.Text
  set newValue FederationParametersProperty {..}
    = FederationParametersProperty
        {federationProviderName = Prelude.pure newValue, ..}
instance Property "FederationURN" FederationParametersProperty where
  type PropertyType "FederationURN" FederationParametersProperty = Value Prelude.Text
  set newValue FederationParametersProperty {..}
    = FederationParametersProperty
        {federationURN = Prelude.pure newValue, ..}
instance Property "SamlMetadataDocument" FederationParametersProperty where
  type PropertyType "SamlMetadataDocument" FederationParametersProperty = Value Prelude.Text
  set newValue FederationParametersProperty {..}
    = FederationParametersProperty
        {samlMetadataDocument = Prelude.pure newValue, ..}
instance Property "SamlMetadataURL" FederationParametersProperty where
  type PropertyType "SamlMetadataURL" FederationParametersProperty = Value Prelude.Text
  set newValue FederationParametersProperty {..}
    = FederationParametersProperty
        {samlMetadataURL = Prelude.pure newValue, ..}