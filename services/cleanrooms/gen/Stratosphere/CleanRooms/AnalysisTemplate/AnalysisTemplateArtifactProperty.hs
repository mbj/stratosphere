module Stratosphere.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifactProperty (
        module Exports, AnalysisTemplateArtifactProperty(..),
        mkAnalysisTemplateArtifactProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data AnalysisTemplateArtifactProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifact.html>
    AnalysisTemplateArtifactProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifact.html#cfn-cleanrooms-analysistemplate-analysistemplateartifact-location>
                                      location :: S3LocationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisTemplateArtifactProperty ::
  S3LocationProperty -> AnalysisTemplateArtifactProperty
mkAnalysisTemplateArtifactProperty location
  = AnalysisTemplateArtifactProperty
      {haddock_workaround_ = (), location = location}
instance ToResourceProperties AnalysisTemplateArtifactProperty where
  toResourceProperties AnalysisTemplateArtifactProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.AnalysisTemplateArtifact",
         supportsTags = Prelude.False,
         properties = ["Location" JSON..= location]}
instance JSON.ToJSON AnalysisTemplateArtifactProperty where
  toJSON AnalysisTemplateArtifactProperty {..}
    = JSON.object ["Location" JSON..= location]
instance Property "Location" AnalysisTemplateArtifactProperty where
  type PropertyType "Location" AnalysisTemplateArtifactProperty = S3LocationProperty
  set newValue AnalysisTemplateArtifactProperty {..}
    = AnalysisTemplateArtifactProperty {location = newValue, ..}