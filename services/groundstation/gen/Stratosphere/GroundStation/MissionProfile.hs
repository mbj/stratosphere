module Stratosphere.GroundStation.MissionProfile (
        module Exports, MissionProfile(..), mkMissionProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.MissionProfile.DataflowEdgeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MissionProfile
  = MissionProfile {contactPostPassDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                    contactPrePassDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                    dataflowEdges :: [DataflowEdgeProperty],
                    minimumViableContactDurationSeconds :: (Value Prelude.Integer),
                    name :: (Value Prelude.Text),
                    tags :: (Prelude.Maybe [Tag]),
                    trackingConfigArn :: (Value Prelude.Text)}
mkMissionProfile ::
  [DataflowEdgeProperty]
  -> Value Prelude.Integer
     -> Value Prelude.Text -> Value Prelude.Text -> MissionProfile
mkMissionProfile
  dataflowEdges
  minimumViableContactDurationSeconds
  name
  trackingConfigArn
  = MissionProfile
      {dataflowEdges = dataflowEdges,
       minimumViableContactDurationSeconds = minimumViableContactDurationSeconds,
       name = name, trackingConfigArn = trackingConfigArn,
       contactPostPassDurationSeconds = Prelude.Nothing,
       contactPrePassDurationSeconds = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties MissionProfile where
  toResourceProperties MissionProfile {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::MissionProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataflowEdges" JSON..= dataflowEdges,
                            "MinimumViableContactDurationSeconds"
                              JSON..= minimumViableContactDurationSeconds,
                            "Name" JSON..= name, "TrackingConfigArn" JSON..= trackingConfigArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ContactPostPassDurationSeconds"
                                 Prelude.<$> contactPostPassDurationSeconds,
                               (JSON..=) "ContactPrePassDurationSeconds"
                                 Prelude.<$> contactPrePassDurationSeconds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MissionProfile where
  toJSON MissionProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataflowEdges" JSON..= dataflowEdges,
               "MinimumViableContactDurationSeconds"
                 JSON..= minimumViableContactDurationSeconds,
               "Name" JSON..= name, "TrackingConfigArn" JSON..= trackingConfigArn]
              (Prelude.catMaybes
                 [(JSON..=) "ContactPostPassDurationSeconds"
                    Prelude.<$> contactPostPassDurationSeconds,
                  (JSON..=) "ContactPrePassDurationSeconds"
                    Prelude.<$> contactPrePassDurationSeconds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContactPostPassDurationSeconds" MissionProfile where
  type PropertyType "ContactPostPassDurationSeconds" MissionProfile = Value Prelude.Integer
  set newValue MissionProfile {..}
    = MissionProfile
        {contactPostPassDurationSeconds = Prelude.pure newValue, ..}
instance Property "ContactPrePassDurationSeconds" MissionProfile where
  type PropertyType "ContactPrePassDurationSeconds" MissionProfile = Value Prelude.Integer
  set newValue MissionProfile {..}
    = MissionProfile
        {contactPrePassDurationSeconds = Prelude.pure newValue, ..}
instance Property "DataflowEdges" MissionProfile where
  type PropertyType "DataflowEdges" MissionProfile = [DataflowEdgeProperty]
  set newValue MissionProfile {..}
    = MissionProfile {dataflowEdges = newValue, ..}
instance Property "MinimumViableContactDurationSeconds" MissionProfile where
  type PropertyType "MinimumViableContactDurationSeconds" MissionProfile = Value Prelude.Integer
  set newValue MissionProfile {..}
    = MissionProfile
        {minimumViableContactDurationSeconds = newValue, ..}
instance Property "Name" MissionProfile where
  type PropertyType "Name" MissionProfile = Value Prelude.Text
  set newValue MissionProfile {..}
    = MissionProfile {name = newValue, ..}
instance Property "Tags" MissionProfile where
  type PropertyType "Tags" MissionProfile = [Tag]
  set newValue MissionProfile {..}
    = MissionProfile {tags = Prelude.pure newValue, ..}
instance Property "TrackingConfigArn" MissionProfile where
  type PropertyType "TrackingConfigArn" MissionProfile = Value Prelude.Text
  set newValue MissionProfile {..}
    = MissionProfile {trackingConfigArn = newValue, ..}