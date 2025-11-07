module Stratosphere.SageMaker.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.DefaultSpaceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.DomainSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.UserSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Domain
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html>
    Domain {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-appnetworkaccesstype>
            appNetworkAccessType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-appsecuritygroupmanagement>
            appSecurityGroupManagement :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-authmode>
            authMode :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-defaultspacesettings>
            defaultSpaceSettings :: (Prelude.Maybe DefaultSpaceSettingsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-defaultusersettings>
            defaultUserSettings :: UserSettingsProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-domainname>
            domainName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-domainsettings>
            domainSettings :: (Prelude.Maybe DomainSettingsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-kmskeyid>
            kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-subnetids>
            subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-tagpropagation>
            tagPropagation :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-domain.html#cfn-sagemaker-domain-vpcid>
            vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain ::
  Value Prelude.Text
  -> UserSettingsProperty -> Value Prelude.Text -> Domain
mkDomain authMode defaultUserSettings domainName
  = Domain
      {haddock_workaround_ = (), authMode = authMode,
       defaultUserSettings = defaultUserSettings, domainName = domainName,
       appNetworkAccessType = Prelude.Nothing,
       appSecurityGroupManagement = Prelude.Nothing,
       defaultSpaceSettings = Prelude.Nothing,
       domainSettings = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       subnetIds = Prelude.Nothing, tagPropagation = Prelude.Nothing,
       tags = Prelude.Nothing, vpcId = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthMode" JSON..= authMode,
                            "DefaultUserSettings" JSON..= defaultUserSettings,
                            "DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "AppNetworkAccessType" Prelude.<$> appNetworkAccessType,
                               (JSON..=) "AppSecurityGroupManagement"
                                 Prelude.<$> appSecurityGroupManagement,
                               (JSON..=) "DefaultSpaceSettings" Prelude.<$> defaultSpaceSettings,
                               (JSON..=) "DomainSettings" Prelude.<$> domainSettings,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "TagPropagation" Prelude.<$> tagPropagation,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcId" Prelude.<$> vpcId]))}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthMode" JSON..= authMode,
               "DefaultUserSettings" JSON..= defaultUserSettings,
               "DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "AppNetworkAccessType" Prelude.<$> appNetworkAccessType,
                  (JSON..=) "AppSecurityGroupManagement"
                    Prelude.<$> appSecurityGroupManagement,
                  (JSON..=) "DefaultSpaceSettings" Prelude.<$> defaultSpaceSettings,
                  (JSON..=) "DomainSettings" Prelude.<$> domainSettings,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "TagPropagation" Prelude.<$> tagPropagation,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcId" Prelude.<$> vpcId])))
instance Property "AppNetworkAccessType" Domain where
  type PropertyType "AppNetworkAccessType" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {appNetworkAccessType = Prelude.pure newValue, ..}
instance Property "AppSecurityGroupManagement" Domain where
  type PropertyType "AppSecurityGroupManagement" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {appSecurityGroupManagement = Prelude.pure newValue, ..}
instance Property "AuthMode" Domain where
  type PropertyType "AuthMode" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {authMode = newValue, ..}
instance Property "DefaultSpaceSettings" Domain where
  type PropertyType "DefaultSpaceSettings" Domain = DefaultSpaceSettingsProperty
  set newValue Domain {..}
    = Domain {defaultSpaceSettings = Prelude.pure newValue, ..}
instance Property "DefaultUserSettings" Domain where
  type PropertyType "DefaultUserSettings" Domain = UserSettingsProperty
  set newValue Domain {..}
    = Domain {defaultUserSettings = newValue, ..}
instance Property "DomainName" Domain where
  type PropertyType "DomainName" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {domainName = newValue, ..}
instance Property "DomainSettings" Domain where
  type PropertyType "DomainSettings" Domain = DomainSettingsProperty
  set newValue Domain {..}
    = Domain {domainSettings = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Domain where
  type PropertyType "KmsKeyId" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {kmsKeyId = Prelude.pure newValue, ..}
instance Property "SubnetIds" Domain where
  type PropertyType "SubnetIds" Domain = ValueList Prelude.Text
  set newValue Domain {..}
    = Domain {subnetIds = Prelude.pure newValue, ..}
instance Property "TagPropagation" Domain where
  type PropertyType "TagPropagation" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {tagPropagation = Prelude.pure newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}
instance Property "VpcId" Domain where
  type PropertyType "VpcId" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {vpcId = Prelude.pure newValue, ..}