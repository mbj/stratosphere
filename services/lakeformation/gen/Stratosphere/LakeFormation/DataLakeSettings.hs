module Stratosphere.LakeFormation.DataLakeSettings (
        module Exports, DataLakeSettings(..), mkDataLakeSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.DataLakeSettings.AdminsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLakeSettings
  = DataLakeSettings {admins :: (Prelude.Maybe AdminsProperty),
                      trustedResourceOwners :: (Prelude.Maybe (ValueList Prelude.Text))}
mkDataLakeSettings :: DataLakeSettings
mkDataLakeSettings
  = DataLakeSettings
      {admins = Prelude.Nothing, trustedResourceOwners = Prelude.Nothing}
instance ToResourceProperties DataLakeSettings where
  toResourceProperties DataLakeSettings {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::DataLakeSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Admins" Prelude.<$> admins,
                            (JSON..=) "TrustedResourceOwners"
                              Prelude.<$> trustedResourceOwners])}
instance JSON.ToJSON DataLakeSettings where
  toJSON DataLakeSettings {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Admins" Prelude.<$> admins,
               (JSON..=) "TrustedResourceOwners"
                 Prelude.<$> trustedResourceOwners]))
instance Property "Admins" DataLakeSettings where
  type PropertyType "Admins" DataLakeSettings = AdminsProperty
  set newValue DataLakeSettings {..}
    = DataLakeSettings {admins = Prelude.pure newValue, ..}
instance Property "TrustedResourceOwners" DataLakeSettings where
  type PropertyType "TrustedResourceOwners" DataLakeSettings = ValueList Prelude.Text
  set newValue DataLakeSettings {..}
    = DataLakeSettings
        {trustedResourceOwners = Prelude.pure newValue, ..}