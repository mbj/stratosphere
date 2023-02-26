module Stratosphere.EC2.TrafficMirrorFilter (
        TrafficMirrorFilter(..), mkTrafficMirrorFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrafficMirrorFilter
  = TrafficMirrorFilter {description :: (Prelude.Maybe (Value Prelude.Text)),
                         networkServices :: (Prelude.Maybe (ValueList Prelude.Text)),
                         tags :: (Prelude.Maybe [Tag])}
mkTrafficMirrorFilter :: TrafficMirrorFilter
mkTrafficMirrorFilter
  = TrafficMirrorFilter
      {description = Prelude.Nothing, networkServices = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TrafficMirrorFilter where
  toResourceProperties TrafficMirrorFilter {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TrafficMirrorFilter",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "NetworkServices" Prelude.<$> networkServices,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON TrafficMirrorFilter where
  toJSON TrafficMirrorFilter {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "NetworkServices" Prelude.<$> networkServices,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" TrafficMirrorFilter where
  type PropertyType "Description" TrafficMirrorFilter = Value Prelude.Text
  set newValue TrafficMirrorFilter {..}
    = TrafficMirrorFilter {description = Prelude.pure newValue, ..}
instance Property "NetworkServices" TrafficMirrorFilter where
  type PropertyType "NetworkServices" TrafficMirrorFilter = ValueList Prelude.Text
  set newValue TrafficMirrorFilter {..}
    = TrafficMirrorFilter {networkServices = Prelude.pure newValue, ..}
instance Property "Tags" TrafficMirrorFilter where
  type PropertyType "Tags" TrafficMirrorFilter = [Tag]
  set newValue TrafficMirrorFilter {..}
    = TrafficMirrorFilter {tags = Prelude.pure newValue, ..}