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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-rotation-shiftcoverage.html>
    ShiftCoverageProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-rotation-shiftcoverage.html#cfn-ssmcontacts-rotation-shiftcoverage-coveragetimes>
                           coverageTimes :: [CoverageTimeProperty],
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-rotation-shiftcoverage.html#cfn-ssmcontacts-rotation-shiftcoverage-dayofweek>
                           dayOfWeek :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkShiftCoverageProperty ::
  [CoverageTimeProperty]
  -> Value Prelude.Text -> ShiftCoverageProperty
mkShiftCoverageProperty coverageTimes dayOfWeek
  = ShiftCoverageProperty
      {haddock_workaround_ = (), coverageTimes = coverageTimes,
       dayOfWeek = dayOfWeek}
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