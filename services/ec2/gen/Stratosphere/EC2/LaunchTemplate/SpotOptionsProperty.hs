module Stratosphere.EC2.LaunchTemplate.SpotOptionsProperty (
        SpotOptionsProperty(..), mkSpotOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotOptionsProperty
  = SpotOptionsProperty {blockDurationMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                         instanceInterruptionBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                         maxPrice :: (Prelude.Maybe (Value Prelude.Text)),
                         spotInstanceType :: (Prelude.Maybe (Value Prelude.Text)),
                         validUntil :: (Prelude.Maybe (Value Prelude.Text))}
mkSpotOptionsProperty :: SpotOptionsProperty
mkSpotOptionsProperty
  = SpotOptionsProperty
      {blockDurationMinutes = Prelude.Nothing,
       instanceInterruptionBehavior = Prelude.Nothing,
       maxPrice = Prelude.Nothing, spotInstanceType = Prelude.Nothing,
       validUntil = Prelude.Nothing}
instance ToResourceProperties SpotOptionsProperty where
  toResourceProperties SpotOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.SpotOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlockDurationMinutes" Prelude.<$> blockDurationMinutes,
                            (JSON..=) "InstanceInterruptionBehavior"
                              Prelude.<$> instanceInterruptionBehavior,
                            (JSON..=) "MaxPrice" Prelude.<$> maxPrice,
                            (JSON..=) "SpotInstanceType" Prelude.<$> spotInstanceType,
                            (JSON..=) "ValidUntil" Prelude.<$> validUntil])}
instance JSON.ToJSON SpotOptionsProperty where
  toJSON SpotOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlockDurationMinutes" Prelude.<$> blockDurationMinutes,
               (JSON..=) "InstanceInterruptionBehavior"
                 Prelude.<$> instanceInterruptionBehavior,
               (JSON..=) "MaxPrice" Prelude.<$> maxPrice,
               (JSON..=) "SpotInstanceType" Prelude.<$> spotInstanceType,
               (JSON..=) "ValidUntil" Prelude.<$> validUntil]))
instance Property "BlockDurationMinutes" SpotOptionsProperty where
  type PropertyType "BlockDurationMinutes" SpotOptionsProperty = Value Prelude.Integer
  set newValue SpotOptionsProperty {..}
    = SpotOptionsProperty
        {blockDurationMinutes = Prelude.pure newValue, ..}
instance Property "InstanceInterruptionBehavior" SpotOptionsProperty where
  type PropertyType "InstanceInterruptionBehavior" SpotOptionsProperty = Value Prelude.Text
  set newValue SpotOptionsProperty {..}
    = SpotOptionsProperty
        {instanceInterruptionBehavior = Prelude.pure newValue, ..}
instance Property "MaxPrice" SpotOptionsProperty where
  type PropertyType "MaxPrice" SpotOptionsProperty = Value Prelude.Text
  set newValue SpotOptionsProperty {..}
    = SpotOptionsProperty {maxPrice = Prelude.pure newValue, ..}
instance Property "SpotInstanceType" SpotOptionsProperty where
  type PropertyType "SpotInstanceType" SpotOptionsProperty = Value Prelude.Text
  set newValue SpotOptionsProperty {..}
    = SpotOptionsProperty
        {spotInstanceType = Prelude.pure newValue, ..}
instance Property "ValidUntil" SpotOptionsProperty where
  type PropertyType "ValidUntil" SpotOptionsProperty = Value Prelude.Text
  set newValue SpotOptionsProperty {..}
    = SpotOptionsProperty {validUntil = Prelude.pure newValue, ..}