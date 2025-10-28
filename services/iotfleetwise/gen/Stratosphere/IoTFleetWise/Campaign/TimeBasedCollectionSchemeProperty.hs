module Stratosphere.IoTFleetWise.Campaign.TimeBasedCollectionSchemeProperty (
        TimeBasedCollectionSchemeProperty(..),
        mkTimeBasedCollectionSchemeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeBasedCollectionSchemeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-timebasedcollectionscheme.html>
    TimeBasedCollectionSchemeProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-timebasedcollectionscheme.html#cfn-iotfleetwise-campaign-timebasedcollectionscheme-periodms>
                                       periodMs :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeBasedCollectionSchemeProperty ::
  Value Prelude.Double -> TimeBasedCollectionSchemeProperty
mkTimeBasedCollectionSchemeProperty periodMs
  = TimeBasedCollectionSchemeProperty
      {haddock_workaround_ = (), periodMs = periodMs}
instance ToResourceProperties TimeBasedCollectionSchemeProperty where
  toResourceProperties TimeBasedCollectionSchemeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.TimeBasedCollectionScheme",
         supportsTags = Prelude.False,
         properties = ["PeriodMs" JSON..= periodMs]}
instance JSON.ToJSON TimeBasedCollectionSchemeProperty where
  toJSON TimeBasedCollectionSchemeProperty {..}
    = JSON.object ["PeriodMs" JSON..= periodMs]
instance Property "PeriodMs" TimeBasedCollectionSchemeProperty where
  type PropertyType "PeriodMs" TimeBasedCollectionSchemeProperty = Value Prelude.Double
  set newValue TimeBasedCollectionSchemeProperty {..}
    = TimeBasedCollectionSchemeProperty {periodMs = newValue, ..}