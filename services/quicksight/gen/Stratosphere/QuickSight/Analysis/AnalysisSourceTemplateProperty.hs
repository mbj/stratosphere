module Stratosphere.QuickSight.Analysis.AnalysisSourceTemplateProperty (
        module Exports, AnalysisSourceTemplateProperty(..),
        mkAnalysisSourceTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataSetReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisSourceTemplateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysissourcetemplate.html>
    AnalysisSourceTemplateProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysissourcetemplate.html#cfn-quicksight-analysis-analysissourcetemplate-arn>
                                    arn :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysissourcetemplate.html#cfn-quicksight-analysis-analysissourcetemplate-datasetreferences>
                                    dataSetReferences :: [DataSetReferenceProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisSourceTemplateProperty ::
  Value Prelude.Text
  -> [DataSetReferenceProperty] -> AnalysisSourceTemplateProperty
mkAnalysisSourceTemplateProperty arn dataSetReferences
  = AnalysisSourceTemplateProperty
      {haddock_workaround_ = (), arn = arn,
       dataSetReferences = dataSetReferences}
instance ToResourceProperties AnalysisSourceTemplateProperty where
  toResourceProperties AnalysisSourceTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AnalysisSourceTemplate",
         supportsTags = Prelude.False,
         properties = ["Arn" JSON..= arn,
                       "DataSetReferences" JSON..= dataSetReferences]}
instance JSON.ToJSON AnalysisSourceTemplateProperty where
  toJSON AnalysisSourceTemplateProperty {..}
    = JSON.object
        ["Arn" JSON..= arn, "DataSetReferences" JSON..= dataSetReferences]
instance Property "Arn" AnalysisSourceTemplateProperty where
  type PropertyType "Arn" AnalysisSourceTemplateProperty = Value Prelude.Text
  set newValue AnalysisSourceTemplateProperty {..}
    = AnalysisSourceTemplateProperty {arn = newValue, ..}
instance Property "DataSetReferences" AnalysisSourceTemplateProperty where
  type PropertyType "DataSetReferences" AnalysisSourceTemplateProperty = [DataSetReferenceProperty]
  set newValue AnalysisSourceTemplateProperty {..}
    = AnalysisSourceTemplateProperty {dataSetReferences = newValue, ..}