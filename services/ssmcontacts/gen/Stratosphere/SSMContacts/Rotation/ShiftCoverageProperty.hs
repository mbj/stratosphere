module Stratosphere.SSMContacts.Rotation.ShiftCoverageProperty (
        module Exports, ShiftCoverageProperty(..), mkShiftCoverageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMContacts.Rotation.CoverageTimeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ShiftCoverageProperty
  = ShiftCoverageProperty {coverageTimes :: [CoverageTimeProperty],
                           dayOfWeek :: (Value Prelude.Text)}
mkShiftCoverageProperty ::
  [CoverageTimeProperty]
  -> Value Prelude.Text -> ShiftCoverageProperty
mkShiftCoverageProperty coverageTimes dayOfWeek
  = ShiftCoverageProperty
      {coverageTimes = coverageTimes, dayOfWeek = dayOfWeek}
instance ToResourceProperties ShiftCoverageProperty where
  toResourceProperties ShiftCoverageProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Rotation.ShiftCoverage",
         supportsTags = Prelude.False,
         properties = ["CoverageTimes" JSON..= coverageTimes,
                       "DayOfWeek" JSON..= dayOfWeek]}
instance JSON.ToJSON ShiftCoverageProperty where
  toJSON ShiftCoverageProperty {..}
    = JSON.object
        ["CoverageTimes" JSON..= coverageTimes,
         "DayOfWeek" JSON..= dayOfWeek]
instance Property "CoverageTimes" ShiftCoverageProperty where
  type PropertyType "CoverageTimes" ShiftCoverageProperty = [CoverageTimeProperty]
  set newValue ShiftCoverageProperty {..}
    = ShiftCoverageProperty {coverageTimes = newValue, ..}
instance Property "DayOfWeek" ShiftCoverageProperty where
  type PropertyType "DayOfWeek" ShiftCoverageProperty = Value Prelude.Text
  set newValue ShiftCoverageProperty {..}
    = ShiftCoverageProperty {dayOfWeek = newValue, ..}