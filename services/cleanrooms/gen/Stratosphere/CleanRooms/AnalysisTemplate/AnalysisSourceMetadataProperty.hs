module Stratosphere.CleanRooms.AnalysisTemplate.AnalysisSourceMetadataProperty (
        module Exports, AnalysisSourceMetadataProperty(..),
        mkAnalysisSourceMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifactMetadataProperty as Exports
import Stratosphere.ResourceProperties
data AnalysisSourceMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysissourcemetadata.html>
    AnalysisSourceMetadataProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysissourcemetadata.html#cfn-cleanrooms-analysistemplate-analysissourcemetadata-artifacts>
                                    artifacts :: AnalysisTemplateArtifactMetadataProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisSourceMetadataProperty ::
  AnalysisTemplateArtifactMetadataProperty
  -> AnalysisSourceMetadataProperty
mkAnalysisSourceMetadataProperty artifacts
  = AnalysisSourceMetadataProperty
      {haddock_workaround_ = (), artifacts = artifacts}
instance ToResourceProperties AnalysisSourceMetadataProperty where
  toResourceProperties AnalysisSourceMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.AnalysisSourceMetadata",
         supportsTags = Prelude.False,
         properties = ["Artifacts" JSON..= artifacts]}
instance JSON.ToJSON AnalysisSourceMetadataProperty where
  toJSON AnalysisSourceMetadataProperty {..}
    = JSON.object ["Artifacts" JSON..= artifacts]
instance Property "Artifacts" AnalysisSourceMetadataProperty where
  type PropertyType "Artifacts" AnalysisSourceMetadataProperty = AnalysisTemplateArtifactMetadataProperty
  set newValue AnalysisSourceMetadataProperty {..}
    = AnalysisSourceMetadataProperty {artifacts = newValue, ..}