module Stratosphere.EC2.NetworkInsightsAnalysis.TransitGatewayRouteTableRouteProperty (
        TransitGatewayRouteTableRouteProperty(..),
        mkTransitGatewayRouteTableRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayRouteTableRouteProperty
  = TransitGatewayRouteTableRouteProperty {attachmentId :: (Prelude.Maybe (Value Prelude.Text)),
                                           destinationCidr :: (Prelude.Maybe (Value Prelude.Text)),
                                           prefixListId :: (Prelude.Maybe (Value Prelude.Text)),
                                           resourceId :: (Prelude.Maybe (Value Prelude.Text)),
                                           resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                                           routeOrigin :: (Prelude.Maybe (Value Prelude.Text)),
                                           state :: (Prelude.Maybe (Value Prelude.Text))}
mkTransitGatewayRouteTableRouteProperty ::
  TransitGatewayRouteTableRouteProperty
mkTransitGatewayRouteTableRouteProperty
  = TransitGatewayRouteTableRouteProperty
      {attachmentId = Prelude.Nothing, destinationCidr = Prelude.Nothing,
       prefixListId = Prelude.Nothing, resourceId = Prelude.Nothing,
       resourceType = Prelude.Nothing, routeOrigin = Prelude.Nothing,
       state = Prelude.Nothing}
instance ToResourceProperties TransitGatewayRouteTableRouteProperty where
  toResourceProperties TransitGatewayRouteTableRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.TransitGatewayRouteTableRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttachmentId" Prelude.<$> attachmentId,
                            (JSON..=) "DestinationCidr" Prelude.<$> destinationCidr,
                            (JSON..=) "PrefixListId" Prelude.<$> prefixListId,
                            (JSON..=) "ResourceId" Prelude.<$> resourceId,
                            (JSON..=) "ResourceType" Prelude.<$> resourceType,
                            (JSON..=) "RouteOrigin" Prelude.<$> routeOrigin,
                            (JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON TransitGatewayRouteTableRouteProperty where
  toJSON TransitGatewayRouteTableRouteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttachmentId" Prelude.<$> attachmentId,
               (JSON..=) "DestinationCidr" Prelude.<$> destinationCidr,
               (JSON..=) "PrefixListId" Prelude.<$> prefixListId,
               (JSON..=) "ResourceId" Prelude.<$> resourceId,
               (JSON..=) "ResourceType" Prelude.<$> resourceType,
               (JSON..=) "RouteOrigin" Prelude.<$> routeOrigin,
               (JSON..=) "State" Prelude.<$> state]))
instance Property "AttachmentId" TransitGatewayRouteTableRouteProperty where
  type PropertyType "AttachmentId" TransitGatewayRouteTableRouteProperty = Value Prelude.Text
  set newValue TransitGatewayRouteTableRouteProperty {..}
    = TransitGatewayRouteTableRouteProperty
        {attachmentId = Prelude.pure newValue, ..}
instance Property "DestinationCidr" TransitGatewayRouteTableRouteProperty where
  type PropertyType "DestinationCidr" TransitGatewayRouteTableRouteProperty = Value Prelude.Text
  set newValue TransitGatewayRouteTableRouteProperty {..}
    = TransitGatewayRouteTableRouteProperty
        {destinationCidr = Prelude.pure newValue, ..}
instance Property "PrefixListId" TransitGatewayRouteTableRouteProperty where
  type PropertyType "PrefixListId" TransitGatewayRouteTableRouteProperty = Value Prelude.Text
  set newValue TransitGatewayRouteTableRouteProperty {..}
    = TransitGatewayRouteTableRouteProperty
        {prefixListId = Prelude.pure newValue, ..}
instance Property "ResourceId" TransitGatewayRouteTableRouteProperty where
  type PropertyType "ResourceId" TransitGatewayRouteTableRouteProperty = Value Prelude.Text
  set newValue TransitGatewayRouteTableRouteProperty {..}
    = TransitGatewayRouteTableRouteProperty
        {resourceId = Prelude.pure newValue, ..}
instance Property "ResourceType" TransitGatewayRouteTableRouteProperty where
  type PropertyType "ResourceType" TransitGatewayRouteTableRouteProperty = Value Prelude.Text
  set newValue TransitGatewayRouteTableRouteProperty {..}
    = TransitGatewayRouteTableRouteProperty
        {resourceType = Prelude.pure newValue, ..}
instance Property "RouteOrigin" TransitGatewayRouteTableRouteProperty where
  type PropertyType "RouteOrigin" TransitGatewayRouteTableRouteProperty = Value Prelude.Text
  set newValue TransitGatewayRouteTableRouteProperty {..}
    = TransitGatewayRouteTableRouteProperty
        {routeOrigin = Prelude.pure newValue, ..}
instance Property "State" TransitGatewayRouteTableRouteProperty where
  type PropertyType "State" TransitGatewayRouteTableRouteProperty = Value Prelude.Text
  set newValue TransitGatewayRouteTableRouteProperty {..}
    = TransitGatewayRouteTableRouteProperty
        {state = Prelude.pure newValue, ..}