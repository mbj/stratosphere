module Stratosphere.ResourceGroups.Group (
        module Exports, Group(..), mkGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResourceGroups.Group.ConfigurationItemProperty as Exports
import {-# SOURCE #-} Stratosphere.ResourceGroups.Group.ResourceQueryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Group
  = Group {configuration :: (Prelude.Maybe [ConfigurationItemProperty]),
           description :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Value Prelude.Text),
           resourceQuery :: (Prelude.Maybe ResourceQueryProperty),
           resources :: (Prelude.Maybe (ValueList Prelude.Text)),
           tags :: (Prelude.Maybe [Tag])}
mkGroup :: Value Prelude.Text -> Group
mkGroup name
  = Group
      {name = name, configuration = Prelude.Nothing,
       description = Prelude.Nothing, resourceQuery = Prelude.Nothing,
       resources = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Group where
  toResourceProperties Group {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::Group",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ResourceQuery" Prelude.<$> resourceQuery,
                               (JSON..=) "Resources" Prelude.<$> resources,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Group where
  toJSON Group {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ResourceQuery" Prelude.<$> resourceQuery,
                  (JSON..=) "Resources" Prelude.<$> resources,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Configuration" Group where
  type PropertyType "Configuration" Group = [ConfigurationItemProperty]
  set newValue Group {..}
    = Group {configuration = Prelude.pure newValue, ..}
instance Property "Description" Group where
  type PropertyType "Description" Group = Value Prelude.Text
  set newValue Group {..}
    = Group {description = Prelude.pure newValue, ..}
instance Property "Name" Group where
  type PropertyType "Name" Group = Value Prelude.Text
  set newValue Group {..} = Group {name = newValue, ..}
instance Property "ResourceQuery" Group where
  type PropertyType "ResourceQuery" Group = ResourceQueryProperty
  set newValue Group {..}
    = Group {resourceQuery = Prelude.pure newValue, ..}
instance Property "Resources" Group where
  type PropertyType "Resources" Group = ValueList Prelude.Text
  set newValue Group {..}
    = Group {resources = Prelude.pure newValue, ..}
instance Property "Tags" Group where
  type PropertyType "Tags" Group = [Tag]
  set newValue Group {..} = Group {tags = Prelude.pure newValue, ..}