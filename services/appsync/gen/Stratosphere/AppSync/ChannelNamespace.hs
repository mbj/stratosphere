module Stratosphere.AppSync.ChannelNamespace (
        module Exports, ChannelNamespace(..), mkChannelNamespace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.ChannelNamespace.AuthModeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ChannelNamespace
  = ChannelNamespace {apiId :: (Value Prelude.Text),
                      codeHandlers :: (Prelude.Maybe (Value Prelude.Text)),
                      codeS3Location :: (Prelude.Maybe (Value Prelude.Text)),
                      name :: (Value Prelude.Text),
                      publishAuthModes :: (Prelude.Maybe [AuthModeProperty]),
                      subscribeAuthModes :: (Prelude.Maybe [AuthModeProperty]),
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelNamespace ::
  Value Prelude.Text -> Value Prelude.Text -> ChannelNamespace
mkChannelNamespace apiId name
  = ChannelNamespace
      {apiId = apiId, name = name, codeHandlers = Prelude.Nothing,
       codeS3Location = Prelude.Nothing,
       publishAuthModes = Prelude.Nothing,
       subscribeAuthModes = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ChannelNamespace where
  toResourceProperties ChannelNamespace {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::ChannelNamespace",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeHandlers" Prelude.<$> codeHandlers,
                               (JSON..=) "CodeS3Location" Prelude.<$> codeS3Location,
                               (JSON..=) "PublishAuthModes" Prelude.<$> publishAuthModes,
                               (JSON..=) "SubscribeAuthModes" Prelude.<$> subscribeAuthModes,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ChannelNamespace where
  toJSON ChannelNamespace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CodeHandlers" Prelude.<$> codeHandlers,
                  (JSON..=) "CodeS3Location" Prelude.<$> codeS3Location,
                  (JSON..=) "PublishAuthModes" Prelude.<$> publishAuthModes,
                  (JSON..=) "SubscribeAuthModes" Prelude.<$> subscribeAuthModes,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApiId" ChannelNamespace where
  type PropertyType "ApiId" ChannelNamespace = Value Prelude.Text
  set newValue ChannelNamespace {..}
    = ChannelNamespace {apiId = newValue, ..}
instance Property "CodeHandlers" ChannelNamespace where
  type PropertyType "CodeHandlers" ChannelNamespace = Value Prelude.Text
  set newValue ChannelNamespace {..}
    = ChannelNamespace {codeHandlers = Prelude.pure newValue, ..}
instance Property "CodeS3Location" ChannelNamespace where
  type PropertyType "CodeS3Location" ChannelNamespace = Value Prelude.Text
  set newValue ChannelNamespace {..}
    = ChannelNamespace {codeS3Location = Prelude.pure newValue, ..}
instance Property "Name" ChannelNamespace where
  type PropertyType "Name" ChannelNamespace = Value Prelude.Text
  set newValue ChannelNamespace {..}
    = ChannelNamespace {name = newValue, ..}
instance Property "PublishAuthModes" ChannelNamespace where
  type PropertyType "PublishAuthModes" ChannelNamespace = [AuthModeProperty]
  set newValue ChannelNamespace {..}
    = ChannelNamespace {publishAuthModes = Prelude.pure newValue, ..}
instance Property "SubscribeAuthModes" ChannelNamespace where
  type PropertyType "SubscribeAuthModes" ChannelNamespace = [AuthModeProperty]
  set newValue ChannelNamespace {..}
    = ChannelNamespace {subscribeAuthModes = Prelude.pure newValue, ..}
instance Property "Tags" ChannelNamespace where
  type PropertyType "Tags" ChannelNamespace = [Tag]
  set newValue ChannelNamespace {..}
    = ChannelNamespace {tags = Prelude.pure newValue, ..}