module Stratosphere.ECS.Service.PlacementStrategyProperty (
        PlacementStrategyProperty(..), mkPlacementStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementStrategyProperty
  = PlacementStrategyProperty {field :: (Prelude.Maybe (Value Prelude.Text)),
                               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementStrategyProperty ::
  Value Prelude.Text -> PlacementStrategyProperty
mkPlacementStrategyProperty type'
  = PlacementStrategyProperty
      {type' = type', field = Prelude.Nothing}
instance ToResourceProperties PlacementStrategyProperty where
  toResourceProperties PlacementStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.PlacementStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Field" Prelude.<$> field]))}
instance JSON.ToJSON PlacementStrategyProperty where
  toJSON PlacementStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Field" Prelude.<$> field])))
instance Property "Field" PlacementStrategyProperty where
  type PropertyType "Field" PlacementStrategyProperty = Value Prelude.Text
  set newValue PlacementStrategyProperty {..}
    = PlacementStrategyProperty {field = Prelude.pure newValue, ..}
instance Property "Type" PlacementStrategyProperty where
  type PropertyType "Type" PlacementStrategyProperty = Value Prelude.Text
  set newValue PlacementStrategyProperty {..}
    = PlacementStrategyProperty {type' = newValue, ..}