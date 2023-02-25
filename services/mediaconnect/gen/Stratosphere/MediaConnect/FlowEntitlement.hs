module Stratosphere.MediaConnect.FlowEntitlement (
        module Exports, FlowEntitlement(..), mkFlowEntitlement
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.FlowEntitlement.EncryptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowEntitlement
  = FlowEntitlement {dataTransferSubscriberFeePercent :: (Prelude.Maybe (Value Prelude.Integer)),
                     description :: (Value Prelude.Text),
                     encryption :: (Prelude.Maybe EncryptionProperty),
                     entitlementStatus :: (Prelude.Maybe (Value Prelude.Text)),
                     flowArn :: (Value Prelude.Text),
                     name :: (Value Prelude.Text),
                     subscribers :: (ValueList (Value Prelude.Text))}
mkFlowEntitlement ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> ValueList (Value Prelude.Text) -> FlowEntitlement
mkFlowEntitlement description flowArn name subscribers
  = FlowEntitlement
      {description = description, flowArn = flowArn, name = name,
       subscribers = subscribers,
       dataTransferSubscriberFeePercent = Prelude.Nothing,
       encryption = Prelude.Nothing, entitlementStatus = Prelude.Nothing}
instance ToResourceProperties FlowEntitlement where
  toResourceProperties FlowEntitlement {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowEntitlement",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description, "FlowArn" JSON..= flowArn,
                            "Name" JSON..= name, "Subscribers" JSON..= subscribers]
                           (Prelude.catMaybes
                              [(JSON..=) "DataTransferSubscriberFeePercent"
                                 Prelude.<$> dataTransferSubscriberFeePercent,
                               (JSON..=) "Encryption" Prelude.<$> encryption,
                               (JSON..=) "EntitlementStatus" Prelude.<$> entitlementStatus]))}
instance JSON.ToJSON FlowEntitlement where
  toJSON FlowEntitlement {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description, "FlowArn" JSON..= flowArn,
               "Name" JSON..= name, "Subscribers" JSON..= subscribers]
              (Prelude.catMaybes
                 [(JSON..=) "DataTransferSubscriberFeePercent"
                    Prelude.<$> dataTransferSubscriberFeePercent,
                  (JSON..=) "Encryption" Prelude.<$> encryption,
                  (JSON..=) "EntitlementStatus" Prelude.<$> entitlementStatus])))
instance Property "DataTransferSubscriberFeePercent" FlowEntitlement where
  type PropertyType "DataTransferSubscriberFeePercent" FlowEntitlement = Value Prelude.Integer
  set newValue FlowEntitlement {..}
    = FlowEntitlement
        {dataTransferSubscriberFeePercent = Prelude.pure newValue, ..}
instance Property "Description" FlowEntitlement where
  type PropertyType "Description" FlowEntitlement = Value Prelude.Text
  set newValue FlowEntitlement {..}
    = FlowEntitlement {description = newValue, ..}
instance Property "Encryption" FlowEntitlement where
  type PropertyType "Encryption" FlowEntitlement = EncryptionProperty
  set newValue FlowEntitlement {..}
    = FlowEntitlement {encryption = Prelude.pure newValue, ..}
instance Property "EntitlementStatus" FlowEntitlement where
  type PropertyType "EntitlementStatus" FlowEntitlement = Value Prelude.Text
  set newValue FlowEntitlement {..}
    = FlowEntitlement {entitlementStatus = Prelude.pure newValue, ..}
instance Property "FlowArn" FlowEntitlement where
  type PropertyType "FlowArn" FlowEntitlement = Value Prelude.Text
  set newValue FlowEntitlement {..}
    = FlowEntitlement {flowArn = newValue, ..}
instance Property "Name" FlowEntitlement where
  type PropertyType "Name" FlowEntitlement = Value Prelude.Text
  set newValue FlowEntitlement {..}
    = FlowEntitlement {name = newValue, ..}
instance Property "Subscribers" FlowEntitlement where
  type PropertyType "Subscribers" FlowEntitlement = ValueList (Value Prelude.Text)
  set newValue FlowEntitlement {..}
    = FlowEntitlement {subscribers = newValue, ..}