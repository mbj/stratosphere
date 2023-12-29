module Stratosphere.EC2.TransitGatewayMulticastDomain (
        module Exports, TransitGatewayMulticastDomain(..),
        mkTransitGatewayMulticastDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.TransitGatewayMulticastDomain.OptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayMulticastDomain
  = TransitGatewayMulticastDomain {options :: (Prelude.Maybe OptionsProperty),
                                   tags :: (Prelude.Maybe [Tag]),
                                   transitGatewayId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayMulticastDomain ::
  Value Prelude.Text -> TransitGatewayMulticastDomain
mkTransitGatewayMulticastDomain transitGatewayId
  = TransitGatewayMulticastDomain
      {transitGatewayId = transitGatewayId, options = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayMulticastDomain where
  toResourceProperties TransitGatewayMulticastDomain {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayMulticastDomain",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TransitGatewayId" JSON..= transitGatewayId]
                           (Prelude.catMaybes
                              [(JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TransitGatewayMulticastDomain where
  toJSON TransitGatewayMulticastDomain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TransitGatewayId" JSON..= transitGatewayId]
              (Prelude.catMaybes
                 [(JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Options" TransitGatewayMulticastDomain where
  type PropertyType "Options" TransitGatewayMulticastDomain = OptionsProperty
  set newValue TransitGatewayMulticastDomain {..}
    = TransitGatewayMulticastDomain
        {options = Prelude.pure newValue, ..}
instance Property "Tags" TransitGatewayMulticastDomain where
  type PropertyType "Tags" TransitGatewayMulticastDomain = [Tag]
  set newValue TransitGatewayMulticastDomain {..}
    = TransitGatewayMulticastDomain {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayId" TransitGatewayMulticastDomain where
  type PropertyType "TransitGatewayId" TransitGatewayMulticastDomain = Value Prelude.Text
  set newValue TransitGatewayMulticastDomain {..}
    = TransitGatewayMulticastDomain {transitGatewayId = newValue, ..}