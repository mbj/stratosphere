module Stratosphere.SES.MailManagerIngressPoint (
        module Exports, MailManagerIngressPoint(..),
        mkMailManagerIngressPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerIngressPoint.IngressPointConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MailManagerIngressPoint
  = MailManagerIngressPoint {ingressPointConfiguration :: (Prelude.Maybe IngressPointConfigurationProperty),
                             ingressPointName :: (Prelude.Maybe (Value Prelude.Text)),
                             ruleSetId :: (Value Prelude.Text),
                             statusToUpdate :: (Prelude.Maybe (Value Prelude.Text)),
                             tags :: (Prelude.Maybe [Tag]),
                             trafficPolicyId :: (Value Prelude.Text),
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailManagerIngressPoint ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MailManagerIngressPoint
mkMailManagerIngressPoint ruleSetId trafficPolicyId type'
  = MailManagerIngressPoint
      {ruleSetId = ruleSetId, trafficPolicyId = trafficPolicyId,
       type' = type', ingressPointConfiguration = Prelude.Nothing,
       ingressPointName = Prelude.Nothing,
       statusToUpdate = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties MailManagerIngressPoint where
  toResourceProperties MailManagerIngressPoint {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerIngressPoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RuleSetId" JSON..= ruleSetId,
                            "TrafficPolicyId" JSON..= trafficPolicyId, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "IngressPointConfiguration"
                                 Prelude.<$> ingressPointConfiguration,
                               (JSON..=) "IngressPointName" Prelude.<$> ingressPointName,
                               (JSON..=) "StatusToUpdate" Prelude.<$> statusToUpdate,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MailManagerIngressPoint where
  toJSON MailManagerIngressPoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RuleSetId" JSON..= ruleSetId,
               "TrafficPolicyId" JSON..= trafficPolicyId, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "IngressPointConfiguration"
                    Prelude.<$> ingressPointConfiguration,
                  (JSON..=) "IngressPointName" Prelude.<$> ingressPointName,
                  (JSON..=) "StatusToUpdate" Prelude.<$> statusToUpdate,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "IngressPointConfiguration" MailManagerIngressPoint where
  type PropertyType "IngressPointConfiguration" MailManagerIngressPoint = IngressPointConfigurationProperty
  set newValue MailManagerIngressPoint {..}
    = MailManagerIngressPoint
        {ingressPointConfiguration = Prelude.pure newValue, ..}
instance Property "IngressPointName" MailManagerIngressPoint where
  type PropertyType "IngressPointName" MailManagerIngressPoint = Value Prelude.Text
  set newValue MailManagerIngressPoint {..}
    = MailManagerIngressPoint
        {ingressPointName = Prelude.pure newValue, ..}
instance Property "RuleSetId" MailManagerIngressPoint where
  type PropertyType "RuleSetId" MailManagerIngressPoint = Value Prelude.Text
  set newValue MailManagerIngressPoint {..}
    = MailManagerIngressPoint {ruleSetId = newValue, ..}
instance Property "StatusToUpdate" MailManagerIngressPoint where
  type PropertyType "StatusToUpdate" MailManagerIngressPoint = Value Prelude.Text
  set newValue MailManagerIngressPoint {..}
    = MailManagerIngressPoint
        {statusToUpdate = Prelude.pure newValue, ..}
instance Property "Tags" MailManagerIngressPoint where
  type PropertyType "Tags" MailManagerIngressPoint = [Tag]
  set newValue MailManagerIngressPoint {..}
    = MailManagerIngressPoint {tags = Prelude.pure newValue, ..}
instance Property "TrafficPolicyId" MailManagerIngressPoint where
  type PropertyType "TrafficPolicyId" MailManagerIngressPoint = Value Prelude.Text
  set newValue MailManagerIngressPoint {..}
    = MailManagerIngressPoint {trafficPolicyId = newValue, ..}
instance Property "Type" MailManagerIngressPoint where
  type PropertyType "Type" MailManagerIngressPoint = Value Prelude.Text
  set newValue MailManagerIngressPoint {..}
    = MailManagerIngressPoint {type' = newValue, ..}