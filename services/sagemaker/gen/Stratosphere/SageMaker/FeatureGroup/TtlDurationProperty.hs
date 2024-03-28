module Stratosphere.SageMaker.FeatureGroup.TtlDurationProperty (
        TtlDurationProperty(..), mkTtlDurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TtlDurationProperty
  = TtlDurationProperty {unit :: (Prelude.Maybe (Value Prelude.Text)),
                         value :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTtlDurationProperty :: TtlDurationProperty
mkTtlDurationProperty
  = TtlDurationProperty
      {unit = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties TtlDurationProperty where
  toResourceProperties TtlDurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.TtlDuration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Unit" Prelude.<$> unit,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON TtlDurationProperty where
  toJSON TtlDurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Unit" Prelude.<$> unit,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Unit" TtlDurationProperty where
  type PropertyType "Unit" TtlDurationProperty = Value Prelude.Text
  set newValue TtlDurationProperty {..}
    = TtlDurationProperty {unit = Prelude.pure newValue, ..}
instance Property "Value" TtlDurationProperty where
  type PropertyType "Value" TtlDurationProperty = Value Prelude.Integer
  set newValue TtlDurationProperty {..}
    = TtlDurationProperty {value = Prelude.pure newValue, ..}