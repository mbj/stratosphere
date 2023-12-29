module Stratosphere.KinesisAnalyticsV2.Application.MavenReferenceProperty (
        MavenReferenceProperty(..), mkMavenReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MavenReferenceProperty
  = MavenReferenceProperty {artifactId :: (Value Prelude.Text),
                            groupId :: (Value Prelude.Text),
                            version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMavenReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MavenReferenceProperty
mkMavenReferenceProperty artifactId groupId version
  = MavenReferenceProperty
      {artifactId = artifactId, groupId = groupId, version = version}
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