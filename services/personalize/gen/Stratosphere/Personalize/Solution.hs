module Stratosphere.Personalize.Solution (
        module Exports, Solution(..), mkSolution
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Personalize.Solution.SolutionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Solution
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-solution.html>
    Solution {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-solution.html#cfn-personalize-solution-datasetgrouparn>
              datasetGroupArn :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-solution.html#cfn-personalize-solution-eventtype>
              eventType :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-solution.html#cfn-personalize-solution-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-solution.html#cfn-personalize-solution-performautoml>
              performAutoML :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-solution.html#cfn-personalize-solution-performhpo>
              performHPO :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-solution.html#cfn-personalize-solution-recipearn>
              recipeArn :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-solution.html#cfn-personalize-solution-solutionconfig>
              solutionConfig :: (Prelude.Maybe SolutionConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSolution :: Value Prelude.Text -> Value Prelude.Text -> Solution
mkSolution datasetGroupArn name
  = Solution
      {haddock_workaround_ = (), datasetGroupArn = datasetGroupArn,
       name = name, eventType = Prelude.Nothing,
       performAutoML = Prelude.Nothing, performHPO = Prelude.Nothing,
       recipeArn = Prelude.Nothing, solutionConfig = Prelude.Nothing}
instance ToResourceProperties Solution where
  toResourceProperties Solution {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatasetGroupArn" JSON..= datasetGroupArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "EventType" Prelude.<$> eventType,
                               (JSON..=) "PerformAutoML" Prelude.<$> performAutoML,
                               (JSON..=) "PerformHPO" Prelude.<$> performHPO,
                               (JSON..=) "RecipeArn" Prelude.<$> recipeArn,
                               (JSON..=) "SolutionConfig" Prelude.<$> solutionConfig]))}
instance JSON.ToJSON Solution where
  toJSON Solution {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatasetGroupArn" JSON..= datasetGroupArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "EventType" Prelude.<$> eventType,
                  (JSON..=) "PerformAutoML" Prelude.<$> performAutoML,
                  (JSON..=) "PerformHPO" Prelude.<$> performHPO,
                  (JSON..=) "RecipeArn" Prelude.<$> recipeArn,
                  (JSON..=) "SolutionConfig" Prelude.<$> solutionConfig])))
instance Property "DatasetGroupArn" Solution where
  type PropertyType "DatasetGroupArn" Solution = Value Prelude.Text
  set newValue Solution {..}
    = Solution {datasetGroupArn = newValue, ..}
instance Property "EventType" Solution where
  type PropertyType "EventType" Solution = Value Prelude.Text
  set newValue Solution {..}
    = Solution {eventType = Prelude.pure newValue, ..}
instance Property "Name" Solution where
  type PropertyType "Name" Solution = Value Prelude.Text
  set newValue Solution {..} = Solution {name = newValue, ..}
instance Property "PerformAutoML" Solution where
  type PropertyType "PerformAutoML" Solution = Value Prelude.Bool
  set newValue Solution {..}
    = Solution {performAutoML = Prelude.pure newValue, ..}
instance Property "PerformHPO" Solution where
  type PropertyType "PerformHPO" Solution = Value Prelude.Bool
  set newValue Solution {..}
    = Solution {performHPO = Prelude.pure newValue, ..}
instance Property "RecipeArn" Solution where
  type PropertyType "RecipeArn" Solution = Value Prelude.Text
  set newValue Solution {..}
    = Solution {recipeArn = Prelude.pure newValue, ..}
instance Property "SolutionConfig" Solution where
  type PropertyType "SolutionConfig" Solution = SolutionConfigProperty
  set newValue Solution {..}
    = Solution {solutionConfig = Prelude.pure newValue, ..}