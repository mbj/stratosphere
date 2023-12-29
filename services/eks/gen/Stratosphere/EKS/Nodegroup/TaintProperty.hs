module Stratosphere.EKS.Nodegroup.TaintProperty (
        TaintProperty(..), mkTaintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaintProperty
  = TaintProperty {effect :: (Prelude.Maybe (Value Prelude.Text)),
                   key :: (Prelude.Maybe (Value Prelude.Text)),
                   value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaintProperty :: TaintProperty
mkTaintProperty
  = TaintProperty
      {effect = Prelude.Nothing, key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties TaintProperty where
  toResourceProperties TaintProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Nodegroup.Taint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Effect" Prelude.<$> effect,
                            (JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON TaintProperty where
  toJSON TaintProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Effect" Prelude.<$> effect,
               (JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Effect" TaintProperty where
  type PropertyType "Effect" TaintProperty = Value Prelude.Text
  set newValue TaintProperty {..}
    = TaintProperty {effect = Prelude.pure newValue, ..}
instance Property "Key" TaintProperty where
  type PropertyType "Key" TaintProperty = Value Prelude.Text
  set newValue TaintProperty {..}
    = TaintProperty {key = Prelude.pure newValue, ..}
instance Property "Value" TaintProperty where
  type PropertyType "Value" TaintProperty = Value Prelude.Text
  set newValue TaintProperty {..}
    = TaintProperty {value = Prelude.pure newValue, ..}