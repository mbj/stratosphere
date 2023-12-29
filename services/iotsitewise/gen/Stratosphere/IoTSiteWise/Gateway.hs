module Stratosphere.IoTSiteWise.Gateway (
        module Exports, Gateway(..), mkGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Gateway.GatewayCapabilitySummaryProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Gateway.GatewayPlatformProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Gateway
  = Gateway {gatewayCapabilitySummaries :: (Prelude.Maybe [GatewayCapabilitySummaryProperty]),
             gatewayName :: (Value Prelude.Text),
             gatewayPlatform :: GatewayPlatformProperty,
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGateway ::
  Value Prelude.Text -> GatewayPlatformProperty -> Gateway
mkGateway gatewayName gatewayPlatform
  = Gateway
      {gatewayName = gatewayName, gatewayPlatform = gatewayPlatform,
       gatewayCapabilitySummaries = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Gateway where
  toResourceProperties Gateway {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Gateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GatewayName" JSON..= gatewayName,
                            "GatewayPlatform" JSON..= gatewayPlatform]
                           (Prelude.catMaybes
                              [(JSON..=) "GatewayCapabilitySummaries"
                                 Prelude.<$> gatewayCapabilitySummaries,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Gateway where
  toJSON Gateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GatewayName" JSON..= gatewayName,
               "GatewayPlatform" JSON..= gatewayPlatform]
              (Prelude.catMaybes
                 [(JSON..=) "GatewayCapabilitySummaries"
                    Prelude.<$> gatewayCapabilitySummaries,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "GatewayCapabilitySummaries" Gateway where
  type PropertyType "GatewayCapabilitySummaries" Gateway = [GatewayCapabilitySummaryProperty]
  set newValue Gateway {..}
    = Gateway {gatewayCapabilitySummaries = Prelude.pure newValue, ..}
instance Property "GatewayName" Gateway where
  type PropertyType "GatewayName" Gateway = Value Prelude.Text
  set newValue Gateway {..} = Gateway {gatewayName = newValue, ..}
instance Property "GatewayPlatform" Gateway where
  type PropertyType "GatewayPlatform" Gateway = GatewayPlatformProperty
  set newValue Gateway {..}
    = Gateway {gatewayPlatform = newValue, ..}
instance Property "Tags" Gateway where
  type PropertyType "Tags" Gateway = [Tag]
  set newValue Gateway {..}
    = Gateway {tags = Prelude.pure newValue, ..}