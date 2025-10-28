module Stratosphere.Amplify.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Amplify.Domain.CertificateSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.Domain.SubDomainSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Domain
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html>
    Domain {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-appid>
            appId :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-autosubdomaincreationpatterns>
            autoSubDomainCreationPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-autosubdomainiamrole>
            autoSubDomainIAMRole :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-certificatesettings>
            certificateSettings :: (Prelude.Maybe CertificateSettingsProperty),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-domainname>
            domainName :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-enableautosubdomain>
            enableAutoSubDomain :: (Prelude.Maybe (Value Prelude.Bool)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-subdomainsettings>
            subDomainSettings :: [SubDomainSettingProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain ::
  Value Prelude.Text
  -> Value Prelude.Text -> [SubDomainSettingProperty] -> Domain
mkDomain appId domainName subDomainSettings
  = Domain
      {appId = appId, domainName = domainName,
       subDomainSettings = subDomainSettings,
       autoSubDomainCreationPatterns = Prelude.Nothing,
       autoSubDomainIAMRole = Prelude.Nothing,
       certificateSettings = Prelude.Nothing,
       enableAutoSubDomain = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Domain", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppId" JSON..= appId, "DomainName" JSON..= domainName,
                            "SubDomainSettings" JSON..= subDomainSettings]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoSubDomainCreationPatterns"
                                 Prelude.<$> autoSubDomainCreationPatterns,
                               (JSON..=) "AutoSubDomainIAMRole" Prelude.<$> autoSubDomainIAMRole,
                               (JSON..=) "CertificateSettings" Prelude.<$> certificateSettings,
                               (JSON..=) "EnableAutoSubDomain" Prelude.<$> enableAutoSubDomain]))}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppId" JSON..= appId, "DomainName" JSON..= domainName,
               "SubDomainSettings" JSON..= subDomainSettings]
              (Prelude.catMaybes
                 [(JSON..=) "AutoSubDomainCreationPatterns"
                    Prelude.<$> autoSubDomainCreationPatterns,
                  (JSON..=) "AutoSubDomainIAMRole" Prelude.<$> autoSubDomainIAMRole,
                  (JSON..=) "CertificateSettings" Prelude.<$> certificateSettings,
                  (JSON..=) "EnableAutoSubDomain" Prelude.<$> enableAutoSubDomain])))
instance Property "AppId" Domain where
  type PropertyType "AppId" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {appId = newValue, ..}
instance Property "AutoSubDomainCreationPatterns" Domain where
  type PropertyType "AutoSubDomainCreationPatterns" Domain = ValueList Prelude.Text
  set newValue Domain {..}
    = Domain
        {autoSubDomainCreationPatterns = Prelude.pure newValue, ..}
instance Property "AutoSubDomainIAMRole" Domain where
  type PropertyType "AutoSubDomainIAMRole" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {autoSubDomainIAMRole = Prelude.pure newValue, ..}
instance Property "CertificateSettings" Domain where
  type PropertyType "CertificateSettings" Domain = CertificateSettingsProperty
  set newValue Domain {..}
    = Domain {certificateSettings = Prelude.pure newValue, ..}
instance Property "DomainName" Domain where
  type PropertyType "DomainName" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {domainName = newValue, ..}
instance Property "EnableAutoSubDomain" Domain where
  type PropertyType "EnableAutoSubDomain" Domain = Value Prelude.Bool
  set newValue Domain {..}
    = Domain {enableAutoSubDomain = Prelude.pure newValue, ..}
instance Property "SubDomainSettings" Domain where
  type PropertyType "SubDomainSettings" Domain = [SubDomainSettingProperty]
  set newValue Domain {..}
    = Domain {subDomainSettings = newValue, ..}