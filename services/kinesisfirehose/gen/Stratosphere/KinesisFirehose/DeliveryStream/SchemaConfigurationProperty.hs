module Stratosphere.KinesisFirehose.DeliveryStream.SchemaConfigurationProperty (
        SchemaConfigurationProperty(..), mkSchemaConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaConfigurationProperty
  = SchemaConfigurationProperty {catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                                 databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                 region :: (Prelude.Maybe (Value Prelude.Text)),
                                 roleARN :: (Prelude.Maybe (Value Prelude.Text)),
                                 tableName :: (Prelude.Maybe (Value Prelude.Text)),
                                 versionId :: (Prelude.Maybe (Value Prelude.Text))}
mkSchemaConfigurationProperty :: SchemaConfigurationProperty
mkSchemaConfigurationProperty
  = SchemaConfigurationProperty
      {catalogId = Prelude.Nothing, databaseName = Prelude.Nothing,
       region = Prelude.Nothing, roleARN = Prelude.Nothing,
       tableName = Prelude.Nothing, versionId = Prelude.Nothing}
instance ToResourceProperties SchemaConfigurationProperty where
  toResourceProperties SchemaConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SchemaConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Region" Prelude.<$> region,
                            (JSON..=) "RoleARN" Prelude.<$> roleARN,
                            (JSON..=) "TableName" Prelude.<$> tableName,
                            (JSON..=) "VersionId" Prelude.<$> versionId])}
instance JSON.ToJSON SchemaConfigurationProperty where
  toJSON SchemaConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Region" Prelude.<$> region,
               (JSON..=) "RoleARN" Prelude.<$> roleARN,
               (JSON..=) "TableName" Prelude.<$> tableName,
               (JSON..=) "VersionId" Prelude.<$> versionId]))
instance Property "CatalogId" SchemaConfigurationProperty where
  type PropertyType "CatalogId" SchemaConfigurationProperty = Value Prelude.Text
  set newValue SchemaConfigurationProperty {..}
    = SchemaConfigurationProperty
        {catalogId = Prelude.pure newValue, ..}
instance Property "DatabaseName" SchemaConfigurationProperty where
  type PropertyType "DatabaseName" SchemaConfigurationProperty = Value Prelude.Text
  set newValue SchemaConfigurationProperty {..}
    = SchemaConfigurationProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "Region" SchemaConfigurationProperty where
  type PropertyType "Region" SchemaConfigurationProperty = Value Prelude.Text
  set newValue SchemaConfigurationProperty {..}
    = SchemaConfigurationProperty {region = Prelude.pure newValue, ..}
instance Property "RoleARN" SchemaConfigurationProperty where
  type PropertyType "RoleARN" SchemaConfigurationProperty = Value Prelude.Text
  set newValue SchemaConfigurationProperty {..}
    = SchemaConfigurationProperty {roleARN = Prelude.pure newValue, ..}
instance Property "TableName" SchemaConfigurationProperty where
  type PropertyType "TableName" SchemaConfigurationProperty = Value Prelude.Text
  set newValue SchemaConfigurationProperty {..}
    = SchemaConfigurationProperty
        {tableName = Prelude.pure newValue, ..}
instance Property "VersionId" SchemaConfigurationProperty where
  type PropertyType "VersionId" SchemaConfigurationProperty = Value Prelude.Text
  set newValue SchemaConfigurationProperty {..}
    = SchemaConfigurationProperty
        {versionId = Prelude.pure newValue, ..}