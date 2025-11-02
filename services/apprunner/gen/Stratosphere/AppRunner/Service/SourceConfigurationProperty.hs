module Stratosphere.AppRunner.Service.SourceConfigurationProperty (
        module Exports, SourceConfigurationProperty(..),
        mkSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.Service.AuthenticationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.CodeRepositoryProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.ImageRepositoryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html>
    SourceConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html#cfn-apprunner-service-sourceconfiguration-authenticationconfiguration>
                                 authenticationConfiguration :: (Prelude.Maybe AuthenticationConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html#cfn-apprunner-service-sourceconfiguration-autodeploymentsenabled>
                                 autoDeploymentsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html#cfn-apprunner-service-sourceconfiguration-coderepository>
                                 codeRepository :: (Prelude.Maybe CodeRepositoryProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html#cfn-apprunner-service-sourceconfiguration-imagerepository>
                                 imageRepository :: (Prelude.Maybe ImageRepositoryProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceConfigurationProperty :: SourceConfigurationProperty
mkSourceConfigurationProperty
  = SourceConfigurationProperty
      {haddock_workaround_ = (),
       authenticationConfiguration = Prelude.Nothing,
       autoDeploymentsEnabled = Prelude.Nothing,
       codeRepository = Prelude.Nothing,
       imageRepository = Prelude.Nothing}
instance ToResourceProperties SourceConfigurationProperty where
  toResourceProperties SourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.SourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthenticationConfiguration"
                              Prelude.<$> authenticationConfiguration,
                            (JSON..=) "AutoDeploymentsEnabled"
                              Prelude.<$> autoDeploymentsEnabled,
                            (JSON..=) "CodeRepository" Prelude.<$> codeRepository,
                            (JSON..=) "ImageRepository" Prelude.<$> imageRepository])}
instance JSON.ToJSON SourceConfigurationProperty where
  toJSON SourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthenticationConfiguration"
                 Prelude.<$> authenticationConfiguration,
               (JSON..=) "AutoDeploymentsEnabled"
                 Prelude.<$> autoDeploymentsEnabled,
               (JSON..=) "CodeRepository" Prelude.<$> codeRepository,
               (JSON..=) "ImageRepository" Prelude.<$> imageRepository]))
instance Property "AuthenticationConfiguration" SourceConfigurationProperty where
  type PropertyType "AuthenticationConfiguration" SourceConfigurationProperty = AuthenticationConfigurationProperty
  set newValue SourceConfigurationProperty {..}
    = SourceConfigurationProperty
        {authenticationConfiguration = Prelude.pure newValue, ..}
instance Property "AutoDeploymentsEnabled" SourceConfigurationProperty where
  type PropertyType "AutoDeploymentsEnabled" SourceConfigurationProperty = Value Prelude.Bool
  set newValue SourceConfigurationProperty {..}
    = SourceConfigurationProperty
        {autoDeploymentsEnabled = Prelude.pure newValue, ..}
instance Property "CodeRepository" SourceConfigurationProperty where
  type PropertyType "CodeRepository" SourceConfigurationProperty = CodeRepositoryProperty
  set newValue SourceConfigurationProperty {..}
    = SourceConfigurationProperty
        {codeRepository = Prelude.pure newValue, ..}
instance Property "ImageRepository" SourceConfigurationProperty where
  type PropertyType "ImageRepository" SourceConfigurationProperty = ImageRepositoryProperty
  set newValue SourceConfigurationProperty {..}
    = SourceConfigurationProperty
        {imageRepository = Prelude.pure newValue, ..}