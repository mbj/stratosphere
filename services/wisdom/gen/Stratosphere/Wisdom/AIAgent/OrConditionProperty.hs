module Stratosphere.Wisdom.AIAgent.OrConditionProperty (
        module Exports, OrConditionProperty(..), mkOrConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.TagConditionProperty as Exports
import Stratosphere.ResourceProperties
data OrConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-orcondition.html>
    OrConditionProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-orcondition.html#cfn-wisdom-aiagent-orcondition-andconditions>
                         andConditions :: (Prelude.Maybe [TagConditionProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-orcondition.html#cfn-wisdom-aiagent-orcondition-tagcondition>
                         tagCondition :: (Prelude.Maybe TagConditionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrConditionProperty :: OrConditionProperty
mkOrConditionProperty
  = OrConditionProperty
      {haddock_workaround_ = (), andConditions = Prelude.Nothing,
       tagCondition = Prelude.Nothing}
instance ToResourceProperties OrConditionProperty where
  toResourceProperties OrConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.OrCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AndConditions" Prelude.<$> andConditions,
                            (JSON..=) "TagCondition" Prelude.<$> tagCondition])}
instance JSON.ToJSON OrConditionProperty where
  toJSON OrConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AndConditions" Prelude.<$> andConditions,
               (JSON..=) "TagCondition" Prelude.<$> tagCondition]))
instance Property "AndConditions" OrConditionProperty where
  type PropertyType "AndConditions" OrConditionProperty = [TagConditionProperty]
  set newValue OrConditionProperty {..}
    = OrConditionProperty {andConditions = Prelude.pure newValue, ..}
instance Property "TagCondition" OrConditionProperty where
  type PropertyType "TagCondition" OrConditionProperty = TagConditionProperty
  set newValue OrConditionProperty {..}
    = OrConditionProperty {tagCondition = Prelude.pure newValue, ..}