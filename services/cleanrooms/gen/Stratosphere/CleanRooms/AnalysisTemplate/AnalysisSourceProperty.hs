module Stratosphere.CleanRooms.AnalysisTemplate.AnalysisSourceProperty (
        module Exports, AnalysisSourceProperty(..),
        mkAnalysisSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifactsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysissource.html>
    AnalysisSourceProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysissource.html#cfn-cleanrooms-analysistemplate-analysissource-artifacts>
                            artifacts :: (Prelude.Maybe AnalysisTemplateArtifactsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysissource.html#cfn-cleanrooms-analysistemplate-analysissource-text>
                            text :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisSourceProperty :: AnalysisSourceProperty
mkAnalysisSourceProperty
  = AnalysisSourceProperty
      {haddock_workaround_ = (), artifacts = Prelude.Nothing,
       text = Prelude.Nothing}
instance ToResourceProperties AnalysisSourceProperty where
  toResourceProperties AnalysisSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.AnalysisSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Artifacts" Prelude.<$> artifacts,
                            (JSON..=) "Text" Prelude.<$> text])}
instance JSON.ToJSON AnalysisSourceProperty where
  toJSON AnalysisSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Artifacts" Prelude.<$> artifacts,
               (JSON..=) "Text" Prelude.<$> text]))
instance Property "Artifacts" AnalysisSourceProperty where
  type PropertyType "Artifacts" AnalysisSourceProperty = AnalysisTemplateArtifactsProperty
  set newValue AnalysisSourceProperty {..}
    = AnalysisSourceProperty {artifacts = Prelude.pure newValue, ..}
instance Property "Text" AnalysisSourceProperty where
  type PropertyType "Text" AnalysisSourceProperty = Value Prelude.Text
  set newValue AnalysisSourceProperty {..}
    = AnalysisSourceProperty {text = Prelude.pure newValue, ..}