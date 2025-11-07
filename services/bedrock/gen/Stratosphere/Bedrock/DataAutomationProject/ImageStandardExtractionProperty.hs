module Stratosphere.Bedrock.DataAutomationProject.ImageStandardExtractionProperty (
        module Exports, ImageStandardExtractionProperty(..),
        mkImageStandardExtractionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ImageBoundingBoxProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.ImageExtractionCategoryProperty as Exports
import Stratosphere.ResourceProperties
data ImageStandardExtractionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardextraction.html>
    ImageStandardExtractionProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardextraction.html#cfn-bedrock-dataautomationproject-imagestandardextraction-boundingbox>
                                     boundingBox :: ImageBoundingBoxProperty,
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardextraction.html#cfn-bedrock-dataautomationproject-imagestandardextraction-category>
                                     category :: ImageExtractionCategoryProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageStandardExtractionProperty ::
  ImageBoundingBoxProperty
  -> ImageExtractionCategoryProperty
     -> ImageStandardExtractionProperty
mkImageStandardExtractionProperty boundingBox category
  = ImageStandardExtractionProperty
      {haddock_workaround_ = (), boundingBox = boundingBox,
       category = category}
instance ToResourceProperties ImageStandardExtractionProperty where
  toResourceProperties ImageStandardExtractionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.ImageStandardExtraction",
         supportsTags = Prelude.False,
         properties = ["BoundingBox" JSON..= boundingBox,
                       "Category" JSON..= category]}
instance JSON.ToJSON ImageStandardExtractionProperty where
  toJSON ImageStandardExtractionProperty {..}
    = JSON.object
        ["BoundingBox" JSON..= boundingBox, "Category" JSON..= category]
instance Property "BoundingBox" ImageStandardExtractionProperty where
  type PropertyType "BoundingBox" ImageStandardExtractionProperty = ImageBoundingBoxProperty
  set newValue ImageStandardExtractionProperty {..}
    = ImageStandardExtractionProperty {boundingBox = newValue, ..}
instance Property "Category" ImageStandardExtractionProperty where
  type PropertyType "Category" ImageStandardExtractionProperty = ImageExtractionCategoryProperty
  set newValue ImageStandardExtractionProperty {..}
    = ImageStandardExtractionProperty {category = newValue, ..}