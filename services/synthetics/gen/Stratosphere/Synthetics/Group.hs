module Stratosphere.Synthetics.Group (
        Group(..), mkGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Group
  = Group {name :: (Value Prelude.Text),
           resourceArns :: (Prelude.Maybe (ValueList Prelude.Text)),
           tags :: (Prelude.Maybe [Tag])}
mkGroup :: Value Prelude.Text -> Group
mkGroup name
  = Group
      {name = name, resourceArns = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Group where
  toResourceProperties Group {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Group", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceArns" Prelude.<$> resourceArns,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Group where
  toJSON Group {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceArns" Prelude.<$> resourceArns,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Group where
  type PropertyType "Name" Group = Value Prelude.Text
  set newValue Group {..} = Group {name = newValue, ..}
instance Property "ResourceArns" Group where
  type PropertyType "ResourceArns" Group = ValueList Prelude.Text
  set newValue Group {..}
    = Group {resourceArns = Prelude.pure newValue, ..}
instance Property "Tags" Group where
  type PropertyType "Tags" Group = [Tag]
  set newValue Group {..} = Group {tags = Prelude.pure newValue, ..}