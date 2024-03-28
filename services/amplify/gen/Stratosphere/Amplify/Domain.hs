module Stratosphere.Amplify.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Amplify.Domain.CertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.Domain.CertificateSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Amplify.Domain.SubDomainSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Domain
  = Domain {appId :: (Value Prelude.Text),
            autoSubDomainCreationPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
            autoSubDomainIAMRole :: (Prelude.Maybe (Value Prelude.Text)),
            certificate :: (Prelude.Maybe CertificateProperty),
            certificateSettings :: (Prelude.Maybe CertificateSettingsProperty),
            domainName :: (Value Prelude.Text),
            enableAutoSubDomain :: (Prelude.Maybe (Value Prelude.Bool)),
            subDomainSettings :: [SubDomainSettingProperty],
            updateStatus :: (Prelude.Maybe (Value Prelude.Text))}
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
       certificate = Prelude.Nothing,
       certificateSettings = Prelude.Nothing,
       enableAutoSubDomain = Prelude.Nothing,
       updateStatus = Prelude.Nothing}
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
                               (JSON..=) "Certificate" Prelude.<$> certificate,
                               (JSON..=) "CertificateSettings" Prelude.<$> certificateSettings,
                               (JSON..=) "EnableAutoSubDomain" Prelude.<$> enableAutoSubDomain,
                               (JSON..=) "UpdateStatus" Prelude.<$> updateStatus]))}
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
                  (JSON..=) "Certificate" Prelude.<$> certificate,
                  (JSON..=) "CertificateSettings" Prelude.<$> certificateSettings,
                  (JSON..=) "EnableAutoSubDomain" Prelude.<$> enableAutoSubDomain,
                  (JSON..=) "UpdateStatus" Prelude.<$> updateStatus])))
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
instance Property "Certificate" Domain where
  type PropertyType "Certificate" Domain = CertificateProperty
  set newValue Domain {..}
    = Domain {certificate = Prelude.pure newValue, ..}
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
instance Property "UpdateStatus" Domain where
  type PropertyType "UpdateStatus" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {updateStatus = Prelude.pure newValue, ..}