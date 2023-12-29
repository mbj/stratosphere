module Stratosphere.VpcLattice.TargetGroup.TargetProperty (
        TargetProperty(..), mkTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetProperty
  = TargetProperty {id :: (Value Prelude.Text),
                    port :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetProperty :: Value Prelude.Text -> TargetProperty
mkTargetProperty id
  = TargetProperty {id = id, port = Prelude.Nothing}
instance ToResourceProperties TargetProperty where
  toResourceProperties TargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::TargetGroup.Target",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes [(JSON..=) "Port" Prelude.<$> port]))}
instance JSON.ToJSON TargetProperty where
  toJSON TargetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes [(JSON..=) "Port" Prelude.<$> port])))
instance Property "Id" TargetProperty where
  type PropertyType "Id" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {id = newValue, ..}
instance Property "Port" TargetProperty where
  type PropertyType "Port" TargetProperty = Value Prelude.Integer
  set newValue TargetProperty {..}
    = TargetProperty {port = Prelude.pure newValue, ..}