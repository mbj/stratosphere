module Stratosphere.Connect.View (
        View(..), mkView
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data View
  = View {actions :: (ValueList Prelude.Text),
          description :: (Prelude.Maybe (Value Prelude.Text)),
          instanceArn :: (Value Prelude.Text),
          name :: (Value Prelude.Text),
          tags :: (Prelude.Maybe [Tag]),
          template :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkView ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> JSON.Object -> View
mkView actions instanceArn name template
  = View
      {actions = actions, instanceArn = instanceArn, name = name,
       template = template, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties View where
  toResourceProperties View {..}
    = ResourceProperties
        {awsType = "AWS::Connect::View", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "InstanceArn" JSON..= instanceArn,
                            "Name" JSON..= name, "Template" JSON..= template]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON View where
  toJSON View {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "InstanceArn" JSON..= instanceArn,
               "Name" JSON..= name, "Template" JSON..= template]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Actions" View where
  type PropertyType "Actions" View = ValueList Prelude.Text
  set newValue View {..} = View {actions = newValue, ..}
instance Property "Description" View where
  type PropertyType "Description" View = Value Prelude.Text
  set newValue View {..}
    = View {description = Prelude.pure newValue, ..}
instance Property "InstanceArn" View where
  type PropertyType "InstanceArn" View = Value Prelude.Text
  set newValue View {..} = View {instanceArn = newValue, ..}
instance Property "Name" View where
  type PropertyType "Name" View = Value Prelude.Text
  set newValue View {..} = View {name = newValue, ..}
instance Property "Tags" View where
  type PropertyType "Tags" View = [Tag]
  set newValue View {..} = View {tags = Prelude.pure newValue, ..}
instance Property "Template" View where
  type PropertyType "Template" View = JSON.Object
  set newValue View {..} = View {template = newValue, ..}