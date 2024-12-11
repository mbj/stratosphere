module Stratosphere.MediaPackageV2.OriginEndpoint.DashUtcTimingProperty (
        DashUtcTimingProperty(..), mkDashUtcTimingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashUtcTimingProperty
  = DashUtcTimingProperty {timingMode :: (Prelude.Maybe (Value Prelude.Text)),
                           timingSource :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashUtcTimingProperty :: DashUtcTimingProperty
mkDashUtcTimingProperty
  = DashUtcTimingProperty
      {timingMode = Prelude.Nothing, timingSource = Prelude.Nothing}
instance ToResourceProperties DashUtcTimingProperty where
  toResourceProperties DashUtcTimingProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.DashUtcTiming",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TimingMode" Prelude.<$> timingMode,
                            (JSON..=) "TimingSource" Prelude.<$> timingSource])}
instance JSON.ToJSON DashUtcTimingProperty where
  toJSON DashUtcTimingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TimingMode" Prelude.<$> timingMode,
               (JSON..=) "TimingSource" Prelude.<$> timingSource]))
instance Property "TimingMode" DashUtcTimingProperty where
  type PropertyType "TimingMode" DashUtcTimingProperty = Value Prelude.Text
  set newValue DashUtcTimingProperty {..}
    = DashUtcTimingProperty {timingMode = Prelude.pure newValue, ..}
instance Property "TimingSource" DashUtcTimingProperty where
  type PropertyType "TimingSource" DashUtcTimingProperty = Value Prelude.Text
  set newValue DashUtcTimingProperty {..}
    = DashUtcTimingProperty {timingSource = Prelude.pure newValue, ..}