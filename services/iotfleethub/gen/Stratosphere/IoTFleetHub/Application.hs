module Stratosphere.IoTFleetHub.Application (
        Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = Application {applicationDescription :: (Prelude.Maybe (Value Prelude.Text)),
                 applicationName :: (Value Prelude.Text),
                 roleArn :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication ::
  Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication applicationName roleArn
  = Application
      {applicationName = applicationName, roleArn = roleArn,
       applicationDescription = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetHub::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationName" JSON..= applicationName,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationDescription"
                                 Prelude.<$> applicationDescription,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationName" JSON..= applicationName,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationDescription"
                    Prelude.<$> applicationDescription,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationDescription" Application where
  type PropertyType "ApplicationDescription" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationDescription = Prelude.pure newValue, ..}
instance Property "ApplicationName" Application where
  type PropertyType "ApplicationName" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationName = newValue, ..}
instance Property "RoleArn" Application where
  type PropertyType "RoleArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {roleArn = newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}