module Stratosphere.Glue.DataCatalogEncryptionSettings.DataCatalogEncryptionSettingsProperty (
        module Exports, DataCatalogEncryptionSettingsProperty(..),
        mkDataCatalogEncryptionSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.DataCatalogEncryptionSettings.ConnectionPasswordEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.DataCatalogEncryptionSettings.EncryptionAtRestProperty as Exports
import Stratosphere.ResourceProperties
data DataCatalogEncryptionSettingsProperty
  = DataCatalogEncryptionSettingsProperty {connectionPasswordEncryption :: (Prelude.Maybe ConnectionPasswordEncryptionProperty),
                                           encryptionAtRest :: (Prelude.Maybe EncryptionAtRestProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCatalogEncryptionSettingsProperty ::
  DataCatalogEncryptionSettingsProperty
mkDataCatalogEncryptionSettingsProperty
  = DataCatalogEncryptionSettingsProperty
      {connectionPasswordEncryption = Prelude.Nothing,
       encryptionAtRest = Prelude.Nothing}
instance ToResourceProperties DataCatalogEncryptionSettingsProperty where
  toResourceProperties DataCatalogEncryptionSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::DataCatalogEncryptionSettings.DataCatalogEncryptionSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionPasswordEncryption"
                              Prelude.<$> connectionPasswordEncryption,
                            (JSON..=) "EncryptionAtRest" Prelude.<$> encryptionAtRest])}
instance JSON.ToJSON DataCatalogEncryptionSettingsProperty where
  toJSON DataCatalogEncryptionSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionPasswordEncryption"
                 Prelude.<$> connectionPasswordEncryption,
               (JSON..=) "EncryptionAtRest" Prelude.<$> encryptionAtRest]))
instance Property "ConnectionPasswordEncryption" DataCatalogEncryptionSettingsProperty where
  type PropertyType "ConnectionPasswordEncryption" DataCatalogEncryptionSettingsProperty = ConnectionPasswordEncryptionProperty
  set newValue DataCatalogEncryptionSettingsProperty {..}
    = DataCatalogEncryptionSettingsProperty
        {connectionPasswordEncryption = Prelude.pure newValue, ..}
instance Property "EncryptionAtRest" DataCatalogEncryptionSettingsProperty where
  type PropertyType "EncryptionAtRest" DataCatalogEncryptionSettingsProperty = EncryptionAtRestProperty
  set newValue DataCatalogEncryptionSettingsProperty {..}
    = DataCatalogEncryptionSettingsProperty
        {encryptionAtRest = Prelude.pure newValue, ..}