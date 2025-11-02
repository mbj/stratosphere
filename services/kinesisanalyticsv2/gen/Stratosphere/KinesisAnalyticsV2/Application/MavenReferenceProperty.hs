module Stratosphere.KinesisAnalyticsV2.Application.MavenReferenceProperty (
        MavenReferenceProperty(..), mkMavenReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MavenReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mavenreference.html>
    MavenReferenceProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mavenreference.html#cfn-kinesisanalyticsv2-application-mavenreference-artifactid>
                            artifactId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mavenreference.html#cfn-kinesisanalyticsv2-application-mavenreference-groupid>
                            groupId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mavenreference.html#cfn-kinesisanalyticsv2-application-mavenreference-version>
                            version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMavenReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MavenReferenceProperty
mkMavenReferenceProperty artifactId groupId version
  = MavenReferenceProperty
      {haddock_workaround_ = (), artifactId = artifactId,
       groupId = groupId, version = version}
instance ToResourceProperties MavenReferenceProperty where
  toResourceProperties MavenReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.MavenReference",
         supportsTags = Prelude.False,
         properties = ["ArtifactId" JSON..= artifactId,
                       "GroupId" JSON..= groupId, "Version" JSON..= version]}
instance JSON.ToJSON MavenReferenceProperty where
  toJSON MavenReferenceProperty {..}
    = JSON.object
        ["ArtifactId" JSON..= artifactId, "GroupId" JSON..= groupId,
         "Version" JSON..= version]
instance Property "ArtifactId" MavenReferenceProperty where
  type PropertyType "ArtifactId" MavenReferenceProperty = Value Prelude.Text
  set newValue MavenReferenceProperty {..}
    = MavenReferenceProperty {artifactId = newValue, ..}
instance Property "GroupId" MavenReferenceProperty where
  type PropertyType "GroupId" MavenReferenceProperty = Value Prelude.Text
  set newValue MavenReferenceProperty {..}
    = MavenReferenceProperty {groupId = newValue, ..}
instance Property "Version" MavenReferenceProperty where
  type PropertyType "Version" MavenReferenceProperty = Value Prelude.Text
  set newValue MavenReferenceProperty {..}
    = MavenReferenceProperty {version = newValue, ..}