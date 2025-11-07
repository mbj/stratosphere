module Stratosphere.QuickSight.Template.PivotTableFieldCollapseStateOptionProperty (
        module Exports, PivotTableFieldCollapseStateOptionProperty(..),
        mkPivotTableFieldCollapseStateOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableFieldCollapseStateTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableFieldCollapseStateOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottablefieldcollapsestateoption.html>
    PivotTableFieldCollapseStateOptionProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottablefieldcollapsestateoption.html#cfn-quicksight-template-pivottablefieldcollapsestateoption-state>
                                                state :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottablefieldcollapsestateoption.html#cfn-quicksight-template-pivottablefieldcollapsestateoption-target>
                                                target :: PivotTableFieldCollapseStateTargetProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableFieldCollapseStateOptionProperty ::
  PivotTableFieldCollapseStateTargetProperty
  -> PivotTableFieldCollapseStateOptionProperty
mkPivotTableFieldCollapseStateOptionProperty target
  = PivotTableFieldCollapseStateOptionProperty
      {haddock_workaround_ = (), target = target,
       state = Prelude.Nothing}
instance ToResourceProperties PivotTableFieldCollapseStateOptionProperty where
  toResourceProperties
    PivotTableFieldCollapseStateOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableFieldCollapseStateOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Target" JSON..= target]
                           (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state]))}
instance JSON.ToJSON PivotTableFieldCollapseStateOptionProperty where
  toJSON PivotTableFieldCollapseStateOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Target" JSON..= target]
              (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state])))
instance Property "State" PivotTableFieldCollapseStateOptionProperty where
  type PropertyType "State" PivotTableFieldCollapseStateOptionProperty = Value Prelude.Text
  set newValue PivotTableFieldCollapseStateOptionProperty {..}
    = PivotTableFieldCollapseStateOptionProperty
        {state = Prelude.pure newValue, ..}
instance Property "Target" PivotTableFieldCollapseStateOptionProperty where
  type PropertyType "Target" PivotTableFieldCollapseStateOptionProperty = PivotTableFieldCollapseStateTargetProperty
  set newValue PivotTableFieldCollapseStateOptionProperty {..}
    = PivotTableFieldCollapseStateOptionProperty
        {target = newValue, ..}