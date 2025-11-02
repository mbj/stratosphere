module Stratosphere.CodePipeline.CustomActionType.ArtifactDetailsProperty (
        ArtifactDetailsProperty(..), mkArtifactDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArtifactDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html>
    ArtifactDetailsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-maximumcount>
                             maximumCount :: (Value Prelude.Integer),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-minimumcount>
                             minimumCount :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArtifactDetailsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ArtifactDetailsProperty
mkArtifactDetailsProperty maximumCount minimumCount
  = ArtifactDetailsProperty
      {haddock_workaround_ = (), maximumCount = maximumCount,
       minimumCount = minimumCount}
instance ToResourceProperties ArtifactDetailsProperty where
  toResourceProperties ArtifactDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::CustomActionType.ArtifactDetails",
         supportsTags = Prelude.False,
         properties = ["MaximumCount" JSON..= maximumCount,
                       "MinimumCount" JSON..= minimumCount]}
instance JSON.ToJSON ArtifactDetailsProperty where
  toJSON ArtifactDetailsProperty {..}
    = JSON.object
        ["MaximumCount" JSON..= maximumCount,
         "MinimumCount" JSON..= minimumCount]
instance Property "MaximumCount" ArtifactDetailsProperty where
  type PropertyType "MaximumCount" ArtifactDetailsProperty = Value Prelude.Integer
  set newValue ArtifactDetailsProperty {..}
    = ArtifactDetailsProperty {maximumCount = newValue, ..}
instance Property "MinimumCount" ArtifactDetailsProperty where
  type PropertyType "MinimumCount" ArtifactDetailsProperty = Value Prelude.Integer
  set newValue ArtifactDetailsProperty {..}
    = ArtifactDetailsProperty {minimumCount = newValue, ..}