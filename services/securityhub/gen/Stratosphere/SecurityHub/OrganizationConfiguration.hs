module Stratosphere.SecurityHub.OrganizationConfiguration (
        OrganizationConfiguration(..), mkOrganizationConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrganizationConfiguration
  = OrganizationConfiguration {autoEnable :: (Value Prelude.Bool),
                               autoEnableStandards :: (Prelude.Maybe (Value Prelude.Text)),
                               configurationType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationConfiguration ::
  Value Prelude.Bool -> OrganizationConfiguration
mkOrganizationConfiguration autoEnable
  = OrganizationConfiguration
      {autoEnable = autoEnable, autoEnableStandards = Prelude.Nothing,
       configurationType = Prelude.Nothing}
instance ToResourceProperties OrganizationConfiguration where
  toResourceProperties OrganizationConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::OrganizationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoEnable" JSON..= autoEnable]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoEnableStandards" Prelude.<$> autoEnableStandards,
                               (JSON..=) "ConfigurationType" Prelude.<$> configurationType]))}
instance JSON.ToJSON OrganizationConfiguration where
  toJSON OrganizationConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoEnable" JSON..= autoEnable]
              (Prelude.catMaybes
                 [(JSON..=) "AutoEnableStandards" Prelude.<$> autoEnableStandards,
                  (JSON..=) "ConfigurationType" Prelude.<$> configurationType])))
instance Property "AutoEnable" OrganizationConfiguration where
  type PropertyType "AutoEnable" OrganizationConfiguration = Value Prelude.Bool
  set newValue OrganizationConfiguration {..}
    = OrganizationConfiguration {autoEnable = newValue, ..}
instance Property "AutoEnableStandards" OrganizationConfiguration where
  type PropertyType "AutoEnableStandards" OrganizationConfiguration = Value Prelude.Text
  set newValue OrganizationConfiguration {..}
    = OrganizationConfiguration
        {autoEnableStandards = Prelude.pure newValue, ..}
instance Property "ConfigurationType" OrganizationConfiguration where
  type PropertyType "ConfigurationType" OrganizationConfiguration = Value Prelude.Text
  set newValue OrganizationConfiguration {..}
    = OrganizationConfiguration
        {configurationType = Prelude.pure newValue, ..}