module Stratosphere.BackupGateway.Hypervisor (
        Hypervisor(..), mkHypervisor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Hypervisor
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backupgateway-hypervisor.html>
    Hypervisor {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backupgateway-hypervisor.html#cfn-backupgateway-hypervisor-host>
                host :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backupgateway-hypervisor.html#cfn-backupgateway-hypervisor-kmskeyarn>
                kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backupgateway-hypervisor.html#cfn-backupgateway-hypervisor-loggrouparn>
                logGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backupgateway-hypervisor.html#cfn-backupgateway-hypervisor-name>
                name :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backupgateway-hypervisor.html#cfn-backupgateway-hypervisor-password>
                password :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backupgateway-hypervisor.html#cfn-backupgateway-hypervisor-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backupgateway-hypervisor.html#cfn-backupgateway-hypervisor-username>
                username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHypervisor :: Hypervisor
mkHypervisor
  = Hypervisor
      {haddock_workaround_ = (), host = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing, logGroupArn = Prelude.Nothing,
       name = Prelude.Nothing, password = Prelude.Nothing,
       tags = Prelude.Nothing, username = Prelude.Nothing}
instance ToResourceProperties Hypervisor where
  toResourceProperties Hypervisor {..}
    = ResourceProperties
        {awsType = "AWS::BackupGateway::Hypervisor",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Host" Prelude.<$> host,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                            (JSON..=) "LogGroupArn" Prelude.<$> logGroupArn,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON Hypervisor where
  toJSON Hypervisor {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Host" Prelude.<$> host,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
               (JSON..=) "LogGroupArn" Prelude.<$> logGroupArn,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "Host" Hypervisor where
  type PropertyType "Host" Hypervisor = Value Prelude.Text
  set newValue Hypervisor {..}
    = Hypervisor {host = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" Hypervisor where
  type PropertyType "KmsKeyArn" Hypervisor = Value Prelude.Text
  set newValue Hypervisor {..}
    = Hypervisor {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "LogGroupArn" Hypervisor where
  type PropertyType "LogGroupArn" Hypervisor = Value Prelude.Text
  set newValue Hypervisor {..}
    = Hypervisor {logGroupArn = Prelude.pure newValue, ..}
instance Property "Name" Hypervisor where
  type PropertyType "Name" Hypervisor = Value Prelude.Text
  set newValue Hypervisor {..}
    = Hypervisor {name = Prelude.pure newValue, ..}
instance Property "Password" Hypervisor where
  type PropertyType "Password" Hypervisor = Value Prelude.Text
  set newValue Hypervisor {..}
    = Hypervisor {password = Prelude.pure newValue, ..}
instance Property "Tags" Hypervisor where
  type PropertyType "Tags" Hypervisor = [Tag]
  set newValue Hypervisor {..}
    = Hypervisor {tags = Prelude.pure newValue, ..}
instance Property "Username" Hypervisor where
  type PropertyType "Username" Hypervisor = Value Prelude.Text
  set newValue Hypervisor {..}
    = Hypervisor {username = Prelude.pure newValue, ..}