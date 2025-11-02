module Stratosphere.ApplicationAutoScaling.ScalableTarget.ScalableTargetActionProperty (
        ScalableTargetActionProperty(..), mkScalableTargetActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalableTargetActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scalabletargetaction.html>
    ScalableTargetActionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scalabletargetaction.html#cfn-applicationautoscaling-scalabletarget-scalabletargetaction-maxcapacity>
                                  maxCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scalabletargetaction.html#cfn-applicationautoscaling-scalabletarget-scalabletargetaction-mincapacity>
                                  minCapacity :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalableTargetActionProperty :: ScalableTargetActionProperty
mkScalableTargetActionProperty
  = ScalableTargetActionProperty
      {haddock_workaround_ = (), maxCapacity = Prelude.Nothing,
       minCapacity = Prelude.Nothing}
instance ToResourceProperties ScalableTargetActionProperty where
  toResourceProperties ScalableTargetActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalableTarget.ScalableTargetAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                            (JSON..=) "MinCapacity" Prelude.<$> minCapacity])}
instance JSON.ToJSON ScalableTargetActionProperty where
  toJSON ScalableTargetActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
               (JSON..=) "MinCapacity" Prelude.<$> minCapacity]))
instance Property "MaxCapacity" ScalableTargetActionProperty where
  type PropertyType "MaxCapacity" ScalableTargetActionProperty = Value Prelude.Integer
  set newValue ScalableTargetActionProperty {..}
    = ScalableTargetActionProperty
        {maxCapacity = Prelude.pure newValue, ..}
instance Property "MinCapacity" ScalableTargetActionProperty where
  type PropertyType "MinCapacity" ScalableTargetActionProperty = Value Prelude.Integer
  set newValue ScalableTargetActionProperty {..}
    = ScalableTargetActionProperty
        {minCapacity = Prelude.pure newValue, ..}