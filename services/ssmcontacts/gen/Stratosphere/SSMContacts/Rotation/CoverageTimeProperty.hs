module Stratosphere.SSMContacts.Rotation.CoverageTimeProperty (
        CoverageTimeProperty(..), mkCoverageTimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoverageTimeProperty
  = CoverageTimeProperty {endTime :: (Value Prelude.Text),
                          startTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoverageTimeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CoverageTimeProperty
mkCoverageTimeProperty endTime startTime
  = CoverageTimeProperty {endTime = endTime, startTime = startTime}
instance ToResourceProperties CoverageTimeProperty where
  toResourceProperties CoverageTimeProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Rotation.CoverageTime",
         supportsTags = Prelude.False,
         properties = ["EndTime" JSON..= endTime,
                       "StartTime" JSON..= startTime]}
instance JSON.ToJSON CoverageTimeProperty where
  toJSON CoverageTimeProperty {..}
    = JSON.object
        ["EndTime" JSON..= endTime, "StartTime" JSON..= startTime]
instance Property "EndTime" CoverageTimeProperty where
  type PropertyType "EndTime" CoverageTimeProperty = Value Prelude.Text
  set newValue CoverageTimeProperty {..}
    = CoverageTimeProperty {endTime = newValue, ..}
instance Property "StartTime" CoverageTimeProperty where
  type PropertyType "StartTime" CoverageTimeProperty = Value Prelude.Text
  set newValue CoverageTimeProperty {..}
    = CoverageTimeProperty {startTime = newValue, ..}