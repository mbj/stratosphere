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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html>
    LocationObjectStorage {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-accesskey>
                           accessKey :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-agentarns>
                           agentArns :: (ValueList Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-bucketname>
                           bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-secretkey>
                           secretKey :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-servercertificate>
                           serverCertificate :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-serverhostname>
                           serverHostname :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-serverport>
                           serverPort :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-serverprotocol>
                           serverProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-subdirectory>
                           subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-tags>
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationObjectStorage ::
  ValueList Prelude.Text -> LocationObjectStorage
mkLocationObjectStorage agentArns
  = LocationObjectStorage
      {haddock_workaround_ = (), agentArns = agentArns,
       accessKey = Prelude.Nothing, bucketName = Prelude.Nothing,
       secretKey = Prelude.Nothing, serverCertificate = Prelude.Nothing,
       serverHostname = Prelude.Nothing, serverPort = Prelude.Nothing,
       serverProtocol = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationObjectStorage where
  toResourceProperties LocationObjectStorage {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationObjectStorage",
         supportsTags = Prelude.True,
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
  type PropertyType "AgentArns" LocationObjectStorage = ValueList Prelude.Text
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