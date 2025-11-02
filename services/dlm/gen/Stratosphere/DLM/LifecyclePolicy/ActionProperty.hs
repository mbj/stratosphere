module Stratosphere.DLM.LifecyclePolicy.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-action.html#cfn-dlm-lifecyclepolicy-action-crossregioncopy>
                    crossRegionCopy :: [CrossRegionCopyActionProperty],
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-action.html#cfn-dlm-lifecyclepolicy-action-name>
                    name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty ::
  [CrossRegionCopyActionProperty]
  -> Value Prelude.Text -> ActionProperty
mkActionProperty crossRegionCopy name
  = ActionProperty
      {haddock_workaround_ = (), crossRegionCopy = crossRegionCopy,
       name = name}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.Action",
         supportsTags = Prelude.False,
         properties = ["CrossRegionCopy" JSON..= crossRegionCopy,
                       "Name" JSON..= name]}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        ["CrossRegionCopy" JSON..= crossRegionCopy, "Name" JSON..= name]
instance Property "CrossRegionCopy" ActionProperty where
  type PropertyType "CrossRegionCopy" ActionProperty = [CrossRegionCopyActionProperty]
  set newValue ActionProperty {..}
    = ActionProperty {crossRegionCopy = newValue, ..}
instance Property "Name" ActionProperty where
  type PropertyType "Name" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty {name = newValue, ..}