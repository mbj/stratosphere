module Stratosphere.Bedrock.DataAutomationProject.VideoStandardExtractionProperty (
        module Exports, VideoStandardExtractionProperty(..),
        mkVideoStandardExtractionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.VideoBoundingBoxProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.VideoExtractionCategoryProperty as Exports
import Stratosphere.ResourceProperties
data VideoStandardExtractionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardextraction.html>
    VideoStandardExtractionProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardextraction.html#cfn-bedrock-dataautomationproject-videostandardextraction-boundingbox>
                                     boundingBox :: VideoBoundingBoxProperty,
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardextraction.html#cfn-bedrock-dataautomationproject-videostandardextraction-category>
                                     category :: VideoExtractionCategoryProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoStandardExtractionProperty ::
  VideoBoundingBoxProperty
  -> VideoExtractionCategoryProperty
     -> VideoStandardExtractionProperty
mkVideoStandardExtractionProperty boundingBox category
  = VideoStandardExtractionProperty
      {haddock_workaround_ = (), boundingBox = boundingBox,
       category = category}
instance ToResourceProperties VideoStandardExtractionProperty where
  toResourceProperties VideoStandardExtractionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.VideoStandardExtraction",
         supportsTags = Prelude.False,
         properties = ["BoundingBox" JSON..= boundingBox,
                       "Category" JSON..= category]}
instance JSON.ToJSON VideoStandardExtractionProperty where
  toJSON VideoStandardExtractionProperty {..}
    = JSON.object
        ["BoundingBox" JSON..= boundingBox, "Category" JSON..= category]
instance Property "BoundingBox" VideoStandardExtractionProperty where
  type PropertyType "BoundingBox" VideoStandardExtractionProperty = VideoBoundingBoxProperty
  set newValue VideoStandardExtractionProperty {..}
    = VideoStandardExtractionProperty {boundingBox = newValue, ..}
instance Property "Category" VideoStandardExtractionProperty where
  type PropertyType "Category" VideoStandardExtractionProperty = VideoExtractionCategoryProperty
  set newValue VideoStandardExtractionProperty {..}
    = VideoStandardExtractionProperty {category = newValue, ..}