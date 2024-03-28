module Stratosphere.DataSync.LocationAzureBlob.AzureBlobSasConfigurationProperty (
        AzureBlobSasConfigurationProperty(..),
        mkAzureBlobSasConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AzureBlobSasConfigurationProperty
  = AzureBlobSasConfigurationProperty {azureBlobSasToken :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAzureBlobSasConfigurationProperty ::
  Value Prelude.Text -> AzureBlobSasConfigurationProperty
mkAzureBlobSasConfigurationProperty azureBlobSasToken
  = AzureBlobSasConfigurationProperty
      {azureBlobSasToken = azureBlobSasToken}
instance ToResourceProperties AzureBlobSasConfigurationProperty where
  toResourceProperties AzureBlobSasConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationAzureBlob.AzureBlobSasConfiguration",
         supportsTags = Prelude.False,
         properties = ["AzureBlobSasToken" JSON..= azureBlobSasToken]}
instance JSON.ToJSON AzureBlobSasConfigurationProperty where
  toJSON AzureBlobSasConfigurationProperty {..}
    = JSON.object ["AzureBlobSasToken" JSON..= azureBlobSasToken]
instance Property "AzureBlobSasToken" AzureBlobSasConfigurationProperty where
  type PropertyType "AzureBlobSasToken" AzureBlobSasConfigurationProperty = Value Prelude.Text
  set newValue AzureBlobSasConfigurationProperty {}
    = AzureBlobSasConfigurationProperty
        {azureBlobSasToken = newValue, ..}