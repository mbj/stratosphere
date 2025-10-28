module Stratosphere.VpcLattice.Rule.WeightedTargetGroupProperty (
        WeightedTargetGroupProperty(..), mkWeightedTargetGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WeightedTargetGroupProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-weightedtargetgroup.html>
    WeightedTargetGroupProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-weightedtargetgroup.html#cfn-vpclattice-rule-weightedtargetgroup-targetgroupidentifier>
                                 targetGroupIdentifier :: (Value Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-weightedtargetgroup.html#cfn-vpclattice-rule-weightedtargetgroup-weight>
                                 weight :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWeightedTargetGroupProperty ::
  Value Prelude.Text -> WeightedTargetGroupProperty
mkWeightedTargetGroupProperty targetGroupIdentifier
  = WeightedTargetGroupProperty
      {targetGroupIdentifier = targetGroupIdentifier,
       weight = Prelude.Nothing}
instance ToResourceProperties WeightedTargetGroupProperty where
  toResourceProperties WeightedTargetGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.WeightedTargetGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetGroupIdentifier" JSON..= targetGroupIdentifier]
                           (Prelude.catMaybes [(JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON WeightedTargetGroupProperty where
  toJSON WeightedTargetGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetGroupIdentifier" JSON..= targetGroupIdentifier]
              (Prelude.catMaybes [(JSON..=) "Weight" Prelude.<$> weight])))
instance Property "TargetGroupIdentifier" WeightedTargetGroupProperty where
  type PropertyType "TargetGroupIdentifier" WeightedTargetGroupProperty = Value Prelude.Text
  set newValue WeightedTargetGroupProperty {..}
    = WeightedTargetGroupProperty
        {targetGroupIdentifier = newValue, ..}
instance Property "Weight" WeightedTargetGroupProperty where
  type PropertyType "Weight" WeightedTargetGroupProperty = Value Prelude.Integer
  set newValue WeightedTargetGroupProperty {..}
    = WeightedTargetGroupProperty {weight = Prelude.pure newValue, ..}