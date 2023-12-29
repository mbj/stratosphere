module Stratosphere.QuickSight.DataSet.JoinKeyPropertiesProperty (
        JoinKeyPropertiesProperty(..), mkJoinKeyPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JoinKeyPropertiesProperty
  = JoinKeyPropertiesProperty {uniqueKey :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJoinKeyPropertiesProperty :: JoinKeyPropertiesProperty
mkJoinKeyPropertiesProperty
  = JoinKeyPropertiesProperty {uniqueKey = Prelude.Nothing}
instance ToResourceProperties JoinKeyPropertiesProperty where
  toResourceProperties JoinKeyPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.JoinKeyProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "UniqueKey" Prelude.<$> uniqueKey])}
instance JSON.ToJSON JoinKeyPropertiesProperty where
  toJSON JoinKeyPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "UniqueKey" Prelude.<$> uniqueKey]))
instance Property "UniqueKey" JoinKeyPropertiesProperty where
  type PropertyType "UniqueKey" JoinKeyPropertiesProperty = Value Prelude.Bool
  set newValue JoinKeyPropertiesProperty {}
    = JoinKeyPropertiesProperty {uniqueKey = Prelude.pure newValue, ..}