module Stratosphere.Personalize.Solution.AutoMLConfigProperty (
        AutoMLConfigProperty(..), mkAutoMLConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoMLConfigProperty
  = AutoMLConfigProperty {metricName :: (Prelude.Maybe (Value Prelude.Text)),
                          recipeList :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkAutoMLConfigProperty :: AutoMLConfigProperty
mkAutoMLConfigProperty
  = AutoMLConfigProperty
      {metricName = Prelude.Nothing, recipeList = Prelude.Nothing}
instance ToResourceProperties AutoMLConfigProperty where
  toResourceProperties AutoMLConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.AutoMLConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "RecipeList" Prelude.<$> recipeList])}
instance JSON.ToJSON AutoMLConfigProperty where
  toJSON AutoMLConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "RecipeList" Prelude.<$> recipeList]))
instance Property "MetricName" AutoMLConfigProperty where
  type PropertyType "MetricName" AutoMLConfigProperty = Value Prelude.Text
  set newValue AutoMLConfigProperty {..}
    = AutoMLConfigProperty {metricName = Prelude.pure newValue, ..}
instance Property "RecipeList" AutoMLConfigProperty where
  type PropertyType "RecipeList" AutoMLConfigProperty = ValueList (Value Prelude.Text)
  set newValue AutoMLConfigProperty {..}
    = AutoMLConfigProperty {recipeList = Prelude.pure newValue, ..}