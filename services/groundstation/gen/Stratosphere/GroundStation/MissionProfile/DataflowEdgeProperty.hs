module Stratosphere.GroundStation.MissionProfile.DataflowEdgeProperty (
        DataflowEdgeProperty(..), mkDataflowEdgeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataflowEdgeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-dataflowedge.html>
    DataflowEdgeProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-dataflowedge.html#cfn-groundstation-missionprofile-dataflowedge-destination>
                          destination :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-dataflowedge.html#cfn-groundstation-missionprofile-dataflowedge-source>
                          source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataflowEdgeProperty :: DataflowEdgeProperty
mkDataflowEdgeProperty
  = DataflowEdgeProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing,
       source = Prelude.Nothing}
instance ToResourceProperties DataflowEdgeProperty where
  toResourceProperties DataflowEdgeProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::MissionProfile.DataflowEdge",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON DataflowEdgeProperty where
  toJSON DataflowEdgeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "Source" Prelude.<$> source]))
instance Property "Destination" DataflowEdgeProperty where
  type PropertyType "Destination" DataflowEdgeProperty = Value Prelude.Text
  set newValue DataflowEdgeProperty {..}
    = DataflowEdgeProperty {destination = Prelude.pure newValue, ..}
instance Property "Source" DataflowEdgeProperty where
  type PropertyType "Source" DataflowEdgeProperty = Value Prelude.Text
  set newValue DataflowEdgeProperty {..}
    = DataflowEdgeProperty {source = Prelude.pure newValue, ..}