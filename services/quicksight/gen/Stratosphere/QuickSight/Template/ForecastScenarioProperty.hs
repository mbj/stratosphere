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
  = ForecastScenarioProperty {whatIfPointScenario :: (Prelude.Maybe WhatIfPointScenarioProperty),
                              whatIfRangeScenario :: (Prelude.Maybe WhatIfRangeScenarioProperty)}
mkForecastScenarioProperty :: ForecastScenarioProperty
mkForecastScenarioProperty
  = ForecastScenarioProperty
      {whatIfPointScenario = Prelude.Nothing,
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