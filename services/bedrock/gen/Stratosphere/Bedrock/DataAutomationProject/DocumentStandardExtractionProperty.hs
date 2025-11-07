module Stratosphere.Bedrock.DataAutomationProject.DocumentStandardExtractionProperty (
        module Exports, DocumentStandardExtractionProperty(..),
        mkDocumentStandardExtractionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.DocumentBoundingBoxProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.DocumentExtractionGranularityProperty as Exports
import Stratosphere.ResourceProperties
data DocumentStandardExtractionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardextraction.html>
    DocumentStandardExtractionProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardextraction.html#cfn-bedrock-dataautomationproject-documentstandardextraction-boundingbox>
                                        boundingBox :: DocumentBoundingBoxProperty,
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardextraction.html#cfn-bedrock-dataautomationproject-documentstandardextraction-granularity>
                                        granularity :: DocumentExtractionGranularityProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentStandardExtractionProperty ::
  DocumentBoundingBoxProperty
  -> DocumentExtractionGranularityProperty
     -> DocumentStandardExtractionProperty
mkDocumentStandardExtractionProperty boundingBox granularity
  = DocumentStandardExtractionProperty
      {haddock_workaround_ = (), boundingBox = boundingBox,
       granularity = granularity}
instance ToResourceProperties DocumentStandardExtractionProperty where
  toResourceProperties DocumentStandardExtractionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.DocumentStandardExtraction",
         supportsTags = Prelude.False,
         properties = ["BoundingBox" JSON..= boundingBox,
                       "Granularity" JSON..= granularity]}
instance JSON.ToJSON DocumentStandardExtractionProperty where
  toJSON DocumentStandardExtractionProperty {..}
    = JSON.object
        ["BoundingBox" JSON..= boundingBox,
         "Granularity" JSON..= granularity]
instance Property "BoundingBox" DocumentStandardExtractionProperty where
  type PropertyType "BoundingBox" DocumentStandardExtractionProperty = DocumentBoundingBoxProperty
  set newValue DocumentStandardExtractionProperty {..}
    = DocumentStandardExtractionProperty {boundingBox = newValue, ..}
instance Property "Granularity" DocumentStandardExtractionProperty where
  type PropertyType "Granularity" DocumentStandardExtractionProperty = DocumentExtractionGranularityProperty
  set newValue DocumentStandardExtractionProperty {..}
    = DocumentStandardExtractionProperty {granularity = newValue, ..}