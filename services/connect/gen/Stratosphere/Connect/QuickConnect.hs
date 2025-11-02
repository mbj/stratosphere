module Stratosphere.Connect.QuickConnect (
        module Exports, QuickConnect(..), mkQuickConnect
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.QuickConnect.QuickConnectConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data QuickConnect
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-quickconnect.html>
    QuickConnect {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-quickconnect.html#cfn-connect-quickconnect-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-quickconnect.html#cfn-connect-quickconnect-instancearn>
                  instanceArn :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-quickconnect.html#cfn-connect-quickconnect-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-quickconnect.html#cfn-connect-quickconnect-quickconnectconfig>
                  quickConnectConfig :: QuickConnectConfigProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-quickconnect.html#cfn-connect-quickconnect-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQuickConnect ::
  Value Prelude.Text
  -> Value Prelude.Text -> QuickConnectConfigProperty -> QuickConnect
mkQuickConnect instanceArn name quickConnectConfig
  = QuickConnect
      {haddock_workaround_ = (), instanceArn = instanceArn, name = name,
       quickConnectConfig = quickConnectConfig,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties QuickConnect where
  toResourceProperties QuickConnect {..}
    = ResourceProperties
        {awsType = "AWS::Connect::QuickConnect",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name,
                            "QuickConnectConfig" JSON..= quickConnectConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON QuickConnect where
  toJSON QuickConnect {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name,
               "QuickConnectConfig" JSON..= quickConnectConfig]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" QuickConnect where
  type PropertyType "Description" QuickConnect = Value Prelude.Text
  set newValue QuickConnect {..}
    = QuickConnect {description = Prelude.pure newValue, ..}
instance Property "InstanceArn" QuickConnect where
  type PropertyType "InstanceArn" QuickConnect = Value Prelude.Text
  set newValue QuickConnect {..}
    = QuickConnect {instanceArn = newValue, ..}
instance Property "Name" QuickConnect where
  type PropertyType "Name" QuickConnect = Value Prelude.Text
  set newValue QuickConnect {..} = QuickConnect {name = newValue, ..}
instance Property "QuickConnectConfig" QuickConnect where
  type PropertyType "QuickConnectConfig" QuickConnect = QuickConnectConfigProperty
  set newValue QuickConnect {..}
    = QuickConnect {quickConnectConfig = newValue, ..}
instance Property "Tags" QuickConnect where
  type PropertyType "Tags" QuickConnect = [Tag]
  set newValue QuickConnect {..}
    = QuickConnect {tags = Prelude.pure newValue, ..}