module Stratosphere.EMR.SecurityConfiguration (
        SecurityConfiguration(..), mkSecurityConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityConfiguration
  = SecurityConfiguration {name :: (Prelude.Maybe (Value Prelude.Text)),
                           securityConfiguration :: JSON.Object}
mkSecurityConfiguration :: JSON.Object -> SecurityConfiguration
mkSecurityConfiguration securityConfiguration
  = SecurityConfiguration
      {securityConfiguration = securityConfiguration,
       name = Prelude.Nothing}
instance ToResourceProperties SecurityConfiguration where
  toResourceProperties SecurityConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::EMR::SecurityConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityConfiguration" JSON..= securityConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON SecurityConfiguration where
  toJSON SecurityConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityConfiguration" JSON..= securityConfiguration]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Name" SecurityConfiguration where
  type PropertyType "Name" SecurityConfiguration = Value Prelude.Text
  set newValue SecurityConfiguration {..}
    = SecurityConfiguration {name = Prelude.pure newValue, ..}
instance Property "SecurityConfiguration" SecurityConfiguration where
  type PropertyType "SecurityConfiguration" SecurityConfiguration = JSON.Object
  set newValue SecurityConfiguration {..}
    = SecurityConfiguration {securityConfiguration = newValue, ..}