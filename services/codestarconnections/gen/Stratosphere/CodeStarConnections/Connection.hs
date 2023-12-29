module Stratosphere.CodeStarConnections.Connection (
        Connection(..), mkConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Connection
  = Connection {connectionName :: (Value Prelude.Text),
                hostArn :: (Prelude.Maybe (Value Prelude.Text)),
                providerType :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnection :: Value Prelude.Text -> Connection
mkConnection connectionName
  = Connection
      {connectionName = connectionName, hostArn = Prelude.Nothing,
       providerType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Connection where
  toResourceProperties Connection {..}
    = ResourceProperties
        {awsType = "AWS::CodeStarConnections::Connection",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectionName" JSON..= connectionName]
                           (Prelude.catMaybes
                              [(JSON..=) "HostArn" Prelude.<$> hostArn,
                               (JSON..=) "ProviderType" Prelude.<$> providerType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Connection where
  toJSON Connection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectionName" JSON..= connectionName]
              (Prelude.catMaybes
                 [(JSON..=) "HostArn" Prelude.<$> hostArn,
                  (JSON..=) "ProviderType" Prelude.<$> providerType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectionName" Connection where
  type PropertyType "ConnectionName" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {connectionName = newValue, ..}
instance Property "HostArn" Connection where
  type PropertyType "HostArn" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {hostArn = Prelude.pure newValue, ..}
instance Property "ProviderType" Connection where
  type PropertyType "ProviderType" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {providerType = Prelude.pure newValue, ..}
instance Property "Tags" Connection where
  type PropertyType "Tags" Connection = [Tag]
  set newValue Connection {..}
    = Connection {tags = Prelude.pure newValue, ..}