module Stratosphere.Omics.Workflow.ImageMappingProperty (
        ImageMappingProperty(..), mkImageMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflow-imagemapping.html>
    ImageMappingProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflow-imagemapping.html#cfn-omics-workflow-imagemapping-destinationimage>
                          destinationImage :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflow-imagemapping.html#cfn-omics-workflow-imagemapping-sourceimage>
                          sourceImage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageMappingProperty :: ImageMappingProperty
mkImageMappingProperty
  = ImageMappingProperty
      {haddock_workaround_ = (), destinationImage = Prelude.Nothing,
       sourceImage = Prelude.Nothing}
instance ToResourceProperties ImageMappingProperty where
  toResourceProperties ImageMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::Workflow.ImageMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationImage" Prelude.<$> destinationImage,
                            (JSON..=) "SourceImage" Prelude.<$> sourceImage])}
instance JSON.ToJSON ImageMappingProperty where
  toJSON ImageMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationImage" Prelude.<$> destinationImage,
               (JSON..=) "SourceImage" Prelude.<$> sourceImage]))
instance Property "DestinationImage" ImageMappingProperty where
  type PropertyType "DestinationImage" ImageMappingProperty = Value Prelude.Text
  set newValue ImageMappingProperty {..}
    = ImageMappingProperty
        {destinationImage = Prelude.pure newValue, ..}
instance Property "SourceImage" ImageMappingProperty where
  type PropertyType "SourceImage" ImageMappingProperty = Value Prelude.Text
  set newValue ImageMappingProperty {..}
    = ImageMappingProperty {sourceImage = Prelude.pure newValue, ..}