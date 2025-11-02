module Stratosphere.Pipes.Pipe.PlacementStrategyProperty (
        PlacementStrategyProperty(..), mkPlacementStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-placementstrategy.html>
    PlacementStrategyProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-placementstrategy.html#cfn-pipes-pipe-placementstrategy-field>
                               field :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-placementstrategy.html#cfn-pipes-pipe-placementstrategy-type>
                               type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementStrategyProperty :: PlacementStrategyProperty
mkPlacementStrategyProperty
  = PlacementStrategyProperty
      {haddock_workaround_ = (), field = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties PlacementStrategyProperty where
  toResourceProperties PlacementStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PlacementStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Field" Prelude.<$> field,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON PlacementStrategyProperty where
  toJSON PlacementStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Field" Prelude.<$> field,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Field" PlacementStrategyProperty where
  type PropertyType "Field" PlacementStrategyProperty = Value Prelude.Text
  set newValue PlacementStrategyProperty {..}
    = PlacementStrategyProperty {field = Prelude.pure newValue, ..}
instance Property "Type" PlacementStrategyProperty where
  type PropertyType "Type" PlacementStrategyProperty = Value Prelude.Text
  set newValue PlacementStrategyProperty {..}
    = PlacementStrategyProperty {type' = Prelude.pure newValue, ..}