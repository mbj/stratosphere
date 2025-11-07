module Stratosphere.QuickSight.Analysis.WhatIfRangeScenarioProperty (
        WhatIfRangeScenarioProperty(..), mkWhatIfRangeScenarioProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WhatIfRangeScenarioProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-whatifrangescenario.html>
    WhatIfRangeScenarioProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-whatifrangescenario.html#cfn-quicksight-analysis-whatifrangescenario-enddate>
                                 endDate :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-whatifrangescenario.html#cfn-quicksight-analysis-whatifrangescenario-startdate>
                                 startDate :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-whatifrangescenario.html#cfn-quicksight-analysis-whatifrangescenario-value>
                                 value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWhatIfRangeScenarioProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> WhatIfRangeScenarioProperty
mkWhatIfRangeScenarioProperty endDate startDate value
  = WhatIfRangeScenarioProperty
      {haddock_workaround_ = (), endDate = endDate,
       startDate = startDate, value = value}
instance ToResourceProperties WhatIfRangeScenarioProperty where
  toResourceProperties WhatIfRangeScenarioProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.WhatIfRangeScenario",
         supportsTags = Prelude.False,
         properties = ["EndDate" JSON..= endDate,
                       "StartDate" JSON..= startDate, "Value" JSON..= value]}
instance JSON.ToJSON WhatIfRangeScenarioProperty where
  toJSON WhatIfRangeScenarioProperty {..}
    = JSON.object
        ["EndDate" JSON..= endDate, "StartDate" JSON..= startDate,
         "Value" JSON..= value]
instance Property "EndDate" WhatIfRangeScenarioProperty where
  type PropertyType "EndDate" WhatIfRangeScenarioProperty = Value Prelude.Text
  set newValue WhatIfRangeScenarioProperty {..}
    = WhatIfRangeScenarioProperty {endDate = newValue, ..}
instance Property "StartDate" WhatIfRangeScenarioProperty where
  type PropertyType "StartDate" WhatIfRangeScenarioProperty = Value Prelude.Text
  set newValue WhatIfRangeScenarioProperty {..}
    = WhatIfRangeScenarioProperty {startDate = newValue, ..}
instance Property "Value" WhatIfRangeScenarioProperty where
  type PropertyType "Value" WhatIfRangeScenarioProperty = Value Prelude.Double
  set newValue WhatIfRangeScenarioProperty {..}
    = WhatIfRangeScenarioProperty {value = newValue, ..}