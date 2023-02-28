module Stratosphere.ServiceCatalogAppRegistry.Application (
        Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Application
  = Application {description :: (Prelude.Maybe (Value Prelude.Text)),
                 name :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkApplication :: Value Prelude.Text -> Application
mkApplication name
  = Application
      {name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalogAppRegistry::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Application where
  type PropertyType "Description" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {description = Prelude.pure newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..} = Application {name = newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}