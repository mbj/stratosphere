module Stratosphere.DataSync.LocationObjectStorage (
        LocationObjectStorage(..), mkLocationObjectStorage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationObjectStorage
  = LocationObjectStorage {accessKey :: (Prelude.Maybe (Value Prelude.Text)),
                           agentArns :: (ValueList (Value Prelude.Text)),
                           bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                           secretKey :: (Prelude.Maybe (Value Prelude.Text)),
                           serverCertificate :: (Prelude.Maybe (Value Prelude.Text)),
                           serverHostname :: (Prelude.Maybe (Value Prelude.Text)),
                           serverPort :: (Prelude.Maybe (Value Prelude.Integer)),
                           serverProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                           subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                           tags :: (Prelude.Maybe [Tag])}
mkLocationObjectStorage ::
  ValueList (Value Prelude.Text) -> LocationObjectStorage
mkLocationObjectStorage agentArns
  = LocationObjectStorage
      {agentArns = agentArns, accessKey = Prelude.Nothing,
       bucketName = Prelude.Nothing, secretKey = Prelude.Nothing,
       serverCertificate = Prelude.Nothing,
       serverHostname = Prelude.Nothing, serverPort = Prelude.Nothing,
       serverProtocol = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationObjectStorage where
  toResourceProperties LocationObjectStorage {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationObjectStorage",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentArns" JSON..= agentArns]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessKey" Prelude.<$> accessKey,
                               (JSON..=) "BucketName" Prelude.<$> bucketName,
                               (JSON..=) "SecretKey" Prelude.<$> secretKey,
                               (JSON..=) "ServerCertificate" Prelude.<$> serverCertificate,
                               (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
                               (JSON..=) "ServerPort" Prelude.<$> serverPort,
                               (JSON..=) "ServerProtocol" Prelude.<$> serverProtocol,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationObjectStorage where
  toJSON LocationObjectStorage {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentArns" JSON..= agentArns]
              (Prelude.catMaybes
                 [(JSON..=) "AccessKey" Prelude.<$> accessKey,
                  (JSON..=) "BucketName" Prelude.<$> bucketName,
                  (JSON..=) "SecretKey" Prelude.<$> secretKey,
                  (JSON..=) "ServerCertificate" Prelude.<$> serverCertificate,
                  (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
                  (JSON..=) "ServerPort" Prelude.<$> serverPort,
                  (JSON..=) "ServerProtocol" Prelude.<$> serverProtocol,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessKey" LocationObjectStorage where
  type PropertyType "AccessKey" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {accessKey = Prelude.pure newValue, ..}
instance Property "AgentArns" LocationObjectStorage where
  type PropertyType "AgentArns" LocationObjectStorage = ValueList (Value Prelude.Text)
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {agentArns = newValue, ..}
instance Property "BucketName" LocationObjectStorage where
  type PropertyType "BucketName" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {bucketName = Prelude.pure newValue, ..}
instance Property "SecretKey" LocationObjectStorage where
  type PropertyType "SecretKey" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {secretKey = Prelude.pure newValue, ..}
instance Property "ServerCertificate" LocationObjectStorage where
  type PropertyType "ServerCertificate" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage
        {serverCertificate = Prelude.pure newValue, ..}
instance Property "ServerHostname" LocationObjectStorage where
  type PropertyType "ServerHostname" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage
        {serverHostname = Prelude.pure newValue, ..}
instance Property "ServerPort" LocationObjectStorage where
  type PropertyType "ServerPort" LocationObjectStorage = Value Prelude.Integer
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {serverPort = Prelude.pure newValue, ..}
instance Property "ServerProtocol" LocationObjectStorage where
  type PropertyType "ServerProtocol" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage
        {serverProtocol = Prelude.pure newValue, ..}
instance Property "Subdirectory" LocationObjectStorage where
  type PropertyType "Subdirectory" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationObjectStorage where
  type PropertyType "Tags" LocationObjectStorage = [Tag]
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {tags = Prelude.pure newValue, ..}