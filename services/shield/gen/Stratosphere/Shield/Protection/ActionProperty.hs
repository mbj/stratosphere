module Stratosphere.Shield.Protection.ActionProperty (
        ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-protection-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-protection-action.html#cfn-shield-protection-action-block>
                    block :: (Prelude.Maybe JSON.Object),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-protection-action.html#cfn-shield-protection-action-count>
                    count :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty
      {haddock_workaround_ = (), block = Prelude.Nothing,
       count = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Shield::Protection.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Block" Prelude.<$> block,
                            (JSON..=) "Count" Prelude.<$> count])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Block" Prelude.<$> block,
               (JSON..=) "Count" Prelude.<$> count]))
instance Property "Block" ActionProperty where
  type PropertyType "Block" ActionProperty = JSON.Object
  set newValue ActionProperty {..}
    = ActionProperty {block = Prelude.pure newValue, ..}
instance Property "Count" ActionProperty where
  type PropertyType "Count" ActionProperty = JSON.Object
  set newValue ActionProperty {..}
    = ActionProperty {count = Prelude.pure newValue, ..}