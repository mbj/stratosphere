module Stratosphere.S3Tables.Table.IcebergMetadataProperty (
        module Exports, IcebergMetadataProperty(..),
        mkIcebergMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Tables.Table.IcebergSchemaProperty as Exports
import Stratosphere.ResourceProperties
data IcebergMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-icebergmetadata.html>
    IcebergMetadataProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-icebergmetadata.html#cfn-s3tables-table-icebergmetadata-icebergschema>
                             icebergSchema :: IcebergSchemaProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIcebergMetadataProperty ::
  IcebergSchemaProperty -> IcebergMetadataProperty
mkIcebergMetadataProperty icebergSchema
  = IcebergMetadataProperty
      {haddock_workaround_ = (), icebergSchema = icebergSchema}
instance ToResourceProperties IcebergMetadataProperty where
  toResourceProperties IcebergMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::Table.IcebergMetadata",
         supportsTags = Prelude.False,
         properties = ["IcebergSchema" JSON..= icebergSchema]}
instance JSON.ToJSON IcebergMetadataProperty where
  toJSON IcebergMetadataProperty {..}
    = JSON.object ["IcebergSchema" JSON..= icebergSchema]
instance Property "IcebergSchema" IcebergMetadataProperty where
  type PropertyType "IcebergSchema" IcebergMetadataProperty = IcebergSchemaProperty
  set newValue IcebergMetadataProperty {..}
    = IcebergMetadataProperty {icebergSchema = newValue, ..}