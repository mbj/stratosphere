module Stratosphere.DirectoryService.MicrosoftAD (
        module Exports, MicrosoftAD(..), mkMicrosoftAD
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DirectoryService.MicrosoftAD.VpcSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MicrosoftAD
  = MicrosoftAD {createAlias :: (Prelude.Maybe (Value Prelude.Bool)),
                 edition :: (Prelude.Maybe (Value Prelude.Text)),
                 enableSso :: (Prelude.Maybe (Value Prelude.Bool)),
                 name :: (Value Prelude.Text),
                 password :: (Value Prelude.Text),
                 shortName :: (Prelude.Maybe (Value Prelude.Text)),
                 vpcSettings :: VpcSettingsProperty}
mkMicrosoftAD ::
  Value Prelude.Text
  -> Value Prelude.Text -> VpcSettingsProperty -> MicrosoftAD
mkMicrosoftAD name password vpcSettings
  = MicrosoftAD
      {name = name, password = password, vpcSettings = vpcSettings,
       createAlias = Prelude.Nothing, edition = Prelude.Nothing,
       enableSso = Prelude.Nothing, shortName = Prelude.Nothing}
instance ToResourceProperties MicrosoftAD where
  toResourceProperties MicrosoftAD {..}
    = ResourceProperties
        {awsType = "AWS::DirectoryService::MicrosoftAD",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Password" JSON..= password,
                            "VpcSettings" JSON..= vpcSettings]
                           (Prelude.catMaybes
                              [(JSON..=) "CreateAlias" Prelude.<$> createAlias,
                               (JSON..=) "Edition" Prelude.<$> edition,
                               (JSON..=) "EnableSso" Prelude.<$> enableSso,
                               (JSON..=) "ShortName" Prelude.<$> shortName]))}
instance JSON.ToJSON MicrosoftAD where
  toJSON MicrosoftAD {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Password" JSON..= password,
               "VpcSettings" JSON..= vpcSettings]
              (Prelude.catMaybes
                 [(JSON..=) "CreateAlias" Prelude.<$> createAlias,
                  (JSON..=) "Edition" Prelude.<$> edition,
                  (JSON..=) "EnableSso" Prelude.<$> enableSso,
                  (JSON..=) "ShortName" Prelude.<$> shortName])))
instance Property "CreateAlias" MicrosoftAD where
  type PropertyType "CreateAlias" MicrosoftAD = Value Prelude.Bool
  set newValue MicrosoftAD {..}
    = MicrosoftAD {createAlias = Prelude.pure newValue, ..}
instance Property "Edition" MicrosoftAD where
  type PropertyType "Edition" MicrosoftAD = Value Prelude.Text
  set newValue MicrosoftAD {..}
    = MicrosoftAD {edition = Prelude.pure newValue, ..}
instance Property "EnableSso" MicrosoftAD where
  type PropertyType "EnableSso" MicrosoftAD = Value Prelude.Bool
  set newValue MicrosoftAD {..}
    = MicrosoftAD {enableSso = Prelude.pure newValue, ..}
instance Property "Name" MicrosoftAD where
  type PropertyType "Name" MicrosoftAD = Value Prelude.Text
  set newValue MicrosoftAD {..} = MicrosoftAD {name = newValue, ..}
instance Property "Password" MicrosoftAD where
  type PropertyType "Password" MicrosoftAD = Value Prelude.Text
  set newValue MicrosoftAD {..}
    = MicrosoftAD {password = newValue, ..}
instance Property "ShortName" MicrosoftAD where
  type PropertyType "ShortName" MicrosoftAD = Value Prelude.Text
  set newValue MicrosoftAD {..}
    = MicrosoftAD {shortName = Prelude.pure newValue, ..}
instance Property "VpcSettings" MicrosoftAD where
  type PropertyType "VpcSettings" MicrosoftAD = VpcSettingsProperty
  set newValue MicrosoftAD {..}
    = MicrosoftAD {vpcSettings = newValue, ..}