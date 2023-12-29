module Stratosphere.EC2.EC2Fleet.TargetCapacitySpecificationRequestProperty (
        TargetCapacitySpecificationRequestProperty(..),
        mkTargetCapacitySpecificationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetCapacitySpecificationRequestProperty
  = TargetCapacitySpecificationRequestProperty {defaultTargetCapacityType :: (Prelude.Maybe (Value Prelude.Text)),
                                                onDemandTargetCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                                spotTargetCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                                targetCapacityUnitType :: (Prelude.Maybe (Value Prelude.Text)),
                                                totalTargetCapacity :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetCapacitySpecificationRequestProperty ::
  Value Prelude.Integer -> TargetCapacitySpecificationRequestProperty
mkTargetCapacitySpecificationRequestProperty totalTargetCapacity
  = TargetCapacitySpecificationRequestProperty
      {totalTargetCapacity = totalTargetCapacity,
       defaultTargetCapacityType = Prelude.Nothing,
       onDemandTargetCapacity = Prelude.Nothing,
       spotTargetCapacity = Prelude.Nothing,
       targetCapacityUnitType = Prelude.Nothing}
instance ToResourceProperties TargetCapacitySpecificationRequestProperty where
  toResourceProperties
    TargetCapacitySpecificationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.TargetCapacitySpecificationRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TotalTargetCapacity" JSON..= totalTargetCapacity]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultTargetCapacityType"
                                 Prelude.<$> defaultTargetCapacityType,
                               (JSON..=) "OnDemandTargetCapacity"
                                 Prelude.<$> onDemandTargetCapacity,
                               (JSON..=) "SpotTargetCapacity" Prelude.<$> spotTargetCapacity,
                               (JSON..=) "TargetCapacityUnitType"
                                 Prelude.<$> targetCapacityUnitType]))}
instance JSON.ToJSON TargetCapacitySpecificationRequestProperty where
  toJSON TargetCapacitySpecificationRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TotalTargetCapacity" JSON..= totalTargetCapacity]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultTargetCapacityType"
                    Prelude.<$> defaultTargetCapacityType,
                  (JSON..=) "OnDemandTargetCapacity"
                    Prelude.<$> onDemandTargetCapacity,
                  (JSON..=) "SpotTargetCapacity" Prelude.<$> spotTargetCapacity,
                  (JSON..=) "TargetCapacityUnitType"
                    Prelude.<$> targetCapacityUnitType])))
instance Property "DefaultTargetCapacityType" TargetCapacitySpecificationRequestProperty where
  type PropertyType "DefaultTargetCapacityType" TargetCapacitySpecificationRequestProperty = Value Prelude.Text
  set newValue TargetCapacitySpecificationRequestProperty {..}
    = TargetCapacitySpecificationRequestProperty
        {defaultTargetCapacityType = Prelude.pure newValue, ..}
instance Property "OnDemandTargetCapacity" TargetCapacitySpecificationRequestProperty where
  type PropertyType "OnDemandTargetCapacity" TargetCapacitySpecificationRequestProperty = Value Prelude.Integer
  set newValue TargetCapacitySpecificationRequestProperty {..}
    = TargetCapacitySpecificationRequestProperty
        {onDemandTargetCapacity = Prelude.pure newValue, ..}
instance Property "SpotTargetCapacity" TargetCapacitySpecificationRequestProperty where
  type PropertyType "SpotTargetCapacity" TargetCapacitySpecificationRequestProperty = Value Prelude.Integer
  set newValue TargetCapacitySpecificationRequestProperty {..}
    = TargetCapacitySpecificationRequestProperty
        {spotTargetCapacity = Prelude.pure newValue, ..}
instance Property "TargetCapacityUnitType" TargetCapacitySpecificationRequestProperty where
  type PropertyType "TargetCapacityUnitType" TargetCapacitySpecificationRequestProperty = Value Prelude.Text
  set newValue TargetCapacitySpecificationRequestProperty {..}
    = TargetCapacitySpecificationRequestProperty
        {targetCapacityUnitType = Prelude.pure newValue, ..}
instance Property "TotalTargetCapacity" TargetCapacitySpecificationRequestProperty where
  type PropertyType "TotalTargetCapacity" TargetCapacitySpecificationRequestProperty = Value Prelude.Integer
  set newValue TargetCapacitySpecificationRequestProperty {..}
    = TargetCapacitySpecificationRequestProperty
        {totalTargetCapacity = newValue, ..}