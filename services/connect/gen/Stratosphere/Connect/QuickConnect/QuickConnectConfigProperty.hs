module Stratosphere.Connect.QuickConnect.QuickConnectConfigProperty (
        module Exports, QuickConnectConfigProperty(..),
        mkQuickConnectConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.QuickConnect.PhoneNumberQuickConnectConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.QuickConnect.QueueQuickConnectConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.QuickConnect.UserQuickConnectConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QuickConnectConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html>
    QuickConnectConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html#cfn-connect-quickconnect-quickconnectconfig-phoneconfig>
                                phoneConfig :: (Prelude.Maybe PhoneNumberQuickConnectConfigProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html#cfn-connect-quickconnect-quickconnectconfig-queueconfig>
                                queueConfig :: (Prelude.Maybe QueueQuickConnectConfigProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html#cfn-connect-quickconnect-quickconnectconfig-quickconnecttype>
                                quickConnectType :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html#cfn-connect-quickconnect-quickconnectconfig-userconfig>
                                userConfig :: (Prelude.Maybe UserQuickConnectConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQuickConnectConfigProperty ::
  Value Prelude.Text -> QuickConnectConfigProperty
mkQuickConnectConfigProperty quickConnectType
  = QuickConnectConfigProperty
      {haddock_workaround_ = (), quickConnectType = quickConnectType,
       phoneConfig = Prelude.Nothing, queueConfig = Prelude.Nothing,
       userConfig = Prelude.Nothing}
instance ToResourceProperties QuickConnectConfigProperty where
  toResourceProperties QuickConnectConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::QuickConnect.QuickConnectConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QuickConnectType" JSON..= quickConnectType]
                           (Prelude.catMaybes
                              [(JSON..=) "PhoneConfig" Prelude.<$> phoneConfig,
                               (JSON..=) "QueueConfig" Prelude.<$> queueConfig,
                               (JSON..=) "UserConfig" Prelude.<$> userConfig]))}
instance JSON.ToJSON QuickConnectConfigProperty where
  toJSON QuickConnectConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QuickConnectType" JSON..= quickConnectType]
              (Prelude.catMaybes
                 [(JSON..=) "PhoneConfig" Prelude.<$> phoneConfig,
                  (JSON..=) "QueueConfig" Prelude.<$> queueConfig,
                  (JSON..=) "UserConfig" Prelude.<$> userConfig])))
instance Property "PhoneConfig" QuickConnectConfigProperty where
  type PropertyType "PhoneConfig" QuickConnectConfigProperty = PhoneNumberQuickConnectConfigProperty
  set newValue QuickConnectConfigProperty {..}
    = QuickConnectConfigProperty
        {phoneConfig = Prelude.pure newValue, ..}
instance Property "QueueConfig" QuickConnectConfigProperty where
  type PropertyType "QueueConfig" QuickConnectConfigProperty = QueueQuickConnectConfigProperty
  set newValue QuickConnectConfigProperty {..}
    = QuickConnectConfigProperty
        {queueConfig = Prelude.pure newValue, ..}
instance Property "QuickConnectType" QuickConnectConfigProperty where
  type PropertyType "QuickConnectType" QuickConnectConfigProperty = Value Prelude.Text
  set newValue QuickConnectConfigProperty {..}
    = QuickConnectConfigProperty {quickConnectType = newValue, ..}
instance Property "UserConfig" QuickConnectConfigProperty where
  type PropertyType "UserConfig" QuickConnectConfigProperty = UserQuickConnectConfigProperty
  set newValue QuickConnectConfigProperty {..}
    = QuickConnectConfigProperty
        {userConfig = Prelude.pure newValue, ..}