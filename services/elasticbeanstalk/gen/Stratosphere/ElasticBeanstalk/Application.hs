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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-application.html>
    Application {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-application.html#cfn-elasticbeanstalk-application-applicationname>
                 applicationName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-application.html#cfn-elasticbeanstalk-application-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-application.html#cfn-elasticbeanstalk-application-resourcelifecycleconfig>
                 resourceLifecycleConfig :: (Prelude.Maybe ApplicationResourceLifecycleConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication :: Application
mkApplication
  = Application
      {haddock_workaround_ = (), applicationName = Prelude.Nothing,
       description = Prelude.Nothing,
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