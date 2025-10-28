module Stratosphere.AmazonMQ.Broker.UserProperty (
        UserProperty(..), mkUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html>
    UserProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-consoleaccess>
                  consoleAccess :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-groups>
                  groups :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-password>
                  password :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-replicationuser>
                  replicationUser :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-username>
                  username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserProperty ::
  Value Prelude.Text -> Value Prelude.Text -> UserProperty
mkUserProperty password username
  = UserProperty
      {haddock_workaround_ = (), password = password,
       username = username, consoleAccess = Prelude.Nothing,
       groups = Prelude.Nothing, replicationUser = Prelude.Nothing}
instance ToResourceProperties UserProperty where
  toResourceProperties UserProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::Broker.User",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Password" JSON..= password, "Username" JSON..= username]
                           (Prelude.catMaybes
                              [(JSON..=) "ConsoleAccess" Prelude.<$> consoleAccess,
                               (JSON..=) "Groups" Prelude.<$> groups,
                               (JSON..=) "ReplicationUser" Prelude.<$> replicationUser]))}
instance JSON.ToJSON UserProperty where
  toJSON UserProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Password" JSON..= password, "Username" JSON..= username]
              (Prelude.catMaybes
                 [(JSON..=) "ConsoleAccess" Prelude.<$> consoleAccess,
                  (JSON..=) "Groups" Prelude.<$> groups,
                  (JSON..=) "ReplicationUser" Prelude.<$> replicationUser])))
instance Property "ConsoleAccess" UserProperty where
  type PropertyType "ConsoleAccess" UserProperty = Value Prelude.Bool
  set newValue UserProperty {..}
    = UserProperty {consoleAccess = Prelude.pure newValue, ..}
instance Property "Groups" UserProperty where
  type PropertyType "Groups" UserProperty = ValueList Prelude.Text
  set newValue UserProperty {..}
    = UserProperty {groups = Prelude.pure newValue, ..}
instance Property "Password" UserProperty where
  type PropertyType "Password" UserProperty = Value Prelude.Text
  set newValue UserProperty {..}
    = UserProperty {password = newValue, ..}
instance Property "ReplicationUser" UserProperty where
  type PropertyType "ReplicationUser" UserProperty = Value Prelude.Bool
  set newValue UserProperty {..}
    = UserProperty {replicationUser = Prelude.pure newValue, ..}
instance Property "Username" UserProperty where
  type PropertyType "Username" UserProperty = Value Prelude.Text
  set newValue UserProperty {..}
    = UserProperty {username = newValue, ..}