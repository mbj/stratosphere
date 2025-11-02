module Stratosphere.AmplifyUIBuilder.Form.FieldPositionProperty (
        FieldPositionProperty(..), mkFieldPositionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldPositionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldposition.html>
    FieldPositionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldposition.html#cfn-amplifyuibuilder-form-fieldposition-below>
                           below :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldposition.html#cfn-amplifyuibuilder-form-fieldposition-fixed>
                           fixed :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldposition.html#cfn-amplifyuibuilder-form-fieldposition-rightof>
                           rightOf :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldPositionProperty :: FieldPositionProperty
mkFieldPositionProperty
  = FieldPositionProperty
      {haddock_workaround_ = (), below = Prelude.Nothing,
       fixed = Prelude.Nothing, rightOf = Prelude.Nothing}
instance ToResourceProperties FieldPositionProperty where
  toResourceProperties FieldPositionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FieldPosition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Below" Prelude.<$> below,
                            (JSON..=) "Fixed" Prelude.<$> fixed,
                            (JSON..=) "RightOf" Prelude.<$> rightOf])}
instance JSON.ToJSON FieldPositionProperty where
  toJSON FieldPositionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Below" Prelude.<$> below,
               (JSON..=) "Fixed" Prelude.<$> fixed,
               (JSON..=) "RightOf" Prelude.<$> rightOf]))
instance Property "Below" FieldPositionProperty where
  type PropertyType "Below" FieldPositionProperty = Value Prelude.Text
  set newValue FieldPositionProperty {..}
    = FieldPositionProperty {below = Prelude.pure newValue, ..}
instance Property "Fixed" FieldPositionProperty where
  type PropertyType "Fixed" FieldPositionProperty = Value Prelude.Text
  set newValue FieldPositionProperty {..}
    = FieldPositionProperty {fixed = Prelude.pure newValue, ..}
instance Property "RightOf" FieldPositionProperty where
  type PropertyType "RightOf" FieldPositionProperty = Value Prelude.Text
  set newValue FieldPositionProperty {..}
    = FieldPositionProperty {rightOf = Prelude.pure newValue, ..}