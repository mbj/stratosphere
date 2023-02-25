module Stratosphere.MediaLive.InputSecurityGroup.InputWhitelistRuleCidrProperty (
        InputWhitelistRuleCidrProperty(..),
        mkInputWhitelistRuleCidrProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputWhitelistRuleCidrProperty
  = InputWhitelistRuleCidrProperty {cidr :: (Prelude.Maybe (Value Prelude.Text))}
mkInputWhitelistRuleCidrProperty :: InputWhitelistRuleCidrProperty
mkInputWhitelistRuleCidrProperty
  = InputWhitelistRuleCidrProperty {cidr = Prelude.Nothing}
instance ToResourceProperties InputWhitelistRuleCidrProperty where
  toResourceProperties InputWhitelistRuleCidrProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::InputSecurityGroup.InputWhitelistRuleCidr",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Cidr" Prelude.<$> cidr])}
instance JSON.ToJSON InputWhitelistRuleCidrProperty where
  toJSON InputWhitelistRuleCidrProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Cidr" Prelude.<$> cidr]))
instance Property "Cidr" InputWhitelistRuleCidrProperty where
  type PropertyType "Cidr" InputWhitelistRuleCidrProperty = Value Prelude.Text
  set newValue InputWhitelistRuleCidrProperty {}
    = InputWhitelistRuleCidrProperty {cidr = Prelude.pure newValue, ..}