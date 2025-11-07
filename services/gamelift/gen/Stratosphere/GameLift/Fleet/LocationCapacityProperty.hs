module Stratosphere.GameLift.Fleet.LocationCapacityProperty (
        LocationCapacityProperty(..), mkLocationCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocationCapacityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationcapacity.html>
    LocationCapacityProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationcapacity.html#cfn-gamelift-fleet-locationcapacity-desiredec2instances>
                              desiredEC2Instances :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationcapacity.html#cfn-gamelift-fleet-locationcapacity-maxsize>
                              maxSize :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationcapacity.html#cfn-gamelift-fleet-locationcapacity-minsize>
                              minSize :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationCapacityProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> LocationCapacityProperty
mkLocationCapacityProperty maxSize minSize
  = LocationCapacityProperty
      {haddock_workaround_ = (), maxSize = maxSize, minSize = minSize,
       desiredEC2Instances = Prelude.Nothing}
instance ToResourceProperties LocationCapacityProperty where
  toResourceProperties LocationCapacityProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet.LocationCapacity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxSize" JSON..= maxSize, "MinSize" JSON..= minSize]
                           (Prelude.catMaybes
                              [(JSON..=) "DesiredEC2Instances"
                                 Prelude.<$> desiredEC2Instances]))}
instance JSON.ToJSON LocationCapacityProperty where
  toJSON LocationCapacityProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxSize" JSON..= maxSize, "MinSize" JSON..= minSize]
              (Prelude.catMaybes
                 [(JSON..=) "DesiredEC2Instances"
                    Prelude.<$> desiredEC2Instances])))
instance Property "DesiredEC2Instances" LocationCapacityProperty where
  type PropertyType "DesiredEC2Instances" LocationCapacityProperty = Value Prelude.Integer
  set newValue LocationCapacityProperty {..}
    = LocationCapacityProperty
        {desiredEC2Instances = Prelude.pure newValue, ..}
instance Property "MaxSize" LocationCapacityProperty where
  type PropertyType "MaxSize" LocationCapacityProperty = Value Prelude.Integer
  set newValue LocationCapacityProperty {..}
    = LocationCapacityProperty {maxSize = newValue, ..}
instance Property "MinSize" LocationCapacityProperty where
  type PropertyType "MinSize" LocationCapacityProperty = Value Prelude.Integer
  set newValue LocationCapacityProperty {..}
    = LocationCapacityProperty {minSize = newValue, ..}