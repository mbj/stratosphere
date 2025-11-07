module Stratosphere.QuickSight.Template.ForecastScenarioProperty (
        module Exports, ForecastScenarioProperty(..),
        mkForecastScenarioProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.WhatIfPointScenarioProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.WhatIfRangeScenarioProperty as Exports
import Stratosphere.ResourceProperties
data ForecastScenarioProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-forecastscenario.html>
    ForecastScenarioProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-forecastscenario.html#cfn-quicksight-template-forecastscenario-whatifpointscenario>
                              whatIfPointScenario :: (Prelude.Maybe WhatIfPointScenarioProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-forecastscenario.html#cfn-quicksight-template-forecastscenario-whatifrangescenario>
                              whatIfRangeScenario :: (Prelude.Maybe WhatIfRangeScenarioProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForecastScenarioProperty :: ForecastScenarioProperty
mkForecastScenarioProperty
  = ForecastScenarioProperty
      {haddock_workaround_ = (), whatIfPointScenario = Prelude.Nothing,
       whatIfRangeScenario = Prelude.Nothing}
instance ToResourceProperties ForecastScenarioProperty where
  toResourceProperties ForecastScenarioProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ForecastScenario",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "WhatIfPointScenario" Prelude.<$> whatIfPointScenario,
                            (JSON..=) "WhatIfRangeScenario" Prelude.<$> whatIfRangeScenario])}
instance JSON.ToJSON ForecastScenarioProperty where
  toJSON ForecastScenarioProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "WhatIfPointScenario" Prelude.<$> whatIfPointScenario,
               (JSON..=) "WhatIfRangeScenario" Prelude.<$> whatIfRangeScenario]))
instance Property "WhatIfPointScenario" ForecastScenarioProperty where
  type PropertyType "WhatIfPointScenario" ForecastScenarioProperty = WhatIfPointScenarioProperty
  set newValue ForecastScenarioProperty {..}
    = ForecastScenarioProperty
        {whatIfPointScenario = Prelude.pure newValue, ..}
instance Property "WhatIfRangeScenario" ForecastScenarioProperty where
  type PropertyType "WhatIfRangeScenario" ForecastScenarioProperty = WhatIfRangeScenarioProperty
  set newValue ForecastScenarioProperty {..}
    = ForecastScenarioProperty
        {whatIfRangeScenario = Prelude.pure newValue, ..}