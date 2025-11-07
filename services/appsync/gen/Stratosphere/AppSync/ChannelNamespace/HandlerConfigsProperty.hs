module Stratosphere.AppSync.ChannelNamespace.HandlerConfigsProperty (
        module Exports, HandlerConfigsProperty(..),
        mkHandlerConfigsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.ChannelNamespace.HandlerConfigProperty as Exports
import Stratosphere.ResourceProperties
data HandlerConfigsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-handlerconfigs.html>
    HandlerConfigsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-handlerconfigs.html#cfn-appsync-channelnamespace-handlerconfigs-onpublish>
                            onPublish :: (Prelude.Maybe HandlerConfigProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-handlerconfigs.html#cfn-appsync-channelnamespace-handlerconfigs-onsubscribe>
                            onSubscribe :: (Prelude.Maybe HandlerConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHandlerConfigsProperty :: HandlerConfigsProperty
mkHandlerConfigsProperty
  = HandlerConfigsProperty
      {haddock_workaround_ = (), onPublish = Prelude.Nothing,
       onSubscribe = Prelude.Nothing}
instance ToResourceProperties HandlerConfigsProperty where
  toResourceProperties HandlerConfigsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::ChannelNamespace.HandlerConfigs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnPublish" Prelude.<$> onPublish,
                            (JSON..=) "OnSubscribe" Prelude.<$> onSubscribe])}
instance JSON.ToJSON HandlerConfigsProperty where
  toJSON HandlerConfigsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnPublish" Prelude.<$> onPublish,
               (JSON..=) "OnSubscribe" Prelude.<$> onSubscribe]))
instance Property "OnPublish" HandlerConfigsProperty where
  type PropertyType "OnPublish" HandlerConfigsProperty = HandlerConfigProperty
  set newValue HandlerConfigsProperty {..}
    = HandlerConfigsProperty {onPublish = Prelude.pure newValue, ..}
instance Property "OnSubscribe" HandlerConfigsProperty where
  type PropertyType "OnSubscribe" HandlerConfigsProperty = HandlerConfigProperty
  set newValue HandlerConfigsProperty {..}
    = HandlerConfigsProperty {onSubscribe = Prelude.pure newValue, ..}