module Stratosphere.CodeBuild.Project.EnvironmentProperty (
        module Exports, EnvironmentProperty(..), mkEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.EnvironmentVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.ProjectFleetProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.RegistryCredentialProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html>
    EnvironmentProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-certificate>
                         certificate :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-computetype>
                         computeType :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-environmentvariables>
                         environmentVariables :: (Prelude.Maybe [EnvironmentVariableProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-fleet>
                         fleet :: (Prelude.Maybe ProjectFleetProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-image>
                         image :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-imagepullcredentialstype>
                         imagePullCredentialsType :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-privilegedmode>
                         privilegedMode :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-registrycredential>
                         registryCredential :: (Prelude.Maybe RegistryCredentialProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-type>
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> EnvironmentProperty
mkEnvironmentProperty computeType image type'
  = EnvironmentProperty
      {haddock_workaround_ = (), computeType = computeType,
       image = image, type' = type', certificate = Prelude.Nothing,
       environmentVariables = Prelude.Nothing, fleet = Prelude.Nothing,
       imagePullCredentialsType = Prelude.Nothing,
       privilegedMode = Prelude.Nothing,
       registryCredential = Prelude.Nothing}
instance ToResourceProperties EnvironmentProperty where
  toResourceProperties EnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.Environment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputeType" JSON..= computeType, "Image" JSON..= image,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Certificate" Prelude.<$> certificate,
                               (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                               (JSON..=) "Fleet" Prelude.<$> fleet,
                               (JSON..=) "ImagePullCredentialsType"
                                 Prelude.<$> imagePullCredentialsType,
                               (JSON..=) "PrivilegedMode" Prelude.<$> privilegedMode,
                               (JSON..=) "RegistryCredential" Prelude.<$> registryCredential]))}
instance JSON.ToJSON EnvironmentProperty where
  toJSON EnvironmentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputeType" JSON..= computeType, "Image" JSON..= image,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Certificate" Prelude.<$> certificate,
                  (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                  (JSON..=) "Fleet" Prelude.<$> fleet,
                  (JSON..=) "ImagePullCredentialsType"
                    Prelude.<$> imagePullCredentialsType,
                  (JSON..=) "PrivilegedMode" Prelude.<$> privilegedMode,
                  (JSON..=) "RegistryCredential" Prelude.<$> registryCredential])))
instance Property "Certificate" EnvironmentProperty where
  type PropertyType "Certificate" EnvironmentProperty = Value Prelude.Text
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {certificate = Prelude.pure newValue, ..}
instance Property "ComputeType" EnvironmentProperty where
  type PropertyType "ComputeType" EnvironmentProperty = Value Prelude.Text
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {computeType = newValue, ..}
instance Property "EnvironmentVariables" EnvironmentProperty where
  type PropertyType "EnvironmentVariables" EnvironmentProperty = [EnvironmentVariableProperty]
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty
        {environmentVariables = Prelude.pure newValue, ..}
instance Property "Fleet" EnvironmentProperty where
  type PropertyType "Fleet" EnvironmentProperty = ProjectFleetProperty
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {fleet = Prelude.pure newValue, ..}
instance Property "Image" EnvironmentProperty where
  type PropertyType "Image" EnvironmentProperty = Value Prelude.Text
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {image = newValue, ..}
instance Property "ImagePullCredentialsType" EnvironmentProperty where
  type PropertyType "ImagePullCredentialsType" EnvironmentProperty = Value Prelude.Text
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty
        {imagePullCredentialsType = Prelude.pure newValue, ..}
instance Property "PrivilegedMode" EnvironmentProperty where
  type PropertyType "PrivilegedMode" EnvironmentProperty = Value Prelude.Bool
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {privilegedMode = Prelude.pure newValue, ..}
instance Property "RegistryCredential" EnvironmentProperty where
  type PropertyType "RegistryCredential" EnvironmentProperty = RegistryCredentialProperty
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty
        {registryCredential = Prelude.pure newValue, ..}
instance Property "Type" EnvironmentProperty where
  type PropertyType "Type" EnvironmentProperty = Value Prelude.Text
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {type' = newValue, ..}