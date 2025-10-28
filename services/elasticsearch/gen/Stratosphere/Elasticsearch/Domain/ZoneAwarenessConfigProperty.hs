module Stratosphere.Elasticsearch.Domain.ZoneAwarenessConfigProperty (
        ZoneAwarenessConfigProperty(..), mkZoneAwarenessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZoneAwarenessConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-zoneawarenessconfig.html>
    ZoneAwarenessConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-zoneawarenessconfig.html#cfn-elasticsearch-domain-zoneawarenessconfig-availabilityzonecount>
                                 availabilityZoneCount :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZoneAwarenessConfigProperty :: ZoneAwarenessConfigProperty
mkZoneAwarenessConfigProperty
  = ZoneAwarenessConfigProperty
      {haddock_workaround_ = (), availabilityZoneCount = Prelude.Nothing}
instance ToResourceProperties ZoneAwarenessConfigProperty where
  toResourceProperties ZoneAwarenessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain.ZoneAwarenessConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZoneCount"
                              Prelude.<$> availabilityZoneCount])}
instance JSON.ToJSON ZoneAwarenessConfigProperty where
  toJSON ZoneAwarenessConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZoneCount"
                 Prelude.<$> availabilityZoneCount]))
instance Property "AvailabilityZoneCount" ZoneAwarenessConfigProperty where
  type PropertyType "AvailabilityZoneCount" ZoneAwarenessConfigProperty = Value Prelude.Integer
  set newValue ZoneAwarenessConfigProperty {..}
    = ZoneAwarenessConfigProperty
        {availabilityZoneCount = Prelude.pure newValue, ..}