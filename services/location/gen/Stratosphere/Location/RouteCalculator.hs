module Stratosphere.Location.RouteCalculator (
        RouteCalculator(..), mkRouteCalculator
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteCalculator
  = RouteCalculator {calculatorName :: (Value Prelude.Text),
                     dataSource :: (Value Prelude.Text),
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     pricingPlan :: (Prelude.Maybe (Value Prelude.Text))}
mkRouteCalculator ::
  Value Prelude.Text -> Value Prelude.Text -> RouteCalculator
mkRouteCalculator calculatorName dataSource
  = RouteCalculator
      {calculatorName = calculatorName, dataSource = dataSource,
       description = Prelude.Nothing, pricingPlan = Prelude.Nothing}
instance ToResourceProperties RouteCalculator where
  toResourceProperties RouteCalculator {..}
    = ResourceProperties
        {awsType = "AWS::Location::RouteCalculator",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CalculatorName" JSON..= calculatorName,
                            "DataSource" JSON..= dataSource]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PricingPlan" Prelude.<$> pricingPlan]))}
instance JSON.ToJSON RouteCalculator where
  toJSON RouteCalculator {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CalculatorName" JSON..= calculatorName,
               "DataSource" JSON..= dataSource]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PricingPlan" Prelude.<$> pricingPlan])))
instance Property "CalculatorName" RouteCalculator where
  type PropertyType "CalculatorName" RouteCalculator = Value Prelude.Text
  set newValue RouteCalculator {..}
    = RouteCalculator {calculatorName = newValue, ..}
instance Property "DataSource" RouteCalculator where
  type PropertyType "DataSource" RouteCalculator = Value Prelude.Text
  set newValue RouteCalculator {..}
    = RouteCalculator {dataSource = newValue, ..}
instance Property "Description" RouteCalculator where
  type PropertyType "Description" RouteCalculator = Value Prelude.Text
  set newValue RouteCalculator {..}
    = RouteCalculator {description = Prelude.pure newValue, ..}
instance Property "PricingPlan" RouteCalculator where
  type PropertyType "PricingPlan" RouteCalculator = Value Prelude.Text
  set newValue RouteCalculator {..}
    = RouteCalculator {pricingPlan = Prelude.pure newValue, ..}