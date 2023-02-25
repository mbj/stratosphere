module Stratosphere.CodeBuild.Project.EnvironmentProperty (
        module Exports, EnvironmentProperty(..), mkEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.EnvironmentVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.RegistryCredentialProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentProperty
  = EnvironmentProperty {certificate :: (Prelude.Maybe (Value Prelude.Text)),
                         computeType :: (Value Prelude.Text),
                         environmentVariables :: (Prelude.Maybe [EnvironmentVariableProperty]),
                         image :: (Value Prelude.Text),
                         imagePullCredentialsType :: (Prelude.Maybe (Value Prelude.Text)),
                         privilegedMode :: (Prelude.Maybe (Value Prelude.Bool)),
                         registryCredential :: (Prelude.Maybe RegistryCredentialProperty),
                         type' :: (Value Prelude.Text)}
mkEnvironmentProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> EnvironmentProperty
mkEnvironmentProperty computeType image type'
  = EnvironmentProperty
      {computeType = computeType, image = image, type' = type',
       certificate = Prelude.Nothing,
       environmentVariables = Prelude.Nothing,
       imagePullCredentialsType = Prelude.Nothing,
       privilegedMode = Prelude.Nothing,
       registryCredential = Prelude.Nothing}
instance ToResourceProperties EnvironmentProperty where
  toResourceProperties EnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.Environment",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputeType" JSON..= computeType, "Image" JSON..= image,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Certificate" Prelude.<$> certificate,
                               (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
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