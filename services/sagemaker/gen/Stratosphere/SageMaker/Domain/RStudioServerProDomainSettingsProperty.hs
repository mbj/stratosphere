module Stratosphere.SageMaker.Domain.RStudioServerProDomainSettingsProperty (
        module Exports, RStudioServerProDomainSettingsProperty(..),
        mkRStudioServerProDomainSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RStudioServerProDomainSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rstudioserverprodomainsettings.html>
    RStudioServerProDomainSettingsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rstudioserverprodomainsettings.html#cfn-sagemaker-domain-rstudioserverprodomainsettings-defaultresourcespec>
                                            defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rstudioserverprodomainsettings.html#cfn-sagemaker-domain-rstudioserverprodomainsettings-domainexecutionrolearn>
                                            domainExecutionRoleArn :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rstudioserverprodomainsettings.html#cfn-sagemaker-domain-rstudioserverprodomainsettings-rstudioconnecturl>
                                            rStudioConnectUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rstudioserverprodomainsettings.html#cfn-sagemaker-domain-rstudioserverprodomainsettings-rstudiopackagemanagerurl>
                                            rStudioPackageManagerUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRStudioServerProDomainSettingsProperty ::
  Value Prelude.Text -> RStudioServerProDomainSettingsProperty
mkRStudioServerProDomainSettingsProperty domainExecutionRoleArn
  = RStudioServerProDomainSettingsProperty
      {haddock_workaround_ = (),
       domainExecutionRoleArn = domainExecutionRoleArn,
       defaultResourceSpec = Prelude.Nothing,
       rStudioConnectUrl = Prelude.Nothing,
       rStudioPackageManagerUrl = Prelude.Nothing}
instance ToResourceProperties RStudioServerProDomainSettingsProperty where
  toResourceProperties RStudioServerProDomainSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.RStudioServerProDomainSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainExecutionRoleArn" JSON..= domainExecutionRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                               (JSON..=) "RStudioConnectUrl" Prelude.<$> rStudioConnectUrl,
                               (JSON..=) "RStudioPackageManagerUrl"
                                 Prelude.<$> rStudioPackageManagerUrl]))}
instance JSON.ToJSON RStudioServerProDomainSettingsProperty where
  toJSON RStudioServerProDomainSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainExecutionRoleArn" JSON..= domainExecutionRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                  (JSON..=) "RStudioConnectUrl" Prelude.<$> rStudioConnectUrl,
                  (JSON..=) "RStudioPackageManagerUrl"
                    Prelude.<$> rStudioPackageManagerUrl])))
instance Property "DefaultResourceSpec" RStudioServerProDomainSettingsProperty where
  type PropertyType "DefaultResourceSpec" RStudioServerProDomainSettingsProperty = ResourceSpecProperty
  set newValue RStudioServerProDomainSettingsProperty {..}
    = RStudioServerProDomainSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "DomainExecutionRoleArn" RStudioServerProDomainSettingsProperty where
  type PropertyType "DomainExecutionRoleArn" RStudioServerProDomainSettingsProperty = Value Prelude.Text
  set newValue RStudioServerProDomainSettingsProperty {..}
    = RStudioServerProDomainSettingsProperty
        {domainExecutionRoleArn = newValue, ..}
instance Property "RStudioConnectUrl" RStudioServerProDomainSettingsProperty where
  type PropertyType "RStudioConnectUrl" RStudioServerProDomainSettingsProperty = Value Prelude.Text
  set newValue RStudioServerProDomainSettingsProperty {..}
    = RStudioServerProDomainSettingsProperty
        {rStudioConnectUrl = Prelude.pure newValue, ..}
instance Property "RStudioPackageManagerUrl" RStudioServerProDomainSettingsProperty where
  type PropertyType "RStudioPackageManagerUrl" RStudioServerProDomainSettingsProperty = Value Prelude.Text
  set newValue RStudioServerProDomainSettingsProperty {..}
    = RStudioServerProDomainSettingsProperty
        {rStudioPackageManagerUrl = Prelude.pure newValue, ..}