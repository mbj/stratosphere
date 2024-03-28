module Stratosphere.AppIntegrations.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppIntegrations.Application.ApplicationSourceConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = Application {applicationSourceConfig :: ApplicationSourceConfigProperty,
                 description :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 namespace :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication ::
  ApplicationSourceConfigProperty
  -> Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication applicationSourceConfig description name
  = Application
      {applicationSourceConfig = applicationSourceConfig,
       description = description, name = name,
       namespace = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationSourceConfig" JSON..= applicationSourceConfig,
                            "Description" JSON..= description, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Namespace" Prelude.<$> namespace,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationSourceConfig" JSON..= applicationSourceConfig,
               "Description" JSON..= description, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Namespace" Prelude.<$> namespace,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationSourceConfig" Application where
  type PropertyType "ApplicationSourceConfig" Application = ApplicationSourceConfigProperty
  set newValue Application {..}
    = Application {applicationSourceConfig = newValue, ..}
instance Property "Description" Application where
  type PropertyType "Description" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {description = newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..} = Application {name = newValue, ..}
instance Property "Namespace" Application where
  type PropertyType "Namespace" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {namespace = Prelude.pure newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}