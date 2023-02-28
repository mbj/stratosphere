module Stratosphere.QuickSight.Template.TemplateSourceAnalysisProperty (
        module Exports, TemplateSourceAnalysisProperty(..),
        mkTemplateSourceAnalysisProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataSetReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateSourceAnalysisProperty
  = TemplateSourceAnalysisProperty {arn :: (Value Prelude.Text),
                                    dataSetReferences :: [DataSetReferenceProperty]}
mkTemplateSourceAnalysisProperty ::
  Value Prelude.Text
  -> [DataSetReferenceProperty] -> TemplateSourceAnalysisProperty
mkTemplateSourceAnalysisProperty arn dataSetReferences
  = TemplateSourceAnalysisProperty
      {arn = arn, dataSetReferences = dataSetReferences}
instance ToResourceProperties TemplateSourceAnalysisProperty where
  toResourceProperties TemplateSourceAnalysisProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TemplateSourceAnalysis",
         supportsTags = Prelude.False,
         properties = ["Arn" JSON..= arn,
                       "DataSetReferences" JSON..= dataSetReferences]}
instance JSON.ToJSON TemplateSourceAnalysisProperty where
  toJSON TemplateSourceAnalysisProperty {..}
    = JSON.object
        ["Arn" JSON..= arn, "DataSetReferences" JSON..= dataSetReferences]
instance Property "Arn" TemplateSourceAnalysisProperty where
  type PropertyType "Arn" TemplateSourceAnalysisProperty = Value Prelude.Text
  set newValue TemplateSourceAnalysisProperty {..}
    = TemplateSourceAnalysisProperty {arn = newValue, ..}
instance Property "DataSetReferences" TemplateSourceAnalysisProperty where
  type PropertyType "DataSetReferences" TemplateSourceAnalysisProperty = [DataSetReferenceProperty]
  set newValue TemplateSourceAnalysisProperty {..}
    = TemplateSourceAnalysisProperty {dataSetReferences = newValue, ..}