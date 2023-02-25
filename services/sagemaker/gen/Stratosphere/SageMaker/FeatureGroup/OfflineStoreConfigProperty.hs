module Stratosphere.SageMaker.FeatureGroup.OfflineStoreConfigProperty (
        module Exports, OfflineStoreConfigProperty(..),
        mkOfflineStoreConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.FeatureGroup.DataCatalogConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.FeatureGroup.S3StorageConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OfflineStoreConfigProperty
  = OfflineStoreConfigProperty {dataCatalogConfig :: (Prelude.Maybe DataCatalogConfigProperty),
                                disableGlueTableCreation :: (Prelude.Maybe (Value Prelude.Bool)),
                                s3StorageConfig :: S3StorageConfigProperty,
                                tableFormat :: (Prelude.Maybe (Value Prelude.Text))}
mkOfflineStoreConfigProperty ::
  S3StorageConfigProperty -> OfflineStoreConfigProperty
mkOfflineStoreConfigProperty s3StorageConfig
  = OfflineStoreConfigProperty
      {s3StorageConfig = s3StorageConfig,
       dataCatalogConfig = Prelude.Nothing,
       disableGlueTableCreation = Prelude.Nothing,
       tableFormat = Prelude.Nothing}
instance ToResourceProperties OfflineStoreConfigProperty where
  toResourceProperties OfflineStoreConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.OfflineStoreConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3StorageConfig" JSON..= s3StorageConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "DataCatalogConfig" Prelude.<$> dataCatalogConfig,
                               (JSON..=) "DisableGlueTableCreation"
                                 Prelude.<$> disableGlueTableCreation,
                               (JSON..=) "TableFormat" Prelude.<$> tableFormat]))}
instance JSON.ToJSON OfflineStoreConfigProperty where
  toJSON OfflineStoreConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3StorageConfig" JSON..= s3StorageConfig]
              (Prelude.catMaybes
                 [(JSON..=) "DataCatalogConfig" Prelude.<$> dataCatalogConfig,
                  (JSON..=) "DisableGlueTableCreation"
                    Prelude.<$> disableGlueTableCreation,
                  (JSON..=) "TableFormat" Prelude.<$> tableFormat])))
instance Property "DataCatalogConfig" OfflineStoreConfigProperty where
  type PropertyType "DataCatalogConfig" OfflineStoreConfigProperty = DataCatalogConfigProperty
  set newValue OfflineStoreConfigProperty {..}
    = OfflineStoreConfigProperty
        {dataCatalogConfig = Prelude.pure newValue, ..}
instance Property "DisableGlueTableCreation" OfflineStoreConfigProperty where
  type PropertyType "DisableGlueTableCreation" OfflineStoreConfigProperty = Value Prelude.Bool
  set newValue OfflineStoreConfigProperty {..}
    = OfflineStoreConfigProperty
        {disableGlueTableCreation = Prelude.pure newValue, ..}
instance Property "S3StorageConfig" OfflineStoreConfigProperty where
  type PropertyType "S3StorageConfig" OfflineStoreConfigProperty = S3StorageConfigProperty
  set newValue OfflineStoreConfigProperty {..}
    = OfflineStoreConfigProperty {s3StorageConfig = newValue, ..}
instance Property "TableFormat" OfflineStoreConfigProperty where
  type PropertyType "TableFormat" OfflineStoreConfigProperty = Value Prelude.Text
  set newValue OfflineStoreConfigProperty {..}
    = OfflineStoreConfigProperty
        {tableFormat = Prelude.pure newValue, ..}