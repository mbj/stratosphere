module Stratosphere.Greengrass.Group (
        module Exports, Group(..), mkGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.Group.GroupVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Group
  = Group {initialVersion :: (Prelude.Maybe GroupVersionProperty),
           name :: (Value Prelude.Text),
           roleArn :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroup :: Value Prelude.Text -> Group
mkGroup name
  = Group
      {name = name, initialVersion = Prelude.Nothing,
       roleArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Group where
  toResourceProperties Group {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::Group", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Group where
  toJSON Group {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" Group where
  type PropertyType "InitialVersion" Group = GroupVersionProperty
  set newValue Group {..}
    = Group {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" Group where
  type PropertyType "Name" Group = Value Prelude.Text
  set newValue Group {..} = Group {name = newValue, ..}
instance Property "RoleArn" Group where
  type PropertyType "RoleArn" Group = Value Prelude.Text
  set newValue Group {..}
    = Group {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" Group where
  type PropertyType "Tags" Group = JSON.Object
  set newValue Group {..} = Group {tags = Prelude.pure newValue, ..}