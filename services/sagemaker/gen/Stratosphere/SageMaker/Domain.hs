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
  = Domain {appNetworkAccessType :: (Prelude.Maybe (Value Prelude.Text)),
            appSecurityGroupManagement :: (Prelude.Maybe (Value Prelude.Text)),
            authMode :: (Value Prelude.Text),
            defaultSpaceSettings :: (Prelude.Maybe DefaultSpaceSettingsProperty),
            defaultUserSettings :: UserSettingsProperty,
            domainName :: (Value Prelude.Text),
            domainSettings :: (Prelude.Maybe DomainSettingsProperty),
            kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
            subnetIds :: (ValueList (Value Prelude.Text)),
            tags :: (Prelude.Maybe [Tag]),
            vpcId :: (Value Prelude.Text)}
mkDomain ::
  Value Prelude.Text
  -> UserSettingsProperty
     -> Value Prelude.Text
        -> ValueList (Value Prelude.Text) -> Value Prelude.Text -> Domain
mkDomain authMode defaultUserSettings domainName subnetIds vpcId
  = Domain
      {authMode = authMode, defaultUserSettings = defaultUserSettings,
       domainName = domainName, subnetIds = subnetIds, vpcId = vpcId,
       appNetworkAccessType = Prelude.Nothing,
       appSecurityGroupManagement = Prelude.Nothing,
       defaultSpaceSettings = Prelude.Nothing,
       domainSettings = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthMode" JSON..= authMode,
                            "DefaultUserSettings" JSON..= defaultUserSettings,
                            "DomainName" JSON..= domainName, "SubnetIds" JSON..= subnetIds,
                            "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "AppNetworkAccessType" Prelude.<$> appNetworkAccessType,
                               (JSON..=) "AppSecurityGroupManagement"
                                 Prelude.<$> appSecurityGroupManagement,
                               (JSON..=) "DefaultSpaceSettings" Prelude.<$> defaultSpaceSettings,
                               (JSON..=) "DomainSettings" Prelude.<$> domainSettings,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthMode" JSON..= authMode,
               "DefaultUserSettings" JSON..= defaultUserSettings,
               "DomainName" JSON..= domainName, "SubnetIds" JSON..= subnetIds,
               "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "AppNetworkAccessType" Prelude.<$> appNetworkAccessType,
                  (JSON..=) "AppSecurityGroupManagement"
                    Prelude.<$> appSecurityGroupManagement,
                  (JSON..=) "DefaultSpaceSettings" Prelude.<$> defaultSpaceSettings,
                  (JSON..=) "DomainSettings" Prelude.<$> domainSettings,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
  type PropertyType "SubnetIds" Domain = ValueList (Value Prelude.Text)
  set newValue Domain {..} = Domain {subnetIds = newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}
instance Property "VpcId" Domain where
  type PropertyType "VpcId" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {vpcId = newValue, ..}