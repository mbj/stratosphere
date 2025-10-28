module Stratosphere.SystemsManagerSAP.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SystemsManagerSAP.Application.CredentialProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-systemsmanagersap-application.html>
    Application {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-systemsmanagersap-application.html#cfn-systemsmanagersap-application-applicationid>
                 applicationId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-systemsmanagersap-application.html#cfn-systemsmanagersap-application-applicationtype>
                 applicationType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-systemsmanagersap-application.html#cfn-systemsmanagersap-application-credentials>
                 credentials :: (Prelude.Maybe [CredentialProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-systemsmanagersap-application.html#cfn-systemsmanagersap-application-databasearn>
                 databaseArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-systemsmanagersap-application.html#cfn-systemsmanagersap-application-instances>
                 instances :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-systemsmanagersap-application.html#cfn-systemsmanagersap-application-sapinstancenumber>
                 sapInstanceNumber :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-systemsmanagersap-application.html#cfn-systemsmanagersap-application-sid>
                 sid :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-systemsmanagersap-application.html#cfn-systemsmanagersap-application-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication ::
  Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication applicationId applicationType
  = Application
      {haddock_workaround_ = (), applicationId = applicationId,
       applicationType = applicationType, credentials = Prelude.Nothing,
       databaseArn = Prelude.Nothing, instances = Prelude.Nothing,
       sapInstanceNumber = Prelude.Nothing, sid = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::SystemsManagerSAP::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "ApplicationType" JSON..= applicationType]
                           (Prelude.catMaybes
                              [(JSON..=) "Credentials" Prelude.<$> credentials,
                               (JSON..=) "DatabaseArn" Prelude.<$> databaseArn,
                               (JSON..=) "Instances" Prelude.<$> instances,
                               (JSON..=) "SapInstanceNumber" Prelude.<$> sapInstanceNumber,
                               (JSON..=) "Sid" Prelude.<$> sid,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "ApplicationType" JSON..= applicationType]
              (Prelude.catMaybes
                 [(JSON..=) "Credentials" Prelude.<$> credentials,
                  (JSON..=) "DatabaseArn" Prelude.<$> databaseArn,
                  (JSON..=) "Instances" Prelude.<$> instances,
                  (JSON..=) "SapInstanceNumber" Prelude.<$> sapInstanceNumber,
                  (JSON..=) "Sid" Prelude.<$> sid,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationId" Application where
  type PropertyType "ApplicationId" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationId = newValue, ..}
instance Property "ApplicationType" Application where
  type PropertyType "ApplicationType" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationType = newValue, ..}
instance Property "Credentials" Application where
  type PropertyType "Credentials" Application = [CredentialProperty]
  set newValue Application {..}
    = Application {credentials = Prelude.pure newValue, ..}
instance Property "DatabaseArn" Application where
  type PropertyType "DatabaseArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {databaseArn = Prelude.pure newValue, ..}
instance Property "Instances" Application where
  type PropertyType "Instances" Application = ValueList Prelude.Text
  set newValue Application {..}
    = Application {instances = Prelude.pure newValue, ..}
instance Property "SapInstanceNumber" Application where
  type PropertyType "SapInstanceNumber" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {sapInstanceNumber = Prelude.pure newValue, ..}
instance Property "Sid" Application where
  type PropertyType "Sid" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {sid = Prelude.pure newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}