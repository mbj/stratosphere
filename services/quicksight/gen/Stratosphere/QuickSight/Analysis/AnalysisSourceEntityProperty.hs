module Stratosphere.QuickSight.Analysis.AnalysisSourceEntityProperty (
        module Exports, AnalysisSourceEntityProperty(..),
        mkAnalysisSourceEntityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AnalysisSourceTemplateProperty as Exports
import Stratosphere.ResourceProperties
data AnalysisSourceEntityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysissourceentity.html>
    AnalysisSourceEntityProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysissourceentity.html#cfn-quicksight-analysis-analysissourceentity-sourcetemplate>
                                  sourceTemplate :: (Prelude.Maybe AnalysisSourceTemplateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisSourceEntityProperty :: AnalysisSourceEntityProperty
mkAnalysisSourceEntityProperty
  = AnalysisSourceEntityProperty
      {haddock_workaround_ = (), sourceTemplate = Prelude.Nothing}
instance ToResourceProperties AnalysisSourceEntityProperty where
  toResourceProperties AnalysisSourceEntityProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AnalysisSourceEntity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceTemplate" Prelude.<$> sourceTemplate])}
instance JSON.ToJSON AnalysisSourceEntityProperty where
  toJSON AnalysisSourceEntityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceTemplate" Prelude.<$> sourceTemplate]))
instance Property "SourceTemplate" AnalysisSourceEntityProperty where
  type PropertyType "SourceTemplate" AnalysisSourceEntityProperty = AnalysisSourceTemplateProperty
  set newValue AnalysisSourceEntityProperty {..}
    = AnalysisSourceEntityProperty
        {sourceTemplate = Prelude.pure newValue, ..}