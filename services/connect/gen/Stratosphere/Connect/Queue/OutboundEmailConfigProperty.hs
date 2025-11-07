module Stratosphere.Connect.Queue.OutboundEmailConfigProperty (
        OutboundEmailConfigProperty(..), mkOutboundEmailConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutboundEmailConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-queue-outboundemailconfig.html>
    OutboundEmailConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-queue-outboundemailconfig.html#cfn-connect-queue-outboundemailconfig-outboundemailaddressid>
                                 outboundEmailAddressId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutboundEmailConfigProperty :: OutboundEmailConfigProperty
mkOutboundEmailConfigProperty
  = OutboundEmailConfigProperty
      {haddock_workaround_ = (),
       outboundEmailAddressId = Prelude.Nothing}
instance ToResourceProperties OutboundEmailConfigProperty where
  toResourceProperties OutboundEmailConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Queue.OutboundEmailConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OutboundEmailAddressId"
                              Prelude.<$> outboundEmailAddressId])}
instance JSON.ToJSON OutboundEmailConfigProperty where
  toJSON OutboundEmailConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OutboundEmailAddressId"
                 Prelude.<$> outboundEmailAddressId]))
instance Property "OutboundEmailAddressId" OutboundEmailConfigProperty where
  type PropertyType "OutboundEmailAddressId" OutboundEmailConfigProperty = Value Prelude.Text
  set newValue OutboundEmailConfigProperty {..}
    = OutboundEmailConfigProperty
        {outboundEmailAddressId = Prelude.pure newValue, ..}