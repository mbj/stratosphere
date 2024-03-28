module Stratosphere.PCAConnectorAD.Template.KeyUsageProperty (
        module Exports, KeyUsageProperty(..), mkKeyUsageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.KeyUsageFlagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyUsageProperty
  = KeyUsageProperty {critical :: (Prelude.Maybe (Value Prelude.Bool)),
                      usageFlags :: KeyUsageFlagsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyUsageProperty :: KeyUsageFlagsProperty -> KeyUsageProperty
mkKeyUsageProperty usageFlags
  = KeyUsageProperty
      {usageFlags = usageFlags, critical = Prelude.Nothing}
instance ToResourceProperties KeyUsageProperty where
  toResourceProperties KeyUsageProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.KeyUsage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UsageFlags" JSON..= usageFlags]
                           (Prelude.catMaybes [(JSON..=) "Critical" Prelude.<$> critical]))}
instance JSON.ToJSON KeyUsageProperty where
  toJSON KeyUsageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UsageFlags" JSON..= usageFlags]
              (Prelude.catMaybes [(JSON..=) "Critical" Prelude.<$> critical])))
instance Property "Critical" KeyUsageProperty where
  type PropertyType "Critical" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {critical = Prelude.pure newValue, ..}
instance Property "UsageFlags" KeyUsageProperty where
  type PropertyType "UsageFlags" KeyUsageProperty = KeyUsageFlagsProperty
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {usageFlags = newValue, ..}