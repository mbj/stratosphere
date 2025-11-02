module Stratosphere.ElasticLoadBalancingV2.TargetGroup.TargetDescriptionProperty (
        TargetDescriptionProperty(..), mkTargetDescriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetDescriptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html>
    TargetDescriptionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-availabilityzone>
                               availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-id>
                               id :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-port>
                               port :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetDescriptionProperty ::
  Value Prelude.Text -> TargetDescriptionProperty
mkTargetDescriptionProperty id
  = TargetDescriptionProperty
      {haddock_workaround_ = (), id = id,
       availabilityZone = Prelude.Nothing, port = Prelude.Nothing}
instance ToResourceProperties TargetDescriptionProperty where
  toResourceProperties TargetDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::TargetGroup.TargetDescription",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "Port" Prelude.<$> port]))}
instance JSON.ToJSON TargetDescriptionProperty where
  toJSON TargetDescriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "Port" Prelude.<$> port])))
instance Property "AvailabilityZone" TargetDescriptionProperty where
  type PropertyType "AvailabilityZone" TargetDescriptionProperty = Value Prelude.Text
  set newValue TargetDescriptionProperty {..}
    = TargetDescriptionProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "Id" TargetDescriptionProperty where
  type PropertyType "Id" TargetDescriptionProperty = Value Prelude.Text
  set newValue TargetDescriptionProperty {..}
    = TargetDescriptionProperty {id = newValue, ..}
instance Property "Port" TargetDescriptionProperty where
  type PropertyType "Port" TargetDescriptionProperty = Value Prelude.Integer
  set newValue TargetDescriptionProperty {..}
    = TargetDescriptionProperty {port = Prelude.pure newValue, ..}