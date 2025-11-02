module Stratosphere.Glue.DataCatalogEncryptionSettings (
        module Exports, DataCatalogEncryptionSettings(..),
        mkDataCatalogEncryptionSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.DataCatalogEncryptionSettings.DataCatalogEncryptionSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataCatalogEncryptionSettings
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html>
    DataCatalogEncryptionSettings {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-catalogid>
                                   catalogId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings>
                                   dataCatalogEncryptionSettings :: DataCatalogEncryptionSettingsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCatalogEncryptionSettings ::
  Value Prelude.Text
  -> DataCatalogEncryptionSettingsProperty
     -> DataCatalogEncryptionSettings
mkDataCatalogEncryptionSettings
  catalogId
  dataCatalogEncryptionSettings
  = DataCatalogEncryptionSettings
      {haddock_workaround_ = (), catalogId = catalogId,
       dataCatalogEncryptionSettings = dataCatalogEncryptionSettings}
instance ToResourceProperties DataCatalogEncryptionSettings where
  toResourceProperties DataCatalogEncryptionSettings {..}
    = ResourceProperties
        {awsType = "AWS::Glue::DataCatalogEncryptionSettings",
         supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "DataCatalogEncryptionSettings"
                         JSON..= dataCatalogEncryptionSettings]}
instance JSON.ToJSON DataCatalogEncryptionSettings where
  toJSON DataCatalogEncryptionSettings {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId,
         "DataCatalogEncryptionSettings"
           JSON..= dataCatalogEncryptionSettings]
instance Property "CatalogId" DataCatalogEncryptionSettings where
  type PropertyType "CatalogId" DataCatalogEncryptionSettings = Value Prelude.Text
  set newValue DataCatalogEncryptionSettings {..}
    = DataCatalogEncryptionSettings {catalogId = newValue, ..}
instance Property "DataCatalogEncryptionSettings" DataCatalogEncryptionSettings where
  type PropertyType "DataCatalogEncryptionSettings" DataCatalogEncryptionSettings = DataCatalogEncryptionSettingsProperty
  set newValue DataCatalogEncryptionSettings {..}
    = DataCatalogEncryptionSettings
        {dataCatalogEncryptionSettings = newValue, ..}