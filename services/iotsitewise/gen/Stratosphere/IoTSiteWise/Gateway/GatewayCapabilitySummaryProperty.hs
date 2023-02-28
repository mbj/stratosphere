module Stratosphere.IoTSiteWise.Gateway.GatewayCapabilitySummaryProperty (
        GatewayCapabilitySummaryProperty(..),
        mkGatewayCapabilitySummaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayCapabilitySummaryProperty
  = GatewayCapabilitySummaryProperty {capabilityConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
                                      capabilityNamespace :: (Value Prelude.Text)}
mkGatewayCapabilitySummaryProperty ::
  Value Prelude.Text -> GatewayCapabilitySummaryProperty
mkGatewayCapabilitySummaryProperty capabilityNamespace
  = GatewayCapabilitySummaryProperty
      {capabilityNamespace = capabilityNamespace,
       capabilityConfiguration = Prelude.Nothing}
instance ToResourceProperties GatewayCapabilitySummaryProperty where
  toResourceProperties GatewayCapabilitySummaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Gateway.GatewayCapabilitySummary",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CapabilityNamespace" JSON..= capabilityNamespace]
                           (Prelude.catMaybes
                              [(JSON..=) "CapabilityConfiguration"
                                 Prelude.<$> capabilityConfiguration]))}
instance JSON.ToJSON GatewayCapabilitySummaryProperty where
  toJSON GatewayCapabilitySummaryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CapabilityNamespace" JSON..= capabilityNamespace]
              (Prelude.catMaybes
                 [(JSON..=) "CapabilityConfiguration"
                    Prelude.<$> capabilityConfiguration])))
instance Property "CapabilityConfiguration" GatewayCapabilitySummaryProperty where
  type PropertyType "CapabilityConfiguration" GatewayCapabilitySummaryProperty = Value Prelude.Text
  set newValue GatewayCapabilitySummaryProperty {..}
    = GatewayCapabilitySummaryProperty
        {capabilityConfiguration = Prelude.pure newValue, ..}
instance Property "CapabilityNamespace" GatewayCapabilitySummaryProperty where
  type PropertyType "CapabilityNamespace" GatewayCapabilitySummaryProperty = Value Prelude.Text
  set newValue GatewayCapabilitySummaryProperty {..}
    = GatewayCapabilitySummaryProperty
        {capabilityNamespace = newValue, ..}