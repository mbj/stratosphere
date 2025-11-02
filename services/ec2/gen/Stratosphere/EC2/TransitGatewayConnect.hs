module Stratosphere.EC2.TransitGatewayConnect (
        module Exports, TransitGatewayConnect(..), mkTransitGatewayConnect
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.TransitGatewayConnect.TransitGatewayConnectOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TransitGatewayConnect
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayconnect.html>
    TransitGatewayConnect {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayconnect.html#cfn-ec2-transitgatewayconnect-options>
                           options :: TransitGatewayConnectOptionsProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayconnect.html#cfn-ec2-transitgatewayconnect-tags>
                           tags :: (Prelude.Maybe [Tag]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayconnect.html#cfn-ec2-transitgatewayconnect-transporttransitgatewayattachmentid>
                           transportTransitGatewayAttachmentId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayConnect ::
  TransitGatewayConnectOptionsProperty
  -> Value Prelude.Text -> TransitGatewayConnect
mkTransitGatewayConnect options transportTransitGatewayAttachmentId
  = TransitGatewayConnect
      {haddock_workaround_ = (), options = options,
       transportTransitGatewayAttachmentId = transportTransitGatewayAttachmentId,
       tags = Prelude.Nothing}
instance ToResourceProperties TransitGatewayConnect where
  toResourceProperties TransitGatewayConnect {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayConnect",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Options" JSON..= options,
                            "TransportTransitGatewayAttachmentId"
                              JSON..= transportTransitGatewayAttachmentId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TransitGatewayConnect where
  toJSON TransitGatewayConnect {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Options" JSON..= options,
               "TransportTransitGatewayAttachmentId"
                 JSON..= transportTransitGatewayAttachmentId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Options" TransitGatewayConnect where
  type PropertyType "Options" TransitGatewayConnect = TransitGatewayConnectOptionsProperty
  set newValue TransitGatewayConnect {..}
    = TransitGatewayConnect {options = newValue, ..}
instance Property "Tags" TransitGatewayConnect where
  type PropertyType "Tags" TransitGatewayConnect = [Tag]
  set newValue TransitGatewayConnect {..}
    = TransitGatewayConnect {tags = Prelude.pure newValue, ..}
instance Property "TransportTransitGatewayAttachmentId" TransitGatewayConnect where
  type PropertyType "TransportTransitGatewayAttachmentId" TransitGatewayConnect = Value Prelude.Text
  set newValue TransitGatewayConnect {..}
    = TransitGatewayConnect
        {transportTransitGatewayAttachmentId = newValue, ..}