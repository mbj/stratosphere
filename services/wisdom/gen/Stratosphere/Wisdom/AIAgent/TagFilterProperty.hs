module Stratosphere.Wisdom.AIAgent.TagFilterProperty (
        module Exports, TagFilterProperty(..), mkTagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.OrConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.TagConditionProperty as Exports
import Stratosphere.ResourceProperties
data TagFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-tagfilter.html>
    TagFilterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-tagfilter.html#cfn-wisdom-aiagent-tagfilter-andconditions>
                       andConditions :: (Prelude.Maybe [TagConditionProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-tagfilter.html#cfn-wisdom-aiagent-tagfilter-orconditions>
                       orConditions :: (Prelude.Maybe [OrConditionProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-tagfilter.html#cfn-wisdom-aiagent-tagfilter-tagcondition>
                       tagCondition :: (Prelude.Maybe TagConditionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagFilterProperty :: TagFilterProperty
mkTagFilterProperty
  = TagFilterProperty
      {haddock_workaround_ = (), andConditions = Prelude.Nothing,
       orConditions = Prelude.Nothing, tagCondition = Prelude.Nothing}
instance ToResourceProperties TagFilterProperty where
  toResourceProperties TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.TagFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AndConditions" Prelude.<$> andConditions,
                            (JSON..=) "OrConditions" Prelude.<$> orConditions,
                            (JSON..=) "TagCondition" Prelude.<$> tagCondition])}
instance JSON.ToJSON TagFilterProperty where
  toJSON TagFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AndConditions" Prelude.<$> andConditions,
               (JSON..=) "OrConditions" Prelude.<$> orConditions,
               (JSON..=) "TagCondition" Prelude.<$> tagCondition]))
instance Property "AndConditions" TagFilterProperty where
  type PropertyType "AndConditions" TagFilterProperty = [TagConditionProperty]
  set newValue TagFilterProperty {..}
    = TagFilterProperty {andConditions = Prelude.pure newValue, ..}
instance Property "OrConditions" TagFilterProperty where
  type PropertyType "OrConditions" TagFilterProperty = [OrConditionProperty]
  set newValue TagFilterProperty {..}
    = TagFilterProperty {orConditions = Prelude.pure newValue, ..}
instance Property "TagCondition" TagFilterProperty where
  type PropertyType "TagCondition" TagFilterProperty = TagConditionProperty
  set newValue TagFilterProperty {..}
    = TagFilterProperty {tagCondition = Prelude.pure newValue, ..}