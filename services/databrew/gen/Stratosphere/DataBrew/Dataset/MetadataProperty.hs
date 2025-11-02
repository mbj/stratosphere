module Stratosphere.DataBrew.Dataset.MetadataProperty (
        MetadataProperty(..), mkMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-metadata.html>
    MetadataProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-metadata.html#cfn-databrew-dataset-metadata-sourcearn>
                      sourceArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataProperty :: MetadataProperty
mkMetadataProperty
  = MetadataProperty
      {haddock_workaround_ = (), sourceArn = Prelude.Nothing}
instance ToResourceProperties MetadataProperty where
  toResourceProperties MetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.Metadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SourceArn" Prelude.<$> sourceArn])}
instance JSON.ToJSON MetadataProperty where
  toJSON MetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SourceArn" Prelude.<$> sourceArn]))
instance Property "SourceArn" MetadataProperty where
  type PropertyType "SourceArn" MetadataProperty = Value Prelude.Text
  set newValue MetadataProperty {..}
    = MetadataProperty {sourceArn = Prelude.pure newValue, ..}