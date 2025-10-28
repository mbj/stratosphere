module Stratosphere.CodePipeline.Pipeline.ArtifactStoreMapProperty (
        module Exports, ArtifactStoreMapProperty(..),
        mkArtifactStoreMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.ArtifactStoreProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArtifactStoreMapProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html>
    ArtifactStoreMapProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-artifactstore>
                              artifactStore :: ArtifactStoreProperty,
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-region>
                              region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArtifactStoreMapProperty ::
  ArtifactStoreProperty
  -> Value Prelude.Text -> ArtifactStoreMapProperty
mkArtifactStoreMapProperty artifactStore region
  = ArtifactStoreMapProperty
      {haddock_workaround_ = (), artifactStore = artifactStore,
       region = region}
instance ToResourceProperties ArtifactStoreMapProperty where
  toResourceProperties ArtifactStoreMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.ArtifactStoreMap",
         supportsTags = Prelude.False,
         properties = ["ArtifactStore" JSON..= artifactStore,
                       "Region" JSON..= region]}
instance JSON.ToJSON ArtifactStoreMapProperty where
  toJSON ArtifactStoreMapProperty {..}
    = JSON.object
        ["ArtifactStore" JSON..= artifactStore, "Region" JSON..= region]
instance Property "ArtifactStore" ArtifactStoreMapProperty where
  type PropertyType "ArtifactStore" ArtifactStoreMapProperty = ArtifactStoreProperty
  set newValue ArtifactStoreMapProperty {..}
    = ArtifactStoreMapProperty {artifactStore = newValue, ..}
instance Property "Region" ArtifactStoreMapProperty where
  type PropertyType "Region" ArtifactStoreMapProperty = Value Prelude.Text
  set newValue ArtifactStoreMapProperty {..}
    = ArtifactStoreMapProperty {region = newValue, ..}