module Stratosphere.EKS.Nodegroup.ScalingConfigProperty (
        ScalingConfigProperty(..), mkScalingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingConfigProperty
  = ScalingConfigProperty {desiredSize :: (Prelude.Maybe (Value Prelude.Integer)),
                           maxSize :: (Prelude.Maybe (Value Prelude.Integer)),
                           minSize :: (Prelude.Maybe (Value Prelude.Integer))}
mkScalingConfigProperty :: ScalingConfigProperty
mkScalingConfigProperty
  = ScalingConfigProperty
      {desiredSize = Prelude.Nothing, maxSize = Prelude.Nothing,
       minSize = Prelude.Nothing}
instance ToResourceProperties ScalingConfigProperty where
  toResourceProperties ScalingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Nodegroup.ScalingConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DesiredSize" Prelude.<$> desiredSize,
                            (JSON..=) "MaxSize" Prelude.<$> maxSize,
                            (JSON..=) "MinSize" Prelude.<$> minSize])}
instance JSON.ToJSON ScalingConfigProperty where
  toJSON ScalingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DesiredSize" Prelude.<$> desiredSize,
               (JSON..=) "MaxSize" Prelude.<$> maxSize,
               (JSON..=) "MinSize" Prelude.<$> minSize]))
instance Property "DesiredSize" ScalingConfigProperty where
  type PropertyType "DesiredSize" ScalingConfigProperty = Value Prelude.Integer
  set newValue ScalingConfigProperty {..}
    = ScalingConfigProperty {desiredSize = Prelude.pure newValue, ..}
instance Property "MaxSize" ScalingConfigProperty where
  type PropertyType "MaxSize" ScalingConfigProperty = Value Prelude.Integer
  set newValue ScalingConfigProperty {..}
    = ScalingConfigProperty {maxSize = Prelude.pure newValue, ..}
instance Property "MinSize" ScalingConfigProperty where
  type PropertyType "MinSize" ScalingConfigProperty = Value Prelude.Integer
  set newValue ScalingConfigProperty {..}
    = ScalingConfigProperty {minSize = Prelude.pure newValue, ..}