module Stratosphere.QuickSight.Template.TemplateSourceEntityProperty (
        module Exports, TemplateSourceEntityProperty(..),
        mkTemplateSourceEntityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TemplateSourceAnalysisProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TemplateSourceTemplateProperty as Exports
import Stratosphere.ResourceProperties
data TemplateSourceEntityProperty
  = TemplateSourceEntityProperty {sourceAnalysis :: (Prelude.Maybe TemplateSourceAnalysisProperty),
                                  sourceTemplate :: (Prelude.Maybe TemplateSourceTemplateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateSourceEntityProperty :: TemplateSourceEntityProperty
mkTemplateSourceEntityProperty
  = TemplateSourceEntityProperty
      {sourceAnalysis = Prelude.Nothing,
       sourceTemplate = Prelude.Nothing}
instance ToResourceProperties TemplateSourceEntityProperty where
  toResourceProperties TemplateSourceEntityProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TemplateSourceEntity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceAnalysis" Prelude.<$> sourceAnalysis,
                            (JSON..=) "SourceTemplate" Prelude.<$> sourceTemplate])}
instance JSON.ToJSON TemplateSourceEntityProperty where
  toJSON TemplateSourceEntityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceAnalysis" Prelude.<$> sourceAnalysis,
               (JSON..=) "SourceTemplate" Prelude.<$> sourceTemplate]))
instance Property "SourceAnalysis" TemplateSourceEntityProperty where
  type PropertyType "SourceAnalysis" TemplateSourceEntityProperty = TemplateSourceAnalysisProperty
  set newValue TemplateSourceEntityProperty {..}
    = TemplateSourceEntityProperty
        {sourceAnalysis = Prelude.pure newValue, ..}
instance Property "SourceTemplate" TemplateSourceEntityProperty where
  type PropertyType "SourceTemplate" TemplateSourceEntityProperty = TemplateSourceTemplateProperty
  set newValue TemplateSourceEntityProperty {..}
    = TemplateSourceEntityProperty
        {sourceTemplate = Prelude.pure newValue, ..}