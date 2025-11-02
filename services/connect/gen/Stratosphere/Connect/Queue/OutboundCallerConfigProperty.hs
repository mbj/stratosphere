module Stratosphere.Connect.Queue.OutboundCallerConfigProperty (
        OutboundCallerConfigProperty(..), mkOutboundCallerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutboundCallerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-queue-outboundcallerconfig.html>
    OutboundCallerConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-queue-outboundcallerconfig.html#cfn-connect-queue-outboundcallerconfig-outboundcalleridname>
                                  outboundCallerIdName :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-queue-outboundcallerconfig.html#cfn-connect-queue-outboundcallerconfig-outboundcalleridnumberarn>
                                  outboundCallerIdNumberArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-queue-outboundcallerconfig.html#cfn-connect-queue-outboundcallerconfig-outboundflowarn>
                                  outboundFlowArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutboundCallerConfigProperty :: OutboundCallerConfigProperty
mkOutboundCallerConfigProperty
  = OutboundCallerConfigProperty
      {haddock_workaround_ = (), outboundCallerIdName = Prelude.Nothing,
       outboundCallerIdNumberArn = Prelude.Nothing,
       outboundFlowArn = Prelude.Nothing}
instance ToResourceProperties OutboundCallerConfigProperty where
  toResourceProperties OutboundCallerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Queue.OutboundCallerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OutboundCallerIdName" Prelude.<$> outboundCallerIdName,
                            (JSON..=) "OutboundCallerIdNumberArn"
                              Prelude.<$> outboundCallerIdNumberArn,
                            (JSON..=) "OutboundFlowArn" Prelude.<$> outboundFlowArn])}
instance JSON.ToJSON OutboundCallerConfigProperty where
  toJSON OutboundCallerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OutboundCallerIdName" Prelude.<$> outboundCallerIdName,
               (JSON..=) "OutboundCallerIdNumberArn"
                 Prelude.<$> outboundCallerIdNumberArn,
               (JSON..=) "OutboundFlowArn" Prelude.<$> outboundFlowArn]))
instance Property "OutboundCallerIdName" OutboundCallerConfigProperty where
  type PropertyType "OutboundCallerIdName" OutboundCallerConfigProperty = Value Prelude.Text
  set newValue OutboundCallerConfigProperty {..}
    = OutboundCallerConfigProperty
        {outboundCallerIdName = Prelude.pure newValue, ..}
instance Property "OutboundCallerIdNumberArn" OutboundCallerConfigProperty where
  type PropertyType "OutboundCallerIdNumberArn" OutboundCallerConfigProperty = Value Prelude.Text
  set newValue OutboundCallerConfigProperty {..}
    = OutboundCallerConfigProperty
        {outboundCallerIdNumberArn = Prelude.pure newValue, ..}
instance Property "OutboundFlowArn" OutboundCallerConfigProperty where
  type PropertyType "OutboundFlowArn" OutboundCallerConfigProperty = Value Prelude.Text
  set newValue OutboundCallerConfigProperty {..}
    = OutboundCallerConfigProperty
        {outboundFlowArn = Prelude.pure newValue, ..}