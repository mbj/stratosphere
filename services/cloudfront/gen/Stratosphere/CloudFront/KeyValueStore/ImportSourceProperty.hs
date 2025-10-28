module Stratosphere.CloudFront.KeyValueStore.ImportSourceProperty (
        ImportSourceProperty(..), mkImportSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImportSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-keyvaluestore-importsource.html>
    ImportSourceProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-keyvaluestore-importsource.html#cfn-cloudfront-keyvaluestore-importsource-sourcearn>
                          sourceArn :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-keyvaluestore-importsource.html#cfn-cloudfront-keyvaluestore-importsource-sourcetype>
                          sourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImportSourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ImportSourceProperty
mkImportSourceProperty sourceArn sourceType
  = ImportSourceProperty
      {haddock_workaround_ = (), sourceArn = sourceArn,
       sourceType = sourceType}
instance ToResourceProperties ImportSourceProperty where
  toResourceProperties ImportSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::KeyValueStore.ImportSource",
         supportsTags = Prelude.False,
         properties = ["SourceArn" JSON..= sourceArn,
                       "SourceType" JSON..= sourceType]}
instance JSON.ToJSON ImportSourceProperty where
  toJSON ImportSourceProperty {..}
    = JSON.object
        ["SourceArn" JSON..= sourceArn, "SourceType" JSON..= sourceType]
instance Property "SourceArn" ImportSourceProperty where
  type PropertyType "SourceArn" ImportSourceProperty = Value Prelude.Text
  set newValue ImportSourceProperty {..}
    = ImportSourceProperty {sourceArn = newValue, ..}
instance Property "SourceType" ImportSourceProperty where
  type PropertyType "SourceType" ImportSourceProperty = Value Prelude.Text
  set newValue ImportSourceProperty {..}
    = ImportSourceProperty {sourceType = newValue, ..}