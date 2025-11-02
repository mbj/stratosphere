module Stratosphere.KinesisFirehose.DeliveryStream.SchemaConfigurationProperty (
        SchemaConfigurationProperty(..), mkSchemaConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html>
    SchemaConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-catalogid>
                                 catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-databasename>
                                 databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-region>
                                 region :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-rolearn>
                                 roleARN :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-tablename>
                                 tableName :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-versionid>
                                 versionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaConfigurationProperty :: SchemaConfigurationProperty
mkSchemaConfigurationProperty
  = SchemaConfigurationProperty
      {haddock_workaround_ = (), catalogId = Prelude.Nothing,
       databaseName = Prelude.Nothing, region = Prelude.Nothing,
       roleARN = Prelude.Nothing, tableName = Prelude.Nothing,
       versionId = Prelude.Nothing}
instance ToResourceProperties SchemaConfigurationProperty where
  toResourceProperties SchemaConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SchemaConfiguration",
         supportsTags = Prelude.False,
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