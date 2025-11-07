module Stratosphere.QuickSight.Analysis.EntityProperty (
        EntityProperty(..), mkEntityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EntityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-entity.html>
    EntityProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-entity.html#cfn-quicksight-analysis-entity-path>
                    path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntityProperty :: EntityProperty
mkEntityProperty
  = EntityProperty {haddock_workaround_ = (), path = Prelude.Nothing}
instance ToResourceProperties EntityProperty where
  toResourceProperties EntityProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.Entity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON EntityProperty where
  toJSON EntityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path]))
instance Property "Path" EntityProperty where
  type PropertyType "Path" EntityProperty = Value Prelude.Text
  set newValue EntityProperty {..}
    = EntityProperty {path = Prelude.pure newValue, ..}