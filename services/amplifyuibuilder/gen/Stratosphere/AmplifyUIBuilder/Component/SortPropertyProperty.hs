module Stratosphere.AmplifyUIBuilder.Component.SortPropertyProperty (
        SortPropertyProperty(..), mkSortPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SortPropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-sortproperty.html>
    SortPropertyProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-sortproperty.html#cfn-amplifyuibuilder-component-sortproperty-direction>
                          direction :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-sortproperty.html#cfn-amplifyuibuilder-component-sortproperty-field>
                          field :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSortPropertyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SortPropertyProperty
mkSortPropertyProperty direction field
  = SortPropertyProperty
      {haddock_workaround_ = (), direction = direction, field = field}
instance ToResourceProperties SortPropertyProperty where
  toResourceProperties SortPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.SortProperty",
         supportsTags = Prelude.False,
         properties = ["Direction" JSON..= direction,
                       "Field" JSON..= field]}
instance JSON.ToJSON SortPropertyProperty where
  toJSON SortPropertyProperty {..}
    = JSON.object
        ["Direction" JSON..= direction, "Field" JSON..= field]
instance Property "Direction" SortPropertyProperty where
  type PropertyType "Direction" SortPropertyProperty = Value Prelude.Text
  set newValue SortPropertyProperty {..}
    = SortPropertyProperty {direction = newValue, ..}
instance Property "Field" SortPropertyProperty where
  type PropertyType "Field" SortPropertyProperty = Value Prelude.Text
  set newValue SortPropertyProperty {..}
    = SortPropertyProperty {field = newValue, ..}