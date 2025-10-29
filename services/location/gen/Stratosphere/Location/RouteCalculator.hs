module Stratosphere.Location.RouteCalculator (
        RouteCalculator(..), mkRouteCalculator
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RouteCalculator
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-routecalculator.html>
    RouteCalculator {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-routecalculator.html#cfn-location-routecalculator-calculatorname>
                     calculatorName :: (Value Prelude.Text),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-routecalculator.html#cfn-location-routecalculator-datasource>
                     dataSource :: (Value Prelude.Text),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-routecalculator.html#cfn-location-routecalculator-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-routecalculator.html#cfn-location-routecalculator-pricingplan>
                     pricingPlan :: (Prelude.Maybe (Value Prelude.Text)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-routecalculator.html#cfn-location-routecalculator-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteCalculator ::
  Value Prelude.Text -> Value Prelude.Text -> RouteCalculator
mkRouteCalculator calculatorName dataSource
  = RouteCalculator
      {calculatorName = calculatorName, dataSource = dataSource,
       description = Prelude.Nothing, pricingPlan = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties RouteCalculator where
  toResourceProperties RouteCalculator {..}
    = ResourceProperties
        {awsType = "AWS::Location::RouteCalculator",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CalculatorName" JSON..= calculatorName,
                            "DataSource" JSON..= dataSource]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RouteCalculator where
  toJSON RouteCalculator {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CalculatorName" JSON..= calculatorName,
               "DataSource" JSON..= dataSource]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
instance Property "Tags" RouteCalculator where
  type PropertyType "Tags" RouteCalculator = [Tag]
  set newValue RouteCalculator {..}
    = RouteCalculator {tags = Prelude.pure newValue, ..}