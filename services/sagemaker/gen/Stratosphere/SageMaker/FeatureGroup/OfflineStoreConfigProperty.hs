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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-offlinestoreconfig.html>
    OfflineStoreConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-offlinestoreconfig.html#cfn-sagemaker-featuregroup-offlinestoreconfig-datacatalogconfig>
                                dataCatalogConfig :: (Prelude.Maybe DataCatalogConfigProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-offlinestoreconfig.html#cfn-sagemaker-featuregroup-offlinestoreconfig-disablegluetablecreation>
                                disableGlueTableCreation :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-offlinestoreconfig.html#cfn-sagemaker-featuregroup-offlinestoreconfig-s3storageconfig>
                                s3StorageConfig :: S3StorageConfigProperty,
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-offlinestoreconfig.html#cfn-sagemaker-featuregroup-offlinestoreconfig-tableformat>
                                tableFormat :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOfflineStoreConfigProperty ::
  S3StorageConfigProperty -> OfflineStoreConfigProperty
mkOfflineStoreConfigProperty s3StorageConfig
  = OfflineStoreConfigProperty
      {haddock_workaround_ = (), s3StorageConfig = s3StorageConfig,
       dataCatalogConfig = Prelude.Nothing,
       disableGlueTableCreation = Prelude.Nothing,
       tableFormat = Prelude.Nothing}
instance ToResourceProperties OfflineStoreConfigProperty where
  toResourceProperties OfflineStoreConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.OfflineStoreConfig",
         supportsTags = Prelude.False,
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