module Stratosphere.AppSync.Api (
        module Exports, Api(..), mkApi
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.Api.EventConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Api
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-api.html>
    Api {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-api.html#cfn-appsync-api-eventconfig>
         eventConfig :: (Prelude.Maybe EventConfigProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-api.html#cfn-appsync-api-name>
         name :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-api.html#cfn-appsync-api-ownercontact>
         ownerContact :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-api.html#cfn-appsync-api-tags>
         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApi :: Value Prelude.Text -> Api
mkApi name
  = Api
      {haddock_workaround_ = (), name = name,
       eventConfig = Prelude.Nothing, ownerContact = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Api where
  toResourceProperties Api {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Api", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "EventConfig" Prelude.<$> eventConfig,
                               (JSON..=) "OwnerContact" Prelude.<$> ownerContact,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Api where
  toJSON Api {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "EventConfig" Prelude.<$> eventConfig,
                  (JSON..=) "OwnerContact" Prelude.<$> ownerContact,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EventConfig" Api where
  type PropertyType "EventConfig" Api = EventConfigProperty
  set newValue Api {..}
    = Api {eventConfig = Prelude.pure newValue, ..}
instance Property "Name" Api where
  type PropertyType "Name" Api = Value Prelude.Text
  set newValue Api {..} = Api {name = newValue, ..}
instance Property "OwnerContact" Api where
  type PropertyType "OwnerContact" Api = Value Prelude.Text
  set newValue Api {..}
    = Api {ownerContact = Prelude.pure newValue, ..}
instance Property "Tags" Api where
  type PropertyType "Tags" Api = [Tag]
  set newValue Api {..} = Api {tags = Prelude.pure newValue, ..}