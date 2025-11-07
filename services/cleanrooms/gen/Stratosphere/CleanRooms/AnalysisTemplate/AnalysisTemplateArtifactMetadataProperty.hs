module Stratosphere.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifactMetadataProperty (
        module Exports, AnalysisTemplateArtifactMetadataProperty(..),
        mkAnalysisTemplateArtifactMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.HashProperty as Exports
import Stratosphere.ResourceProperties
data AnalysisTemplateArtifactMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifactmetadata.html>
    AnalysisTemplateArtifactMetadataProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifactmetadata.html#cfn-cleanrooms-analysistemplate-analysistemplateartifactmetadata-additionalartifacthashes>
                                              additionalArtifactHashes :: (Prelude.Maybe [HashProperty]),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifactmetadata.html#cfn-cleanrooms-analysistemplate-analysistemplateartifactmetadata-entrypointhash>
                                              entryPointHash :: HashProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisTemplateArtifactMetadataProperty ::
  HashProperty -> AnalysisTemplateArtifactMetadataProperty
mkAnalysisTemplateArtifactMetadataProperty entryPointHash
  = AnalysisTemplateArtifactMetadataProperty
      {haddock_workaround_ = (), entryPointHash = entryPointHash,
       additionalArtifactHashes = Prelude.Nothing}
instance ToResourceProperties AnalysisTemplateArtifactMetadataProperty where
  toResourceProperties AnalysisTemplateArtifactMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.AnalysisTemplateArtifactMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntryPointHash" JSON..= entryPointHash]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalArtifactHashes"
                                 Prelude.<$> additionalArtifactHashes]))}
instance JSON.ToJSON AnalysisTemplateArtifactMetadataProperty where
  toJSON AnalysisTemplateArtifactMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntryPointHash" JSON..= entryPointHash]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalArtifactHashes"
                    Prelude.<$> additionalArtifactHashes])))
instance Property "AdditionalArtifactHashes" AnalysisTemplateArtifactMetadataProperty where
  type PropertyType "AdditionalArtifactHashes" AnalysisTemplateArtifactMetadataProperty = [HashProperty]
  set newValue AnalysisTemplateArtifactMetadataProperty {..}
    = AnalysisTemplateArtifactMetadataProperty
        {additionalArtifactHashes = Prelude.pure newValue, ..}
instance Property "EntryPointHash" AnalysisTemplateArtifactMetadataProperty where
  type PropertyType "EntryPointHash" AnalysisTemplateArtifactMetadataProperty = HashProperty
  set newValue AnalysisTemplateArtifactMetadataProperty {..}
    = AnalysisTemplateArtifactMetadataProperty
        {entryPointHash = newValue, ..}