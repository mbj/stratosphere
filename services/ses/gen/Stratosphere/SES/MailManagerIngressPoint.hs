module Stratosphere.SES.MailManagerIngressPoint (
        module Exports, MailManagerIngressPoint(..),
        mkMailManagerIngressPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerIngressPoint.IngressPointConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerIngressPoint.NetworkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MailManagerIngressPoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageringresspoint.html>
    MailManagerIngressPoint {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageringresspoint.html#cfn-ses-mailmanageringresspoint-ingresspointconfiguration>
                             ingressPointConfiguration :: (Prelude.Maybe IngressPointConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageringresspoint.html#cfn-ses-mailmanageringresspoint-ingresspointname>
                             ingressPointName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageringresspoint.html#cfn-ses-mailmanageringresspoint-networkconfiguration>
                             networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageringresspoint.html#cfn-ses-mailmanageringresspoint-rulesetid>
                             ruleSetId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageringresspoint.html#cfn-ses-mailmanageringresspoint-statustoupdate>
                             statusToUpdate :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageringresspoint.html#cfn-ses-mailmanageringresspoint-tags>
                             tags :: (Prelude.Maybe [Tag]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageringresspoint.html#cfn-ses-mailmanageringresspoint-trafficpolicyid>
                             trafficPolicyId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageringresspoint.html#cfn-ses-mailmanageringresspoint-type>
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailManagerIngressPoint ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MailManagerIngressPoint
mkMailManagerIngressPoint ruleSetId trafficPolicyId type'
  = MailManagerIngressPoint
      {haddock_workaround_ = (), ruleSetId = ruleSetId,
       trafficPolicyId = trafficPolicyId, type' = type',
       ingressPointConfiguration = Prelude.Nothing,
       ingressPointName = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
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
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
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
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
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
instance Property "NetworkConfiguration" MailManagerIngressPoint where
  type PropertyType "NetworkConfiguration" MailManagerIngressPoint = NetworkConfigurationProperty
  set newValue MailManagerIngressPoint {..}
    = MailManagerIngressPoint
        {networkConfiguration = Prelude.pure newValue, ..}
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