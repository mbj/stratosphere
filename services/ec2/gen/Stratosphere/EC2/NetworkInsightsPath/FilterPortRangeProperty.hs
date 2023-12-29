module Stratosphere.EC2.NetworkInsightsPath.FilterPortRangeProperty (
        FilterPortRangeProperty(..), mkFilterPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterPortRangeProperty
  = FilterPortRangeProperty {fromPort :: (Prelude.Maybe (Value Prelude.Integer)),
                             toPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterPortRangeProperty :: FilterPortRangeProperty
mkFilterPortRangeProperty
  = FilterPortRangeProperty
      {fromPort = Prelude.Nothing, toPort = Prelude.Nothing}
instance ToResourceProperties FilterPortRangeProperty where
  toResourceProperties FilterPortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsPath.FilterPortRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FromPort" Prelude.<$> fromPort,
                            (JSON..=) "ToPort" Prelude.<$> toPort])}
instance JSON.ToJSON FilterPortRangeProperty where
  toJSON FilterPortRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FromPort" Prelude.<$> fromPort,
               (JSON..=) "ToPort" Prelude.<$> toPort]))
instance Property "FromPort" FilterPortRangeProperty where
  type PropertyType "FromPort" FilterPortRangeProperty = Value Prelude.Integer
  set newValue FilterPortRangeProperty {..}
    = FilterPortRangeProperty {fromPort = Prelude.pure newValue, ..}
instance Property "ToPort" FilterPortRangeProperty where
  type PropertyType "ToPort" FilterPortRangeProperty = Value Prelude.Integer
  set newValue FilterPortRangeProperty {..}
    = FilterPortRangeProperty {toPort = Prelude.pure newValue, ..}