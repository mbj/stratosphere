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
  = QuickConnectConfigProperty {phoneConfig :: (Prelude.Maybe PhoneNumberQuickConnectConfigProperty),
                                queueConfig :: (Prelude.Maybe QueueQuickConnectConfigProperty),
                                quickConnectType :: (Value Prelude.Text),
                                userConfig :: (Prelude.Maybe UserQuickConnectConfigProperty)}
mkQuickConnectConfigProperty ::
  Value Prelude.Text -> QuickConnectConfigProperty
mkQuickConnectConfigProperty quickConnectType
  = QuickConnectConfigProperty
      {quickConnectType = quickConnectType,
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