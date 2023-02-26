module Stratosphere.Amplify.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Amplify.Domain.SubDomainSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Domain
  = Domain {appId :: (Value Prelude.Text),
            autoSubDomainCreationPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
            autoSubDomainIAMRole :: (Prelude.Maybe (Value Prelude.Text)),
            domainName :: (Value Prelude.Text),
            enableAutoSubDomain :: (Prelude.Maybe (Value Prelude.Bool)),
            subDomainSettings :: [SubDomainSettingProperty]}
mkDomain ::
  Value Prelude.Text
  -> Value Prelude.Text -> [SubDomainSettingProperty] -> Domain
mkDomain appId domainName subDomainSettings
  = Domain
      {appId = appId, domainName = domainName,
       subDomainSettings = subDomainSettings,
       autoSubDomainCreationPatterns = Prelude.Nothing,
       autoSubDomainIAMRole = Prelude.Nothing,
       enableAutoSubDomain = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Domain",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppId" JSON..= appId, "DomainName" JSON..= domainName,
                            "SubDomainSettings" JSON..= subDomainSettings]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoSubDomainCreationPatterns"
                                 Prelude.<$> autoSubDomainCreationPatterns,
                               (JSON..=) "AutoSubDomainIAMRole" Prelude.<$> autoSubDomainIAMRole,
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