module Stratosphere.Cognito.UserPool.StringAttributeConstraintsProperty (
        StringAttributeConstraintsProperty(..),
        mkStringAttributeConstraintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringAttributeConstraintsProperty
  = StringAttributeConstraintsProperty {maxLength :: (Prelude.Maybe (Value Prelude.Text)),
                                        minLength :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStringAttributeConstraintsProperty ::
  StringAttributeConstraintsProperty
mkStringAttributeConstraintsProperty
  = StringAttributeConstraintsProperty
      {maxLength = Prelude.Nothing, minLength = Prelude.Nothing}
instance ToResourceProperties StringAttributeConstraintsProperty where
  toResourceProperties StringAttributeConstraintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.StringAttributeConstraints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxLength" Prelude.<$> maxLength,
                            (JSON..=) "MinLength" Prelude.<$> minLength])}
instance JSON.ToJSON StringAttributeConstraintsProperty where
  toJSON StringAttributeConstraintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxLength" Prelude.<$> maxLength,
               (JSON..=) "MinLength" Prelude.<$> minLength]))
instance Property "MaxLength" StringAttributeConstraintsProperty where
  type PropertyType "MaxLength" StringAttributeConstraintsProperty = Value Prelude.Text
  set newValue StringAttributeConstraintsProperty {..}
    = StringAttributeConstraintsProperty
        {maxLength = Prelude.pure newValue, ..}
instance Property "MinLength" StringAttributeConstraintsProperty where
  type PropertyType "MinLength" StringAttributeConstraintsProperty = Value Prelude.Text
  set newValue StringAttributeConstraintsProperty {..}
    = StringAttributeConstraintsProperty
        {minLength = Prelude.pure newValue, ..}