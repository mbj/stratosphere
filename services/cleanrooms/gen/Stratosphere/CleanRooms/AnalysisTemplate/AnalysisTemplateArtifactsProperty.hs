module Stratosphere.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifactsProperty (
        module Exports, AnalysisTemplateArtifactsProperty(..),
        mkAnalysisTemplateArtifactsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifactProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisTemplateArtifactsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifacts.html>
    AnalysisTemplateArtifactsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifacts.html#cfn-cleanrooms-analysistemplate-analysistemplateartifacts-additionalartifacts>
                                       additionalArtifacts :: (Prelude.Maybe [AnalysisTemplateArtifactProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifacts.html#cfn-cleanrooms-analysistemplate-analysistemplateartifacts-entrypoint>
                                       entryPoint :: AnalysisTemplateArtifactProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifacts.html#cfn-cleanrooms-analysistemplate-analysistemplateartifacts-rolearn>
                                       roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisTemplateArtifactsProperty ::
  AnalysisTemplateArtifactProperty
  -> Value Prelude.Text -> AnalysisTemplateArtifactsProperty
mkAnalysisTemplateArtifactsProperty entryPoint roleArn
  = AnalysisTemplateArtifactsProperty
      {haddock_workaround_ = (), entryPoint = entryPoint,
       roleArn = roleArn, additionalArtifacts = Prelude.Nothing}
instance ToResourceProperties AnalysisTemplateArtifactsProperty where
  toResourceProperties AnalysisTemplateArtifactsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.AnalysisTemplateArtifacts",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntryPoint" JSON..= entryPoint, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalArtifacts"
                                 Prelude.<$> additionalArtifacts]))}
instance JSON.ToJSON AnalysisTemplateArtifactsProperty where
  toJSON AnalysisTemplateArtifactsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntryPoint" JSON..= entryPoint, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalArtifacts"
                    Prelude.<$> additionalArtifacts])))
instance Property "AdditionalArtifacts" AnalysisTemplateArtifactsProperty where
  type PropertyType "AdditionalArtifacts" AnalysisTemplateArtifactsProperty = [AnalysisTemplateArtifactProperty]
  set newValue AnalysisTemplateArtifactsProperty {..}
    = AnalysisTemplateArtifactsProperty
        {additionalArtifacts = Prelude.pure newValue, ..}
instance Property "EntryPoint" AnalysisTemplateArtifactsProperty where
  type PropertyType "EntryPoint" AnalysisTemplateArtifactsProperty = AnalysisTemplateArtifactProperty
  set newValue AnalysisTemplateArtifactsProperty {..}
    = AnalysisTemplateArtifactsProperty {entryPoint = newValue, ..}
instance Property "RoleArn" AnalysisTemplateArtifactsProperty where
  type PropertyType "RoleArn" AnalysisTemplateArtifactsProperty = Value Prelude.Text
  set newValue AnalysisTemplateArtifactsProperty {..}
    = AnalysisTemplateArtifactsProperty {roleArn = newValue, ..}