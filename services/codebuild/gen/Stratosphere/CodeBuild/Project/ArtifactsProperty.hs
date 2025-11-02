module Stratosphere.CodeBuild.Project.ArtifactsProperty (
        ArtifactsProperty(..), mkArtifactsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArtifactsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html>
    ArtifactsProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-artifactidentifier>
                       artifactIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-encryptiondisabled>
                       encryptionDisabled :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-location>
                       location :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-name>
                       name :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-namespacetype>
                       namespaceType :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-overrideartifactname>
                       overrideArtifactName :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-packaging>
                       packaging :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-path>
                       path :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-type>
                       type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArtifactsProperty :: Value Prelude.Text -> ArtifactsProperty
mkArtifactsProperty type'
  = ArtifactsProperty
      {haddock_workaround_ = (), type' = type',
       artifactIdentifier = Prelude.Nothing,
       encryptionDisabled = Prelude.Nothing, location = Prelude.Nothing,
       name = Prelude.Nothing, namespaceType = Prelude.Nothing,
       overrideArtifactName = Prelude.Nothing,
       packaging = Prelude.Nothing, path = Prelude.Nothing}
instance ToResourceProperties ArtifactsProperty where
  toResourceProperties ArtifactsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.Artifacts",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ArtifactIdentifier" Prelude.<$> artifactIdentifier,
                               (JSON..=) "EncryptionDisabled" Prelude.<$> encryptionDisabled,
                               (JSON..=) "Location" Prelude.<$> location,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "NamespaceType" Prelude.<$> namespaceType,
                               (JSON..=) "OverrideArtifactName" Prelude.<$> overrideArtifactName,
                               (JSON..=) "Packaging" Prelude.<$> packaging,
                               (JSON..=) "Path" Prelude.<$> path]))}
instance JSON.ToJSON ArtifactsProperty where
  toJSON ArtifactsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ArtifactIdentifier" Prelude.<$> artifactIdentifier,
                  (JSON..=) "EncryptionDisabled" Prelude.<$> encryptionDisabled,
                  (JSON..=) "Location" Prelude.<$> location,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "NamespaceType" Prelude.<$> namespaceType,
                  (JSON..=) "OverrideArtifactName" Prelude.<$> overrideArtifactName,
                  (JSON..=) "Packaging" Prelude.<$> packaging,
                  (JSON..=) "Path" Prelude.<$> path])))
instance Property "ArtifactIdentifier" ArtifactsProperty where
  type PropertyType "ArtifactIdentifier" ArtifactsProperty = Value Prelude.Text
  set newValue ArtifactsProperty {..}
    = ArtifactsProperty
        {artifactIdentifier = Prelude.pure newValue, ..}
instance Property "EncryptionDisabled" ArtifactsProperty where
  type PropertyType "EncryptionDisabled" ArtifactsProperty = Value Prelude.Bool
  set newValue ArtifactsProperty {..}
    = ArtifactsProperty
        {encryptionDisabled = Prelude.pure newValue, ..}
instance Property "Location" ArtifactsProperty where
  type PropertyType "Location" ArtifactsProperty = Value Prelude.Text
  set newValue ArtifactsProperty {..}
    = ArtifactsProperty {location = Prelude.pure newValue, ..}
instance Property "Name" ArtifactsProperty where
  type PropertyType "Name" ArtifactsProperty = Value Prelude.Text
  set newValue ArtifactsProperty {..}
    = ArtifactsProperty {name = Prelude.pure newValue, ..}
instance Property "NamespaceType" ArtifactsProperty where
  type PropertyType "NamespaceType" ArtifactsProperty = Value Prelude.Text
  set newValue ArtifactsProperty {..}
    = ArtifactsProperty {namespaceType = Prelude.pure newValue, ..}
instance Property "OverrideArtifactName" ArtifactsProperty where
  type PropertyType "OverrideArtifactName" ArtifactsProperty = Value Prelude.Bool
  set newValue ArtifactsProperty {..}
    = ArtifactsProperty
        {overrideArtifactName = Prelude.pure newValue, ..}
instance Property "Packaging" ArtifactsProperty where
  type PropertyType "Packaging" ArtifactsProperty = Value Prelude.Text
  set newValue ArtifactsProperty {..}
    = ArtifactsProperty {packaging = Prelude.pure newValue, ..}
instance Property "Path" ArtifactsProperty where
  type PropertyType "Path" ArtifactsProperty = Value Prelude.Text
  set newValue ArtifactsProperty {..}
    = ArtifactsProperty {path = Prelude.pure newValue, ..}
instance Property "Type" ArtifactsProperty where
  type PropertyType "Type" ArtifactsProperty = Value Prelude.Text
  set newValue ArtifactsProperty {..}
    = ArtifactsProperty {type' = newValue, ..}