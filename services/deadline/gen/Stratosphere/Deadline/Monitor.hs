module Stratosphere.Deadline.Monitor (
        Monitor(..), mkMonitor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Monitor
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-monitor.html>
    Monitor {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-monitor.html#cfn-deadline-monitor-displayname>
             displayName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-monitor.html#cfn-deadline-monitor-identitycenterinstancearn>
             identityCenterInstanceArn :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-monitor.html#cfn-deadline-monitor-rolearn>
             roleArn :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-monitor.html#cfn-deadline-monitor-subdomain>
             subdomain :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-monitor.html#cfn-deadline-monitor-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitor ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Monitor
mkMonitor displayName identityCenterInstanceArn roleArn subdomain
  = Monitor
      {haddock_workaround_ = (), displayName = displayName,
       identityCenterInstanceArn = identityCenterInstanceArn,
       roleArn = roleArn, subdomain = subdomain, tags = Prelude.Nothing}
instance ToResourceProperties Monitor where
  toResourceProperties Monitor {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Monitor", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DisplayName" JSON..= displayName,
                            "IdentityCenterInstanceArn" JSON..= identityCenterInstanceArn,
                            "RoleArn" JSON..= roleArn, "Subdomain" JSON..= subdomain]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Monitor where
  toJSON Monitor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DisplayName" JSON..= displayName,
               "IdentityCenterInstanceArn" JSON..= identityCenterInstanceArn,
               "RoleArn" JSON..= roleArn, "Subdomain" JSON..= subdomain]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DisplayName" Monitor where
  type PropertyType "DisplayName" Monitor = Value Prelude.Text
  set newValue Monitor {..} = Monitor {displayName = newValue, ..}
instance Property "IdentityCenterInstanceArn" Monitor where
  type PropertyType "IdentityCenterInstanceArn" Monitor = Value Prelude.Text
  set newValue Monitor {..}
    = Monitor {identityCenterInstanceArn = newValue, ..}
instance Property "RoleArn" Monitor where
  type PropertyType "RoleArn" Monitor = Value Prelude.Text
  set newValue Monitor {..} = Monitor {roleArn = newValue, ..}
instance Property "Subdomain" Monitor where
  type PropertyType "Subdomain" Monitor = Value Prelude.Text
  set newValue Monitor {..} = Monitor {subdomain = newValue, ..}
instance Property "Tags" Monitor where
  type PropertyType "Tags" Monitor = [Tag]
  set newValue Monitor {..}
    = Monitor {tags = Prelude.pure newValue, ..}