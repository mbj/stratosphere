module Stratosphere.IoTWireless.PartnerAccount.SidewalkAccountInfoProperty (
        SidewalkAccountInfoProperty(..), mkSidewalkAccountInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SidewalkAccountInfoProperty
  = SidewalkAccountInfoProperty {appServerPrivateKey :: (Value Prelude.Text)}
mkSidewalkAccountInfoProperty ::
  Value Prelude.Text -> SidewalkAccountInfoProperty
mkSidewalkAccountInfoProperty appServerPrivateKey
  = SidewalkAccountInfoProperty
      {appServerPrivateKey = appServerPrivateKey}
instance ToResourceProperties SidewalkAccountInfoProperty where
  toResourceProperties SidewalkAccountInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::PartnerAccount.SidewalkAccountInfo",
         supportsTags = Prelude.False,
         properties = ["AppServerPrivateKey" JSON..= appServerPrivateKey]}
instance JSON.ToJSON SidewalkAccountInfoProperty where
  toJSON SidewalkAccountInfoProperty {..}
    = JSON.object ["AppServerPrivateKey" JSON..= appServerPrivateKey]
instance Property "AppServerPrivateKey" SidewalkAccountInfoProperty where
  type PropertyType "AppServerPrivateKey" SidewalkAccountInfoProperty = Value Prelude.Text
  set newValue SidewalkAccountInfoProperty {}
    = SidewalkAccountInfoProperty {appServerPrivateKey = newValue, ..}