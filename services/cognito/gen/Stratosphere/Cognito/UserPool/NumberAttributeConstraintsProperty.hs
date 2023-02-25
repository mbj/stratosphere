module Stratosphere.Cognito.UserPool.NumberAttributeConstraintsProperty (
        NumberAttributeConstraintsProperty(..),
        mkNumberAttributeConstraintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumberAttributeConstraintsProperty
  = NumberAttributeConstraintsProperty {maxValue :: (Prelude.Maybe (Value Prelude.Text)),
                                        minValue :: (Prelude.Maybe (Value Prelude.Text))}
mkNumberAttributeConstraintsProperty ::
  NumberAttributeConstraintsProperty
mkNumberAttributeConstraintsProperty
  = NumberAttributeConstraintsProperty
      {maxValue = Prelude.Nothing, minValue = Prelude.Nothing}
instance ToResourceProperties NumberAttributeConstraintsProperty where
  toResourceProperties NumberAttributeConstraintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.NumberAttributeConstraints",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxValue" Prelude.<$> maxValue,
                            (JSON..=) "MinValue" Prelude.<$> minValue])}
instance JSON.ToJSON NumberAttributeConstraintsProperty where
  toJSON NumberAttributeConstraintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxValue" Prelude.<$> maxValue,
               (JSON..=) "MinValue" Prelude.<$> minValue]))
instance Property "MaxValue" NumberAttributeConstraintsProperty where
  type PropertyType "MaxValue" NumberAttributeConstraintsProperty = Value Prelude.Text
  set newValue NumberAttributeConstraintsProperty {..}
    = NumberAttributeConstraintsProperty
        {maxValue = Prelude.pure newValue, ..}
instance Property "MinValue" NumberAttributeConstraintsProperty where
  type PropertyType "MinValue" NumberAttributeConstraintsProperty = Value Prelude.Text
  set newValue NumberAttributeConstraintsProperty {..}
    = NumberAttributeConstraintsProperty
        {minValue = Prelude.pure newValue, ..}