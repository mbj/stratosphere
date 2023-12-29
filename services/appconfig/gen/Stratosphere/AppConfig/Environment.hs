module Stratosphere.AppConfig.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppConfig.Environment.MonitorsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppConfig.Environment.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Environment
  = Environment {applicationId :: (Value Prelude.Text),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 monitors :: (Prelude.Maybe [MonitorsProperty]),
                 name :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [TagsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment ::
  Value Prelude.Text -> Value Prelude.Text -> Environment
mkEnvironment applicationId name
  = Environment
      {applicationId = applicationId, name = name,
       description = Prelude.Nothing, monitors = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::Environment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Monitors" Prelude.<$> monitors,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Monitors" Prelude.<$> monitors,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationId" Environment where
  type PropertyType "ApplicationId" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {applicationId = newValue, ..}
instance Property "Description" Environment where
  type PropertyType "Description" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {description = Prelude.pure newValue, ..}
instance Property "Monitors" Environment where
  type PropertyType "Monitors" Environment = [MonitorsProperty]
  set newValue Environment {..}
    = Environment {monitors = Prelude.pure newValue, ..}
instance Property "Name" Environment where
  type PropertyType "Name" Environment = Value Prelude.Text
  set newValue Environment {..} = Environment {name = newValue, ..}
instance Property "Tags" Environment where
  type PropertyType "Tags" Environment = [TagsProperty]
  set newValue Environment {..}
    = Environment {tags = Prelude.pure newValue, ..}