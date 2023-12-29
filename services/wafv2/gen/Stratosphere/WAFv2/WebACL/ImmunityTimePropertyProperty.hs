module Stratosphere.WAFv2.WebACL.ImmunityTimePropertyProperty (
        ImmunityTimePropertyProperty(..), mkImmunityTimePropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImmunityTimePropertyProperty
  = ImmunityTimePropertyProperty {immunityTime :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImmunityTimePropertyProperty ::
  Value Prelude.Integer -> ImmunityTimePropertyProperty
mkImmunityTimePropertyProperty immunityTime
  = ImmunityTimePropertyProperty {immunityTime = immunityTime}
instance ToResourceProperties ImmunityTimePropertyProperty where
  toResourceProperties ImmunityTimePropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ImmunityTimeProperty",
         supportsTags = Prelude.False,
         properties = ["ImmunityTime" JSON..= immunityTime]}
instance JSON.ToJSON ImmunityTimePropertyProperty where
  toJSON ImmunityTimePropertyProperty {..}
    = JSON.object ["ImmunityTime" JSON..= immunityTime]
instance Property "ImmunityTime" ImmunityTimePropertyProperty where
  type PropertyType "ImmunityTime" ImmunityTimePropertyProperty = Value Prelude.Integer
  set newValue ImmunityTimePropertyProperty {}
    = ImmunityTimePropertyProperty {immunityTime = newValue, ..}