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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html>
    NumberAttributeConstraintsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html#cfn-cognito-userpool-numberattributeconstraints-maxvalue>
                                        maxValue :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html#cfn-cognito-userpool-numberattributeconstraints-minvalue>
                                        minValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumberAttributeConstraintsProperty ::
  NumberAttributeConstraintsProperty
mkNumberAttributeConstraintsProperty
  = NumberAttributeConstraintsProperty
      {haddock_workaround_ = (), maxValue = Prelude.Nothing,
       minValue = Prelude.Nothing}
instance ToResourceProperties NumberAttributeConstraintsProperty where
  toResourceProperties NumberAttributeConstraintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.NumberAttributeConstraints",
         supportsTags = Prelude.False,
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