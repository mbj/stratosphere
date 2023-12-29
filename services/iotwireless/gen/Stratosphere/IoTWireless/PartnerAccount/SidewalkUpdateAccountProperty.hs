module Stratosphere.IoTWireless.PartnerAccount.SidewalkUpdateAccountProperty (
        SidewalkUpdateAccountProperty(..), mkSidewalkUpdateAccountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SidewalkUpdateAccountProperty
  = SidewalkUpdateAccountProperty {appServerPrivateKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSidewalkUpdateAccountProperty :: SidewalkUpdateAccountProperty
mkSidewalkUpdateAccountProperty
  = SidewalkUpdateAccountProperty
      {appServerPrivateKey = Prelude.Nothing}
instance ToResourceProperties SidewalkUpdateAccountProperty where
  toResourceProperties SidewalkUpdateAccountProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::PartnerAccount.SidewalkUpdateAccount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppServerPrivateKey" Prelude.<$> appServerPrivateKey])}
instance JSON.ToJSON SidewalkUpdateAccountProperty where
  toJSON SidewalkUpdateAccountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppServerPrivateKey" Prelude.<$> appServerPrivateKey]))
instance Property "AppServerPrivateKey" SidewalkUpdateAccountProperty where
  type PropertyType "AppServerPrivateKey" SidewalkUpdateAccountProperty = Value Prelude.Text
  set newValue SidewalkUpdateAccountProperty {}
    = SidewalkUpdateAccountProperty
        {appServerPrivateKey = Prelude.pure newValue, ..}