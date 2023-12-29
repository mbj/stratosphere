module Stratosphere.IoT.ThingPrincipalAttachment (
        ThingPrincipalAttachment(..), mkThingPrincipalAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThingPrincipalAttachment
  = ThingPrincipalAttachment {principal :: (Value Prelude.Text),
                              thingName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThingPrincipalAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text -> ThingPrincipalAttachment
mkThingPrincipalAttachment principal thingName
  = ThingPrincipalAttachment
      {principal = principal, thingName = thingName}
instance ToResourceProperties ThingPrincipalAttachment where
  toResourceProperties ThingPrincipalAttachment {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ThingPrincipalAttachment",
         supportsTags = Prelude.False,
         properties = ["Principal" JSON..= principal,
                       "ThingName" JSON..= thingName]}
instance JSON.ToJSON ThingPrincipalAttachment where
  toJSON ThingPrincipalAttachment {..}
    = JSON.object
        ["Principal" JSON..= principal, "ThingName" JSON..= thingName]
instance Property "Principal" ThingPrincipalAttachment where
  type PropertyType "Principal" ThingPrincipalAttachment = Value Prelude.Text
  set newValue ThingPrincipalAttachment {..}
    = ThingPrincipalAttachment {principal = newValue, ..}
instance Property "ThingName" ThingPrincipalAttachment where
  type PropertyType "ThingName" ThingPrincipalAttachment = Value Prelude.Text
  set newValue ThingPrincipalAttachment {..}
    = ThingPrincipalAttachment {thingName = newValue, ..}