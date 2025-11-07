module Stratosphere.QuickSight.Dashboard.WhatIfPointScenarioProperty (
        WhatIfPointScenarioProperty(..), mkWhatIfPointScenarioProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WhatIfPointScenarioProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-whatifpointscenario.html>
    WhatIfPointScenarioProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-whatifpointscenario.html#cfn-quicksight-dashboard-whatifpointscenario-date>
                                 date :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-whatifpointscenario.html#cfn-quicksight-dashboard-whatifpointscenario-value>
                                 value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWhatIfPointScenarioProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> WhatIfPointScenarioProperty
mkWhatIfPointScenarioProperty date value
  = WhatIfPointScenarioProperty
      {haddock_workaround_ = (), date = date, value = value}
instance ToResourceProperties WhatIfPointScenarioProperty where
  toResourceProperties WhatIfPointScenarioProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WhatIfPointScenario",
         supportsTags = Prelude.False,
         properties = ["Date" JSON..= date, "Value" JSON..= value]}
instance JSON.ToJSON WhatIfPointScenarioProperty where
  toJSON WhatIfPointScenarioProperty {..}
    = JSON.object ["Date" JSON..= date, "Value" JSON..= value]
instance Property "Date" WhatIfPointScenarioProperty where
  type PropertyType "Date" WhatIfPointScenarioProperty = Value Prelude.Text
  set newValue WhatIfPointScenarioProperty {..}
    = WhatIfPointScenarioProperty {date = newValue, ..}
instance Property "Value" WhatIfPointScenarioProperty where
  type PropertyType "Value" WhatIfPointScenarioProperty = Value Prelude.Double
  set newValue WhatIfPointScenarioProperty {..}
    = WhatIfPointScenarioProperty {value = newValue, ..}