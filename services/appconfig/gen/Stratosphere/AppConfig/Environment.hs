module Stratosphere.AppConfig.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppConfig.Environment.MonitorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Environment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html>
    Environment {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-applicationid>
                 applicationId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-deletionprotectioncheck>
                 deletionProtectionCheck :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-monitors>
                 monitors :: (Prelude.Maybe [MonitorProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment ::
  Value Prelude.Text -> Value Prelude.Text -> Environment
mkEnvironment applicationId name
  = Environment
      {haddock_workaround_ = (), applicationId = applicationId,
       name = name, deletionProtectionCheck = Prelude.Nothing,
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
                              [(JSON..=) "DeletionProtectionCheck"
                                 Prelude.<$> deletionProtectionCheck,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Monitors" Prelude.<$> monitors,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DeletionProtectionCheck"
                    Prelude.<$> deletionProtectionCheck,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Monitors" Prelude.<$> monitors,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationId" Environment where
  type PropertyType "ApplicationId" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {applicationId = newValue, ..}
instance Property "DeletionProtectionCheck" Environment where
  type PropertyType "DeletionProtectionCheck" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {deletionProtectionCheck = Prelude.pure newValue, ..}
instance Property "Description" Environment where
  type PropertyType "Description" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {description = Prelude.pure newValue, ..}
instance Property "Monitors" Environment where
  type PropertyType "Monitors" Environment = [MonitorProperty]
  set newValue Environment {..}
    = Environment {monitors = Prelude.pure newValue, ..}
instance Property "Name" Environment where
  type PropertyType "Name" Environment = Value Prelude.Text
  set newValue Environment {..} = Environment {name = newValue, ..}
instance Property "Tags" Environment where
  type PropertyType "Tags" Environment = [Tag]
  set newValue Environment {..}
    = Environment {tags = Prelude.pure newValue, ..}