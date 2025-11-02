module Stratosphere.FinSpace.Environment.FederationParametersProperty (
        module Exports, FederationParametersProperty(..),
        mkFederationParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FinSpace.Environment.AttributeMapItemsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FederationParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-federationparameters.html>
    FederationParametersProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-federationparameters.html#cfn-finspace-environment-federationparameters-applicationcallbackurl>
                                  applicationCallBackURL :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-federationparameters.html#cfn-finspace-environment-federationparameters-attributemap>
                                  attributeMap :: (Prelude.Maybe [AttributeMapItemsProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-federationparameters.html#cfn-finspace-environment-federationparameters-federationprovidername>
                                  federationProviderName :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-federationparameters.html#cfn-finspace-environment-federationparameters-federationurn>
                                  federationURN :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-federationparameters.html#cfn-finspace-environment-federationparameters-samlmetadatadocument>
                                  samlMetadataDocument :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-federationparameters.html#cfn-finspace-environment-federationparameters-samlmetadataurl>
                                  samlMetadataURL :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFederationParametersProperty :: FederationParametersProperty
mkFederationParametersProperty
  = FederationParametersProperty
      {haddock_workaround_ = (),
       applicationCallBackURL = Prelude.Nothing,
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
  type PropertyType "AttributeMap" FederationParametersProperty = [AttributeMapItemsProperty]
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