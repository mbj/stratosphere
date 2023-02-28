module Stratosphere.ElasticBeanstalk.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticBeanstalk.Application.ApplicationResourceLifecycleConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Application
  = Application {applicationName :: (Prelude.Maybe (Value Prelude.Text)),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 resourceLifecycleConfig :: (Prelude.Maybe ApplicationResourceLifecycleConfigProperty)}
mkApplication :: Application
mkApplication
  = Application
      {applicationName = Prelude.Nothing, description = Prelude.Nothing,
       resourceLifecycleConfig = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Application",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationName" Prelude.<$> applicationName,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "ResourceLifecycleConfig"
                              Prelude.<$> resourceLifecycleConfig])}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationName" Prelude.<$> applicationName,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "ResourceLifecycleConfig"
                 Prelude.<$> resourceLifecycleConfig]))
instance Property "ApplicationName" Application where
  type PropertyType "ApplicationName" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationName = Prelude.pure newValue, ..}
instance Property "Description" Application where
  type PropertyType "Description" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {description = Prelude.pure newValue, ..}
instance Property "ResourceLifecycleConfig" Application where
  type PropertyType "ResourceLifecycleConfig" Application = ApplicationResourceLifecycleConfigProperty
  set newValue Application {..}
    = Application {resourceLifecycleConfig = Prelude.pure newValue, ..}