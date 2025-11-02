module Stratosphere.SageMaker.Domain.DomainSettingsProperty (
        module Exports, DomainSettingsProperty(..),
        mkDomainSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.DockerSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.RStudioServerProDomainSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-domainsettings.html>
    DomainSettingsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-domainsettings.html#cfn-sagemaker-domain-domainsettings-dockersettings>
                            dockerSettings :: (Prelude.Maybe DockerSettingsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-domainsettings.html#cfn-sagemaker-domain-domainsettings-executionroleidentityconfig>
                            executionRoleIdentityConfig :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-domainsettings.html#cfn-sagemaker-domain-domainsettings-rstudioserverprodomainsettings>
                            rStudioServerProDomainSettings :: (Prelude.Maybe RStudioServerProDomainSettingsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-domainsettings.html#cfn-sagemaker-domain-domainsettings-securitygroupids>
                            securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainSettingsProperty :: DomainSettingsProperty
mkDomainSettingsProperty
  = DomainSettingsProperty
      {haddock_workaround_ = (), dockerSettings = Prelude.Nothing,
       executionRoleIdentityConfig = Prelude.Nothing,
       rStudioServerProDomainSettings = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing}
instance ToResourceProperties DomainSettingsProperty where
  toResourceProperties DomainSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.DomainSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DockerSettings" Prelude.<$> dockerSettings,
                            (JSON..=) "ExecutionRoleIdentityConfig"
                              Prelude.<$> executionRoleIdentityConfig,
                            (JSON..=) "RStudioServerProDomainSettings"
                              Prelude.<$> rStudioServerProDomainSettings,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds])}
instance JSON.ToJSON DomainSettingsProperty where
  toJSON DomainSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DockerSettings" Prelude.<$> dockerSettings,
               (JSON..=) "ExecutionRoleIdentityConfig"
                 Prelude.<$> executionRoleIdentityConfig,
               (JSON..=) "RStudioServerProDomainSettings"
                 Prelude.<$> rStudioServerProDomainSettings,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds]))
instance Property "DockerSettings" DomainSettingsProperty where
  type PropertyType "DockerSettings" DomainSettingsProperty = DockerSettingsProperty
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {dockerSettings = Prelude.pure newValue, ..}
instance Property "ExecutionRoleIdentityConfig" DomainSettingsProperty where
  type PropertyType "ExecutionRoleIdentityConfig" DomainSettingsProperty = Value Prelude.Text
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {executionRoleIdentityConfig = Prelude.pure newValue, ..}
instance Property "RStudioServerProDomainSettings" DomainSettingsProperty where
  type PropertyType "RStudioServerProDomainSettings" DomainSettingsProperty = RStudioServerProDomainSettingsProperty
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {rStudioServerProDomainSettings = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" DomainSettingsProperty where
  type PropertyType "SecurityGroupIds" DomainSettingsProperty = ValueList Prelude.Text
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {securityGroupIds = Prelude.pure newValue, ..}