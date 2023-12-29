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
  = AnalysisSourceEntityProperty {sourceTemplate :: (Prelude.Maybe AnalysisSourceTemplateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisSourceEntityProperty :: AnalysisSourceEntityProperty
mkAnalysisSourceEntityProperty
  = AnalysisSourceEntityProperty {sourceTemplate = Prelude.Nothing}
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
  set newValue AnalysisSourceEntityProperty {}
    = AnalysisSourceEntityProperty
        {sourceTemplate = Prelude.pure newValue, ..}