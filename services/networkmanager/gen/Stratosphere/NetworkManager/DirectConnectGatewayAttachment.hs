module Stratosphere.NetworkManager.DirectConnectGatewayAttachment (
        module Exports, DirectConnectGatewayAttachment(..),
        mkDirectConnectGatewayAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.DirectConnectGatewayAttachment.ProposedNetworkFunctionGroupChangeProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkManager.DirectConnectGatewayAttachment.ProposedSegmentChangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DirectConnectGatewayAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-directconnectgatewayattachment.html>
    DirectConnectGatewayAttachment {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-directconnectgatewayattachment.html#cfn-networkmanager-directconnectgatewayattachment-corenetworkid>
                                    coreNetworkId :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-directconnectgatewayattachment.html#cfn-networkmanager-directconnectgatewayattachment-directconnectgatewayarn>
                                    directConnectGatewayArn :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-directconnectgatewayattachment.html#cfn-networkmanager-directconnectgatewayattachment-edgelocations>
                                    edgeLocations :: (ValueList Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-directconnectgatewayattachment.html#cfn-networkmanager-directconnectgatewayattachment-proposednetworkfunctiongroupchange>
                                    proposedNetworkFunctionGroupChange :: (Prelude.Maybe ProposedNetworkFunctionGroupChangeProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-directconnectgatewayattachment.html#cfn-networkmanager-directconnectgatewayattachment-proposedsegmentchange>
                                    proposedSegmentChange :: (Prelude.Maybe ProposedSegmentChangeProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-directconnectgatewayattachment.html#cfn-networkmanager-directconnectgatewayattachment-tags>
                                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDirectConnectGatewayAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> DirectConnectGatewayAttachment
mkDirectConnectGatewayAttachment
  coreNetworkId
  directConnectGatewayArn
  edgeLocations
  = DirectConnectGatewayAttachment
      {haddock_workaround_ = (), coreNetworkId = coreNetworkId,
       directConnectGatewayArn = directConnectGatewayArn,
       edgeLocations = edgeLocations,
       proposedNetworkFunctionGroupChange = Prelude.Nothing,
       proposedSegmentChange = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DirectConnectGatewayAttachment where
  toResourceProperties DirectConnectGatewayAttachment {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::DirectConnectGatewayAttachment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CoreNetworkId" JSON..= coreNetworkId,
                            "DirectConnectGatewayArn" JSON..= directConnectGatewayArn,
                            "EdgeLocations" JSON..= edgeLocations]
                           (Prelude.catMaybes
                              [(JSON..=) "ProposedNetworkFunctionGroupChange"
                                 Prelude.<$> proposedNetworkFunctionGroupChange,
                               (JSON..=) "ProposedSegmentChange"
                                 Prelude.<$> proposedSegmentChange,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DirectConnectGatewayAttachment where
  toJSON DirectConnectGatewayAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CoreNetworkId" JSON..= coreNetworkId,
               "DirectConnectGatewayArn" JSON..= directConnectGatewayArn,
               "EdgeLocations" JSON..= edgeLocations]
              (Prelude.catMaybes
                 [(JSON..=) "ProposedNetworkFunctionGroupChange"
                    Prelude.<$> proposedNetworkFunctionGroupChange,
                  (JSON..=) "ProposedSegmentChange"
                    Prelude.<$> proposedSegmentChange,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CoreNetworkId" DirectConnectGatewayAttachment where
  type PropertyType "CoreNetworkId" DirectConnectGatewayAttachment = Value Prelude.Text
  set newValue DirectConnectGatewayAttachment {..}
    = DirectConnectGatewayAttachment {coreNetworkId = newValue, ..}
instance Property "DirectConnectGatewayArn" DirectConnectGatewayAttachment where
  type PropertyType "DirectConnectGatewayArn" DirectConnectGatewayAttachment = Value Prelude.Text
  set newValue DirectConnectGatewayAttachment {..}
    = DirectConnectGatewayAttachment
        {directConnectGatewayArn = newValue, ..}
instance Property "EdgeLocations" DirectConnectGatewayAttachment where
  type PropertyType "EdgeLocations" DirectConnectGatewayAttachment = ValueList Prelude.Text
  set newValue DirectConnectGatewayAttachment {..}
    = DirectConnectGatewayAttachment {edgeLocations = newValue, ..}
instance Property "ProposedNetworkFunctionGroupChange" DirectConnectGatewayAttachment where
  type PropertyType "ProposedNetworkFunctionGroupChange" DirectConnectGatewayAttachment = ProposedNetworkFunctionGroupChangeProperty
  set newValue DirectConnectGatewayAttachment {..}
    = DirectConnectGatewayAttachment
        {proposedNetworkFunctionGroupChange = Prelude.pure newValue, ..}
instance Property "ProposedSegmentChange" DirectConnectGatewayAttachment where
  type PropertyType "ProposedSegmentChange" DirectConnectGatewayAttachment = ProposedSegmentChangeProperty
  set newValue DirectConnectGatewayAttachment {..}
    = DirectConnectGatewayAttachment
        {proposedSegmentChange = Prelude.pure newValue, ..}
instance Property "Tags" DirectConnectGatewayAttachment where
  type PropertyType "Tags" DirectConnectGatewayAttachment = [Tag]
  set newValue DirectConnectGatewayAttachment {..}
    = DirectConnectGatewayAttachment {tags = Prelude.pure newValue, ..}