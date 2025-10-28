module Stratosphere.Personalize.Solution.AutoMLConfigProperty (
        AutoMLConfigProperty(..), mkAutoMLConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoMLConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-automlconfig.html>
    AutoMLConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-automlconfig.html#cfn-personalize-solution-automlconfig-metricname>
                          metricName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-automlconfig.html#cfn-personalize-solution-automlconfig-recipelist>
                          recipeList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoMLConfigProperty :: AutoMLConfigProperty
mkAutoMLConfigProperty
  = AutoMLConfigProperty
      {haddock_workaround_ = (), metricName = Prelude.Nothing,
       recipeList = Prelude.Nothing}
instance ToResourceProperties AutoMLConfigProperty where
  toResourceProperties AutoMLConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.AutoMLConfig",
         supportsTags = Prelude.False,
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
  type PropertyType "RecipeList" AutoMLConfigProperty = ValueList Prelude.Text
  set newValue AutoMLConfigProperty {..}
    = AutoMLConfigProperty {recipeList = Prelude.pure newValue, ..}