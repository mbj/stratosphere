module Stratosphere.DMS.MigrationProject.SchemaConversionApplicationAttributesProperty (
        SchemaConversionApplicationAttributesProperty(..),
        mkSchemaConversionApplicationAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaConversionApplicationAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-migrationproject-schemaconversionapplicationattributes.html>
    SchemaConversionApplicationAttributesProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-migrationproject-schemaconversionapplicationattributes.html#cfn-dms-migrationproject-schemaconversionapplicationattributes-s3bucketpath>
                                                   s3BucketPath :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-migrationproject-schemaconversionapplicationattributes.html#cfn-dms-migrationproject-schemaconversionapplicationattributes-s3bucketrolearn>
                                                   s3BucketRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaConversionApplicationAttributesProperty ::
  SchemaConversionApplicationAttributesProperty
mkSchemaConversionApplicationAttributesProperty
  = SchemaConversionApplicationAttributesProperty
      {haddock_workaround_ = (), s3BucketPath = Prelude.Nothing,
       s3BucketRoleArn = Prelude.Nothing}
instance ToResourceProperties SchemaConversionApplicationAttributesProperty where
  toResourceProperties
    SchemaConversionApplicationAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::MigrationProject.SchemaConversionApplicationAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3BucketPath" Prelude.<$> s3BucketPath,
                            (JSON..=) "S3BucketRoleArn" Prelude.<$> s3BucketRoleArn])}
instance JSON.ToJSON SchemaConversionApplicationAttributesProperty where
  toJSON SchemaConversionApplicationAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3BucketPath" Prelude.<$> s3BucketPath,
               (JSON..=) "S3BucketRoleArn" Prelude.<$> s3BucketRoleArn]))
instance Property "S3BucketPath" SchemaConversionApplicationAttributesProperty where
  type PropertyType "S3BucketPath" SchemaConversionApplicationAttributesProperty = Value Prelude.Text
  set newValue SchemaConversionApplicationAttributesProperty {..}
    = SchemaConversionApplicationAttributesProperty
        {s3BucketPath = Prelude.pure newValue, ..}
instance Property "S3BucketRoleArn" SchemaConversionApplicationAttributesProperty where
  type PropertyType "S3BucketRoleArn" SchemaConversionApplicationAttributesProperty = Value Prelude.Text
  set newValue SchemaConversionApplicationAttributesProperty {..}
    = SchemaConversionApplicationAttributesProperty
        {s3BucketRoleArn = Prelude.pure newValue, ..}