module Stratosphere.EC2.LaunchTemplate.NetworkInterfaceCountProperty (
        NetworkInterfaceCountProperty(..), mkNetworkInterfaceCountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceCountProperty
  = NetworkInterfaceCountProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                                   min :: (Prelude.Maybe (Value Prelude.Integer))}
mkNetworkInterfaceCountProperty :: NetworkInterfaceCountProperty
mkNetworkInterfaceCountProperty
  = NetworkInterfaceCountProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceCountProperty where
  toResourceProperties NetworkInterfaceCountProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.NetworkInterfaceCount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON NetworkInterfaceCountProperty where
  toJSON NetworkInterfaceCountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" NetworkInterfaceCountProperty where
  type PropertyType "Max" NetworkInterfaceCountProperty = Value Prelude.Integer
  set newValue NetworkInterfaceCountProperty {..}
    = NetworkInterfaceCountProperty {max = Prelude.pure newValue, ..}
instance Property "Min" NetworkInterfaceCountProperty where
  type PropertyType "Min" NetworkInterfaceCountProperty = Value Prelude.Integer
  set newValue NetworkInterfaceCountProperty {..}
    = NetworkInterfaceCountProperty {min = Prelude.pure newValue, ..}