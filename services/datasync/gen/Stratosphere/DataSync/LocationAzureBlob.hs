module Stratosphere.DataSync.LocationAzureBlob (
        module Exports, LocationAzureBlob(..), mkLocationAzureBlob
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationAzureBlob.AzureBlobSasConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationAzureBlob
  = LocationAzureBlob {agentArns :: (ValueList Prelude.Text),
                       azureAccessTier :: (Prelude.Maybe (Value Prelude.Text)),
                       azureBlobAuthenticationType :: (Value Prelude.Text),
                       azureBlobContainerUrl :: (Prelude.Maybe (Value Prelude.Text)),
                       azureBlobSasConfiguration :: (Prelude.Maybe AzureBlobSasConfigurationProperty),
                       azureBlobType :: (Prelude.Maybe (Value Prelude.Text)),
                       subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationAzureBlob ::
  ValueList Prelude.Text -> Value Prelude.Text -> LocationAzureBlob
mkLocationAzureBlob agentArns azureBlobAuthenticationType
  = LocationAzureBlob
      {agentArns = agentArns,
       azureBlobAuthenticationType = azureBlobAuthenticationType,
       azureAccessTier = Prelude.Nothing,
       azureBlobContainerUrl = Prelude.Nothing,
       azureBlobSasConfiguration = Prelude.Nothing,
       azureBlobType = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationAzureBlob where
  toResourceProperties LocationAzureBlob {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationAzureBlob",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentArns" JSON..= agentArns,
                            "AzureBlobAuthenticationType" JSON..= azureBlobAuthenticationType]
                           (Prelude.catMaybes
                              [(JSON..=) "AzureAccessTier" Prelude.<$> azureAccessTier,
                               (JSON..=) "AzureBlobContainerUrl"
                                 Prelude.<$> azureBlobContainerUrl,
                               (JSON..=) "AzureBlobSasConfiguration"
                                 Prelude.<$> azureBlobSasConfiguration,
                               (JSON..=) "AzureBlobType" Prelude.<$> azureBlobType,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationAzureBlob where
  toJSON LocationAzureBlob {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentArns" JSON..= agentArns,
               "AzureBlobAuthenticationType" JSON..= azureBlobAuthenticationType]
              (Prelude.catMaybes
                 [(JSON..=) "AzureAccessTier" Prelude.<$> azureAccessTier,
                  (JSON..=) "AzureBlobContainerUrl"
                    Prelude.<$> azureBlobContainerUrl,
                  (JSON..=) "AzureBlobSasConfiguration"
                    Prelude.<$> azureBlobSasConfiguration,
                  (JSON..=) "AzureBlobType" Prelude.<$> azureBlobType,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AgentArns" LocationAzureBlob where
  type PropertyType "AgentArns" LocationAzureBlob = ValueList Prelude.Text
  set newValue LocationAzureBlob {..}
    = LocationAzureBlob {agentArns = newValue, ..}
instance Property "AzureAccessTier" LocationAzureBlob where
  type PropertyType "AzureAccessTier" LocationAzureBlob = Value Prelude.Text
  set newValue LocationAzureBlob {..}
    = LocationAzureBlob {azureAccessTier = Prelude.pure newValue, ..}
instance Property "AzureBlobAuthenticationType" LocationAzureBlob where
  type PropertyType "AzureBlobAuthenticationType" LocationAzureBlob = Value Prelude.Text
  set newValue LocationAzureBlob {..}
    = LocationAzureBlob {azureBlobAuthenticationType = newValue, ..}
instance Property "AzureBlobContainerUrl" LocationAzureBlob where
  type PropertyType "AzureBlobContainerUrl" LocationAzureBlob = Value Prelude.Text
  set newValue LocationAzureBlob {..}
    = LocationAzureBlob
        {azureBlobContainerUrl = Prelude.pure newValue, ..}
instance Property "AzureBlobSasConfiguration" LocationAzureBlob where
  type PropertyType "AzureBlobSasConfiguration" LocationAzureBlob = AzureBlobSasConfigurationProperty
  set newValue LocationAzureBlob {..}
    = LocationAzureBlob
        {azureBlobSasConfiguration = Prelude.pure newValue, ..}
instance Property "AzureBlobType" LocationAzureBlob where
  type PropertyType "AzureBlobType" LocationAzureBlob = Value Prelude.Text
  set newValue LocationAzureBlob {..}
    = LocationAzureBlob {azureBlobType = Prelude.pure newValue, ..}
instance Property "Subdirectory" LocationAzureBlob where
  type PropertyType "Subdirectory" LocationAzureBlob = Value Prelude.Text
  set newValue LocationAzureBlob {..}
    = LocationAzureBlob {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationAzureBlob where
  type PropertyType "Tags" LocationAzureBlob = [Tag]
  set newValue LocationAzureBlob {..}
    = LocationAzureBlob {tags = Prelude.pure newValue, ..}